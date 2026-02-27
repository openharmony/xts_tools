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

const ASSERTION_METHODS = new Set([
  'assertClose', 'assertContain', 'assertEqual', 'assertFail', 'assertFalse', 'assertTrue',
  'assertInstanceOf', 'assertLarger', 'assertLargerOrEqual', 'assertLess', 'assertLessOrEqual',
  'assertNull', 'assertThrowError', 'assertUndefined', 'assertNaN', 'assertNegUnlimited', 'assertPosUnlimited',
  'assertDeepEquals', 'assertPromiseIsPending', 'assertPromiseIsRejected', 'assertPromiseIsRejectedWith',
  'assertPromiseIsRejectedWithError', 'assertPromiseIsResolved', 'assertPromiseIsResolvedWith'
]);

const COMPONENT_ASSERTION_METHODS = new Set(['assertComponentExist']);
const SKIP_ERROR_PATTERNS = ['SkipError'];

function scanForMissingAssertions(fileName) {
  const reportDefect = (lineNo, line, message, details = {}) => {
    process.stdout.write(JSON.stringify({
      file: fileName,
      lineNo: lineNo,
      line: line,
      message: message,
      lang: lang,
      rule: rule,
      ...details
    }) + "\n");
  };

  const sourceCode = fs.readFileSync(fileName, 'utf8');
  const sourceFile = ts.createSourceFile(fileName, sourceCode, ts.ScriptTarget.Latest, true);
  const assertionWrapperFunctions = new Set();

  // --- AST HELPERS ---

  function unwrap(node) {
    let current = node;
    while (ts.isParenthesizedExpression(current) || ts.isAsExpression(current)) {
      current = current.expression;
    }
    return current;
  }

  function tracesToExpect(node) {
    let current = unwrap(node);
    while (current) {
      if (ts.isCallExpression(current)) {
        const caller = unwrap(current.expression);
        if (ts.isIdentifier(caller) && caller.text === 'expect') {
          return true;
        }
        current = caller;
      } else if (ts.isPropertyAccessExpression(current)) {
        current = current.expression;
      } else {
        break;
      }
      current = unwrap(current);
    }
    return false;
  }

  function getFunctionName(node) {
    if (node.name && ts.isIdentifier(node.name)) {
      return node.name.text;
    }

    const parent = node.parent;
    if (ts.isVariableDeclaration(parent) && ts.isIdentifier(parent.name)) {
      return parent.name.text;
    }

    if (ts.isPropertyAssignment(parent) && ts.isIdentifier(parent.name)) {
      return parent.name.text;
    }

    return null;
  }

  // --- THE 4 STRATEGIES ---

  /** 1st: expect(*).chain().assertion_in_ASSERTION_METHODS(*) */
  function isStandardAssertion(methodName, targetObj) {
    const isKnown = ASSERTION_METHODS.has(methodName) ||
      methodName.startsWith('assert') ||
      methodName.startsWith('expect');
    return isKnown && tracesToExpect(targetObj);
  }

  /** 
   * 2nd: Supports 'as CustomAssert' anywhere in the chain:
   * (expect(*) as Type).chain().assert() 
   * OR (expect(*).chain() as Type).assert()
   */
  function isCustomCastAssertion(targetObj) {
    let current = targetObj;
    let hasAs = false;

    // Walk back the chain to find if ANY part of it was cast using 'as'
    while (current) {
      if (ts.isAsExpression(current)) {
        hasAs = true;
        break;
      }

      if (ts.isParenthesizedExpression(current)) {
        current = current.expression;
        continue;
      }

      if (ts.isCallExpression(current)) {
        current = current.expression;
      } else if (ts.isPropertyAccessExpression(current)) {
        current = current.expression;
      } else {
        break;
      }
    }

    return hasAs && tracesToExpect(targetObj);
  }

  /** 3rd: *.assertion_in_COMPONENT_ASSERTION_METHODS(*) */
  function isComponentAssertion(methodName) {
    return COMPONENT_ASSERTION_METHODS.has(methodName);
  }

  /** 4th: throw new SkipError(*) */
  function isSkipError(node) {
    if (!ts.isThrowStatement(node)) return false;
    const expr = node.expression;
    if (ts.isNewExpression(expr) && ts.isIdentifier(expr.expression)) {
      return SKIP_ERROR_PATTERNS.includes(expr.expression.text);
    }
    return false;
  }

  // --- DISPATCHER ---

  function hasDirectAssertion(node) {
    if (isSkipError(node)) return true;

    if (ts.isCallExpression(node)) {
      const expr = unwrap(node.expression);
      if (ts.isPropertyAccessExpression(expr)) {
        const methodName = expr.name.text;
        const targetObj = expr.expression;

        return (
          isStandardAssertion(methodName, targetObj) ||
          isCustomCastAssertion(targetObj) ||
          isComponentAssertion(methodName)
        );
      }
    }
    return false;
  }

  function isAssertionWrapperCall(node) {
    if (!ts.isCallExpression(node)) return false;
    const expr = unwrap(node.expression);
    const name = ts.isIdentifier(expr) ? expr.text :
      ts.isPropertyAccessExpression(expr) ? expr.name.text : null;
    return name && assertionWrapperFunctions.has(name);
  }

  function isKnownWrapper(name, describeSet) {
    // Describe-local first, then Global.
    return (describeSet && describeSet.has(name)) || assertionWrapperFunctions.has(name);
  }

  // --- CORE SCANNING LOGIC ---

  /**
   * The unified recursive checker.
   * @param parentWrappers The wrappers available in the current block.
   */
  function checkNodeForAssertionRecursive(node, parentWrappers) {
    if (hasDirectAssertion(node)) return true;

    if (ts.isCallExpression(node)) {
      const expr = unwrap(node.expression);
      const name = ts.isIdentifier(expr) ? expr.text :
        ts.isPropertyAccessExpression(expr) ? expr.name.text : null;

      if (name && isKnownWrapper(name, parentWrappers)) return true;
    }

    return ts.forEachChild(node, (n) => checkNodeForAssertionRecursive(n, parentWrappers)) || false;
  }

  function scanLocalWrappers(blockNode) {
    const localSet = new Set();
    let addedNew;

    do {
      addedNew = false;
      ts.forEachChild(blockNode, (node) => {
        if (ts.isFunctionDeclaration(node) || ts.isFunctionExpression(node) || ts.isArrowFunction(node)) {
          const name = getFunctionName(node);
          if (name && !localSet.has(name)) {
            if (checkNodeForAssertionRecursive(node.body, localSet)) {
              localSet.add(name);
              addedNew = true;
            }
          }
        }
      });
    } while (addedNew); // Keep looping until the set stops growing

    return localSet;
  }

  function preScanForAssertionWrappers(sourceFile) {
    let addedNew;

    const visit = (node) => {
      if (ts.isFunctionDeclaration(node) || ts.isFunctionExpression(node) || ts.isArrowFunction(node)) {
        const funcName = getFunctionName(node);

        if (funcName && !assertionWrapperFunctions.has(funcName)) {
          const containsAssertion = (function findInBody(n) {
            if (!n) return false;
            if (hasDirectAssertion(n)) return true;
            if (isAssertionWrapperCall(n)) return true;
            return ts.forEachChild(n, findInBody);
          })(node.body) || false;

          if (containsAssertion) {
            assertionWrapperFunctions.add(funcName);
            addedNew = true;
          }
        }
        return;
      }

      // Skip the 'describe' or 'it' block
      if (ts.isCallExpression(node)) {
        const name = ts.isIdentifier(node.expression) ? node.expression.text : '';
        if (name === 'describe' || name === 'it') {
          return;
        }
      }

      ts.forEachChild(node, visit);
    }

    do {
      addedNew = false;
      visit(sourceFile);
    } while (addedNew);
  }

  function findTestCases(node, describeSet = new Set()) {
    if (ts.isCallExpression(node)) {
      const expr = node.expression;
      const name = ts.isIdentifier(expr) ? expr.text : '';

      if (name === 'describe' && node.arguments.length == 2) {
        const body = node.arguments[node.arguments.length - 1];
        if (ts.isFunctionLike(body)) {
          const describeLocalSet = scanLocalWrappers(body.body);
          ts.forEachChild(body.body, (n) => findTestCases(n, describeLocalSet));
          return;
        }
      }

      if (name === 'it' && node.arguments.length == 3) {
        const body = node.arguments[node.arguments.length - 1];
        if (ts.isFunctionLike(body) && body.body) {
          if (!checkNodeForAssertionRecursive(body.body, describeSet)) {
            const { line: lineNo } = sourceFile.getLineAndCharacterOfPosition(node.getStart());
            reportDefect(lineNo + 1, getLineText(sourceFile, lineNo).trim(), "测试用例没有包含断言");
          }
        }
      }
    }
    ts.forEachChild(node, (n) => findTestCases(n, describeSet));
  }

  function getLineText(sf, no) {
    const starts = sf.getLineStarts();
    const end = no < starts.length - 1 ? starts[no + 1] : sf.text.length;
    return sf.text.substring(starts[no], end).replace(/[\r\n]+$/, '');
  }

  // 2-pass scan
  preScanForAssertionWrappers(sourceFile);
  findTestCases(sourceFile);
}

const targetFile = process.argv[2];
const rule = process.argv[3];
const lang = targetFile?.endsWith('.js') ? 'javascript' : 'arkts';

if (targetFile) {
  try {
    scanForMissingAssertions(targetFile);
  } catch (e) {
    console.error(`Error: ${e.message}`);
  }
}
