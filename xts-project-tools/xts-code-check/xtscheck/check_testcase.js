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

import ts from 'typescript';
import fs from 'fs';

function reportDefection(fileName, lineNo, line, message, details = {}) {
  process.stdout.write(JSON.stringify({
    file: fileName,
    lineNo: lineNo,
    line: line,
    message: message,
    lang: lang,
    rule: rule,
    ...details
  }) + '\n');
};

function scanForDuplicateTestCases(targetFile) {
  const sourceCode = fs.readFileSync(targetFile, 'utf8');
  const sourceFile = ts.createSourceFile(targetFile, sourceCode, ts.ScriptTarget.Latest, true);

  // Stack of Sets to track names per describe block
  const testSuiteStack = [new Set()];
  const namePattern = /^[a-zA-Z][a-zA-Z0-9_]*$/;

  function traverse(node) {
    let pushed = false;

    if (ts.isCallExpression(node)) {
      const callText = ts.isIdentifier(node.expression) ? node.expression.text : '';

      if (callText === 'describe') {
        testSuiteStack.push(new Set());
        pushed = true;
      }
      else if (callText === 'it') {
        const firstArg = node.arguments[0];
        if (firstArg && (ts.isStringLiteral(firstArg) || ts.isNoSubstitutionTemplateLiteral(firstArg))) {
          const testName = firstArg.text;
          const currentScope = testSuiteStack[testSuiteStack.length - 1];
          const { line: lineNo } = sourceFile.getLineAndCharacterOfPosition(node.getStart());
          const lineContent = node.getText().split('\n')[0];

          if (currentScope.has(testName)) {
            reportDefection(
              targetFile, lineNo + 1, lineContent,
              `同一测试套中测试用例不允许重名，违规名称：${testName}`
            );
          } else {
            currentScope.add(testName);
          }

          if (!namePattern.test(testName)) {
            reportDefection(
              targetFile, lineNo + 1, lineContent,
              `测试用例名称只能包含字母、数字和下划线，且以字母开头，违规名称：${testName}`
            );
          }
        }
      }
    }

    ts.forEachChild(node, traverse);

    if (pushed) {
      testSuiteStack.pop();
    }
  }

  traverse(sourceFile);
}

const targetFile = process.argv[2];
const rule = process.argv[3];
const lang = targetFile?.endsWith('.js') ? 'javascript' : 'arkts';

if (targetFile) {
  try {
    scanForDuplicateTestCases(targetFile);
  } catch (error) {
    console.error(`Error processing file ${targetFile}:`, error.message);
  }
}
