/*
 * Copyright (C) 2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import ts from "typescript";
import fs from "fs";

const TARGET_MODULES = {
  '@ohos.deviceInfo': { kind: 'default', exportName: 'default' },
  '@kit.BasicServicesKit': { kind: 'named', exportName: 'deviceInfo' }
};

const CONDITIONAL_NODE_TYPES = [
  ts.SyntaxKind.IfStatement,
  ts.SyntaxKind.SwitchStatement,
  ts.SyntaxKind.WhileStatement,
  ts.SyntaxKind.DoStatement,
  ts.SyntaxKind.ForStatement,
  ts.SyntaxKind.ConditionalExpression,  // ternary
  ts.SyntaxKind.CaseClause
];

const DEVICE_TYPE_LITERALS = new Set([
  'phone', 'default', 'wearable', 'liteWearable',
  'tablet', 'tv', 'car', 'smartVision'
]);

/**
 * Track variable type information across scopes.
 */
class VariableTypeTracker {
  constructor() {
    this.scopes = [new Map()];  // Stack of scopes: varName ->
    // { type: 'deviceInfo'|'deviceType', source: string }
  }

  get currentScope() {
    return this.scopes[this.scopes.length - 1];
  }

  pushScope() {
    this.scopes.push(new Map());
  }

  popScope() {
    if (this.scopes.length > 1) {
      this.scopes.pop();
    }
  }

  set(name, typeInfo) {
    this.currentScope.set(name, typeInfo);
  }

  get(name) {
    for (let i = this.scopes.length - 1; i >= 0; i--) {
      if (this.scopes[i].has(name)) {
        return this.scopes[i].get(name);
      }
    }
    return null;
  }

  isDeviceTypeVar(name) {
    const info = this.get(name);
    return info && info.type === 'deviceType';
  }
}

/**
 * Track imported modules.
 */
class ImportTracker {
  constructor() {
    this.imports = new Map();  // localName -> { moduleName, importKind, originalName }
  }

  add(moduleName, localName, importKind = 'default', originalName = null) {
    if (!TARGET_MODULES[moduleName]) return false;

    this.imports.set(localName, {
      moduleName,
      importKind,
      propertyPath: originalName,
      isDeviceInfo: this._isDeviceInfoImport(moduleName, importKind, originalName)
    });
    return true;
  }

  _isDeviceInfoImport(moduleName, importKind, originalName) {
    if (moduleName === '@ohos.deviceInfo' && importKind === 'default') {
      return true;
    }
    if (moduleName === '@kit.BasicServicesKit' && originalName === 'deviceInfo') {
      return true;
    }
    if (importKind === 'namespace') {
      return true;
    }
    return false;
  }

  isDeviceInfo(name) {
    const info = this.imports.get(name);
    return info && info.isDeviceInfo;
  }

  get(name) {
    return this.imports.get(name);
  }
}

/**
 * Resolve expression types using import and variable tracking.
 */
class TypeResolver {
  constructor(importTracker, varTracker) {
    this.imports = importTracker;
    this.vars = varTracker;
  }

  /**
   * Resolve node to type: { type: 'deviceInfo'|'deviceType', source: string, node },
   * return null when node is not of our interest.
   */
  resolve(node) {
    if (!node) return null;

    if (ts.isStringLiteral(node)) {
      if (DEVICE_TYPE_LITERALS.has(node.text)) {
        return { type: 'deviceTypeLiteral', value: node.text, node };
      }
      return null;
    }

    if (ts.isIdentifier(node)) {
      const name = node.text;

      const varInfo = this.vars.get(name);
      if (varInfo) {
        return { type: varInfo.type, source: varInfo.source, node };
      }

      if (this.imports.isDeviceInfo(name)) {
        return { type: 'deviceInfo', source: name, node };
      }

      return null;
    }

    if (ts.isPropertyAccessExpression(node)) {
      return this._resolvePropertyAccess(node);
    }

    if (ts.isElementAccessExpression(node)) {
      const arg = node.argumentExpression;
      if (ts.isStringLiteral(arg) && (arg.text === 'deviceType' || arg.text === 'deviceInfo')) {
        const left = this.resolve(node.expression);
        if (left && left.type === 'deviceInfo' && arg.text === 'deviceType') {
          return { type: 'deviceType', source: left.source, node };
        }
      }
    }

    return null;
  }

  _resolvePropertyAccess(node) {
    const propName = node.name.text;
    const left = this.resolve(node.expression);

    if (!left && ts.isIdentifier(node.expression)) {
      const importInfo = this.imports.get(node.expression.text);
      if (importInfo && importInfo.importKind === 'namespace') {
        if (propName === 'default' && importInfo.moduleName === '@ohos.deviceInfo') {
          return { type: 'deviceInfo', source: `${node.expression.text}.default`, node };
        }
        if (propName === 'deviceInfo' && importInfo.moduleName === '@kit.BasicServicesKit') {
          return { type: 'deviceInfo', source: `${node.expression.text}.deviceInfo`, node };
        }
      }
    }

    if (left && left.type === 'deviceInfo') {
      if (propName === 'deviceType') {
        return { type: 'deviceType', source: left.source, node };
      }
      if (propName === 'deviceInfo') {
        return { type: 'deviceInfo', source: left.source, node };
      }
    }

    return null;
  }
}

class DeviceTypeConditionalAnalyzer {
  constructor(sourceFile, lang) {
    this.sourceFile = sourceFile;
    this.lang = lang;
    this.imports = new ImportTracker();
    this.vars = new VariableTypeTracker();
    this.resolver = new TypeResolver(this.imports, this.vars);
    this.defects = [];
  }

  analyze() {
    this._traverse(this.sourceFile);
    return this.defects;
  }

  _traverse(node) {
    const isScope = this._isScopeBoundary(node);
    if (isScope) {
      this.vars.pushScope();
    }

    this._processNode(node);
    ts.forEachChild(node, (child) => this._traverse(child));

    if (isScope) {
      this.vars.popScope();
    }
  }

  _isScopeBoundary(node) {
    return ts.isFunctionLike(node) ||
      ts.isSourceFile(node) ||
      (ts.isBlock(node) && !this._isFunctionBlock(node));
  }

  _isFunctionBlock(node) {
    const parent = node.parent;
    return parent && (
      ts.isFunctionDeclaration(parent) ||
      ts.isFunctionExpression(parent) ||
      ts.isArrowFunction(parent) ||
      ts.isMethodDeclaration(parent)
    );
  }

  _processNode(node) {
    if (ts.isImportDeclaration(node)) {
      this._trackImport(node);
      return;
    }

    if (ts.isVariableDeclaration(node)) {
      this._trackVariableDeclaration(node);
      return;
    }

    if (ts.isBinaryExpression(node) && node.operatorToken.kind === ts.SyntaxKind.EqualsToken) {
      this._trackAssignment(node);
      return;
    }

    if (CONDITIONAL_NODE_TYPES.includes(node.kind)) {
      this._checkConditional(node);
    }
  }

  _trackImport(node) {
    const moduleName = node.moduleSpecifier.getText().slice(1, -1);
    if (!TARGET_MODULES[moduleName]) return;

    const clause = node.importClause;
    if (!clause) return;

    if (clause.name) {
      this.imports.add(moduleName, clause.name.text, 'default');
    }

    if (clause.namedBindings && ts.isNamedImports(clause.namedBindings)) {
      for (const el of clause.namedBindings.elements) {
        const localName = el.name.text;
        const originalName = el.propertyName ? el.propertyName.text : localName;
        this.imports.add(moduleName, localName, 'named', originalName);
      }
    }

    if (clause.namedBindings && ts.isNamespaceImport(clause.namedBindings)) {
      this.imports.add(moduleName, clause.namedBindings.name.text, 'namespace');
    }
  }

  _trackVariableDeclaration(node) {
    if (!node.name || !ts.isIdentifier(node.name)) return;
    if (!node.initializer) return;

    const varName = node.name.text;
    const resolved = this.resolver.resolve(node.initializer);

    if (resolved) {
      this.vars.set(varName, {
        type: resolved.type,
        source: resolved.source
      });
    }
  }

  _trackAssignment(node) {
    if (!ts.isIdentifier(node.left)) return;

    const varName = node.left.text;
    const resolved = this.resolver.resolve(node.right);

    if (resolved) {
      this.vars.set(varName, {
        type: resolved.type,
        source: resolved.source
      });
    }
  }

  _checkConditional(node) {
    let expressionsToCheck = [];

    if (ts.isIfStatement(node)) expressionsToCheck.push(node.expression);
    else if (ts.isSwitchStatement(node)) expressionsToCheck.push(node.expression);
    else if (ts.isWhileStatement(node)) expressionsToCheck.push(node.expression);
    else if (ts.isDoStatement(node)) expressionsToCheck.push(node.expression);
    else if (ts.isForStatement(node)) expressionsToCheck.push(node.condition);
    else if (ts.isConditionalExpression(node)) expressionsToCheck.push(node.condition);
    else if (ts.isCaseClause(node)) expressionsToCheck.push(node.expression);

    for (const expr of expressionsToCheck) {
      if (!expr) continue;
      const violations = this._findDeviceTypeInExpression(expr);
      for (const v of violations) {
        this.defects.push({
          node: v.node,
          source: v.source,
          kind: ts.SyntaxKind[node.kind]
        });
      }
    }
  }

  /**
   * Recursively find deviceType references in expression
   */
  _findDeviceTypeInExpression(expr) {
    if (!expr) return [];

    const resolved = this.resolver.resolve(expr);
    if (resolved && resolved.type === 'deviceType') {
      return [{ node: resolved.node, source: resolved.source }];
    }

    if (ts.isBinaryExpression(expr)) {
      const left = this.resolver.resolve(expr.left);
      const right = this.resolver.resolve(expr.right);

      // If one side is a known deviceType variable AND the other is a device string literal
      // or if both sides are related to device info
      const isComparison = [
        ts.SyntaxKind.EqualsEqualsToken,
        ts.SyntaxKind.EqualsEqualsEqualsToken,
        ts.SyntaxKind.ExclamationEqualsToken,
        ts.SyntaxKind.ExclamationEqualsEqualsToken
      ].includes(expr.operatorToken.kind);

      if (isComparison && (left || right)) {
        const leftIsTainted = left && (left.type === 'deviceType' || left.type === 'deviceTypeLiteral');
        const rightIsTainted = right && (right.type === 'deviceType' || right.type === 'deviceTypeLiteral');

        if (leftIsTainted || rightIsTainted) {
          return [{ node: expr, source: `Comparison involving deviceType logic` }];
        }
      }
    }

    let results = [];
    ts.forEachChild(expr, (child) => {
      if (!ts.isTypeNode(child) && child.kind !== ts.SyntaxKind.None) {
        results = results.concat(this._findDeviceTypeInExpression(child));
      }
    });

    return results;
  }
}

function reportDefection(fileName, lineNo, line, message, lang) {
  process.stdout.write(JSON.stringify({
    file: fileName,
    lineNo: lineNo,
    line: line,
    message: message,
    lang: lang
  }) + "\n");
}

function getLineText(sourceFile, lineNo) {
  const lineStarts = sourceFile.getLineStarts();
  const startPos = lineStarts[lineNo];
  const endPos = lineNo < lineStarts.length - 1
    ? lineStarts[lineNo + 1]
    : sourceFile.text.length;
  return sourceFile.text.substring(startPos, endPos).replace(/[\r\n]+$/, "");
}

function checkFile(fileName) {
  const lang = fileName.endsWith('.js') ? 'javascript' : 'arkts';

  try {
    const sourceCode = fs.readFileSync(fileName, 'utf8');
    const sourceFile = ts.createSourceFile(
      fileName,
      sourceCode,
      ts.ScriptTarget.Latest,
      true
    );

    const analyzer = new DeviceTypeConditionalAnalyzer(sourceFile, lang);
    const defects = analyzer.analyze();

    for (const d of defects) {
      const pos = d.node.getStart();
      const { line } = sourceFile.getLineAndCharacterOfPosition(pos);
      const lineNo = line + 1;
      const lineText = getLineText(sourceFile, line);

      reportDefection(
        fileName,
        lineNo,
        lineText,
        `禁止将设备类型: deviceType置于条件语句中（禁止基于设备类型做差异化适配）`,
        lang
      );
    }
  } catch (error) {
    console.error(`Error processing file ${fileName}:`, error.message);
  }
}

const fileName = process.argv[2];
if (fileName) {
  checkFile(fileName);
} else {
  console.error("Usage: node check_device_type_impl.js <file-to-check>");
  process.exit(1);
}
