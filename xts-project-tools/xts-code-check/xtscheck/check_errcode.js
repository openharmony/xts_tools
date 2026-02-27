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

/**
 * Enforces strict Number type checks on error codes within catch blocks.
 * @param {string} fileName 
 */
function scanForMisuse(fileName) {
  const reportDefect = (lineNo, line, message, details = {}) => {
    process.stdout.write(JSON.stringify({
      file: fileName,
      lineNo: lineNo,
      line: line,
      message: message,
      ...details
    }) + "\n");
  };

  function getLineText(sourceFile, lineNo) {
    const lineStarts = sourceFile.getLineStarts();
    const startPos = lineStarts[lineNo];
    const endPos = lineNo < lineStarts.length - 1
      ? lineStarts[lineNo + 1]
      : sourceFile.text.length;
    return sourceFile.text.substring(startPos, endPos).replace(/[\r\n]+$/, "");
  }

  const sourceCode = fs.readFileSync(fileName, "utf8");
  const sourceFile = ts.createSourceFile(fileName, sourceCode, ts.ScriptTarget.Latest, true);

  // A stack of Maps. Each Map represents one level of nesting.
  const scopeStack = [new Map()];

  function getCurrentScope() {
    return scopeStack[scopeStack.length - 1];
  }

  /**
   * Looks up a var type by searching up the scope stack.
   */
  function lookupType(name) {
    // Search through all available scopes.
    for (let i = scopeStack.length - 1; i >= 0; i--) {
      if (scopeStack[i].has(name)) {
        return scopeStack[i].get(name);
      }
    }
    return { type: "any", isErrCodeAlias: true, isObjectAlias: false };
  }

  function addNewScope(node, root) {
    const isNewScope = node !== root &&
      (ts.isBlock(node) || ts.isSourceFile(node) || ts.isFunctionLike(node));
    if (isNewScope) {
      scopeStack.push(new Map());
    }
    return isNewScope;
  }

  function addToCurrentScope(node, aliasSet = new Set()) {
    if (!node.initializer) {
      return;
    }

    const currentScope = getCurrentScope();
    const initializerText = node.initializer.getText();

    // 1. Handle Normal Assignment: const e = err; or const code = err.code;
    if (ts.isIdentifier(node.name)) {
      const name = node.name.getText();
      let type = "any";

      if (ts.isStringLiteral(node.initializer)) {
        type = "string";
      } else if (ts.isNumericLiteral(node.initializer)) {
        type = "number";
      }

      // Check if it's an alias for the 'code' property of the error object.
      let isErrCodeAlias = false;
      if (ts.isPropertyAccessExpression(node.initializer)) {
        const objName = node.initializer.expression.getText();
        const propName = node.initializer.name.getText();
        if (aliasSet.has(objName) && propName === "code") {
          isErrCodeAlias = true;
        }
      }

      // Check if it's an alias for the error object itself.
      const isObjectAlias = aliasSet.has(initializerText);
      if (isObjectAlias) {
        aliasSet.add(name);
      }

      currentScope.set(name, {
        type: type,
        isErrCodeAlias: isErrCodeAlias,
        isObjectAlias: isObjectAlias,
      });
    }

    // 2. Handle Destructuring: const { code } = err;
    if (ts.isObjectBindingPattern(node.name) && aliasSet.has(initializerText)) {
      for (const element of node.name.elements) {
        if (ts.isBindingElement(element) && element.name.getText() === "code") {
          const localName = element.name.getText();
          currentScope.set(localName, {
            type: 'any',
            isErrCodeAlias: true,
            isObjectAlias: false,
          });
        }
      }
    }
  }

  function traverse(node) {
    const isNewScope = addNewScope(node, sourceFile);
    addToCurrentScope(node);

    // Process catch clauses.
    if (ts.isCatchClause(node)) {
      const catchVar = node.variableDeclaration?.name.getText();
      if (catchVar) {
        checkErrorCode(node.block, catchVar);
      }
    }

    ts.forEachChild(node, traverse);

    // Release memory occupied by current scope.
    if (isNewScope) {
      scopeStack.pop();
    }
  }

  function checkErrorCode(catchRoot, targetObj) {
    const aliasSet = new Set([targetObj]);
    function isErrCode(node) {
      // Check for err.code.
      if (ts.isPropertyAccessExpression(node)) {
        const objName = node.expression.getText();
        const propName = node.name.getText();
        return aliasSet.has(objName) && propName === 'code';
      }

      // Check for local aliases.
      if (ts.isIdentifier(node)) {
        const info = lookupType(node.getText());
        return !!(info && info.isErrCodeAlias);
      }

      return false;
    }

    function getExpressionType(node) {
      if (ts.isStringLiteral(node)) {
        return "string";
      }
      if (ts.isNumericLiteral(node)) {
        return "number";
      }
      if (ts.isIdentifier(node)) {
        return lookupType(node.getText()).type;
      }
      return "any";
    }

    function getContext(node) {
      const { line: lineNo } = sourceFile.getLineAndCharacterOfPosition(node.getStart());
      return {
        lineNo: lineNo + 1,
        line: getLineText(sourceFile, lineNo).trim()
      };
    }

    function handleBinaryExpression(node) {
      const { left, right } = node;
      const op = node.operatorToken.kind;

      // One side being 'err.code'.
      let errCode = null, opponent = null;
      if (isErrCode(left, targetObj) && !isErrCode(right, targetObj)) {
        errCode = left;
        opponent = right;
      } else if (isErrCode(right, targetObj) && !isErrCode(left, targetObj)) {
        errCode = right;
        opponent = left;
      }

      if (errCode) {
        const { line, lineNo } = getContext(node);
        let fallThrough = false;
        if (op === ts.SyntaxKind.EqualsEqualsToken || op === ts.SyntaxKind.ExclamationEqualsToken) {
          reportDefect(
            lineNo, line,
            `对错误码使用了宽松比较：'${node.operatorToken.getText()}'，请使用严格比较：'===' 或 '!=='`,
            { lang: lang, rule: rule }
          );
          fallThrough = true;
        }

        if (fallThrough ||
          op === ts.SyntaxKind.EqualsEqualsEqualsToken || op === ts.SyntaxKind.ExclamationEqualsEqualsToken) {
          const type = getExpressionType(opponent);
          if (type === "string") {
            reportDefect(
              lineNo, line,
              `错误码类型为string，请改为number类型`,
              { lang: lang, rule: rule }
            );
          }
        }
      }
    }

    function handleCallExpression(node) {
      const expression = node.expression;
      if (!ts.isPropertyAccessExpression(expression)) return;

      const methodName = expression.name.getText();
      const isAssertion = ["assertEqual", "expect"].includes(methodName);

      if (isAssertion) {
        const args = node.arguments;
        let caller = expression.expression;

        if (ts.isCallExpression(caller) && caller.expression.getText() === "expect") {
          caller = caller.arguments[0];
        }

        let hasErrCode = isErrCode(caller, targetObj);
        let opponent = args[0];

        if (!hasErrCode && args.length > 0) {
          let arg0 = args[0];
          if (ts.isCallExpression(arg0) && arg0.expression.getText() === "expect") {
            arg0 = arg0.arguments[0];
          }
          if (isErrCode(arg0, targetObj)) {
            hasErrCode = true;
            opponent = caller;
          }
        }

        if (hasErrCode && opponent) {
          const { lineNo, line } = getContext(node);
          let finalOpponent = opponent;
          if (ts.isCallExpression(opponent) && opponent.expression.getText() === "expect") {
            finalOpponent = opponent.arguments[0];
          }
          if (getExpressionType(opponent) === "string") {
            reportDefect(
              lineNo, line,
              `错误码类型为string，请改为number类型`,
              { lang: lang, rule: rule }
            );
          }
        }
      }
    }

    function check(node) {
      const isNewScope = addNewScope(node, catchRoot);
      addToCurrentScope(node, aliasSet);

      if (ts.isBinaryExpression(node)) {
        handleBinaryExpression(node);
      } else if (ts.isCallExpression(node)) {
        handleCallExpression(node);
      }

      ts.forEachChild(node, check);

      if (isNewScope) {
        scopeStack.pop();
      }
    }
    check(catchRoot);
  }

  traverse(sourceFile);
}

const targetFile = process.argv[2];
const rule = process.argv[3];
const lang = targetFile.endsWith('js') ? 'javascript' : 'arkts';

if (targetFile) {
  try {
    scanForMisuse(targetFile);
  } catch (error) {
    console.error(`Error processing file ${targetFile}:`, error.message);
  }
}
