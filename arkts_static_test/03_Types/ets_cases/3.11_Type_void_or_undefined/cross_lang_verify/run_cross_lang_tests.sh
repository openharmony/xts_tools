/*
* Copyright (c) 2021-2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
*/
#!/usr/bin/env bash
set -eo pipefail

# 跨语言验证脚本 - 3.11 Type void or undefined
# 执行 Java 和 Swift 测试用例

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

PASS=0
FAIL=0
TOTAL=0
EXPECTED_FAIL=0

SWIFT=~/swift-5.10/usr/bin/swift

echo "=========================================="
echo "3.11 Type void or undefined - Cross Language Verification"
echo "=========================================="
echo ""

# Java 测试
echo "--- Java Tests ---"

# 正向测试 - 应该编译通过并运行成功
echo -n "  Compiling JavaVoidTest.java... "
if javac JavaVoidTest.java 2>/dev/null; then
    echo -n "Running... "
    if java JavaVoidTest 2>&1; then
        echo "  PASS  JavaVoidTest.java"
        PASS=$((PASS + 1))
    else
        echo "  FAIL  JavaVoidTest.java (runtime error)"
        FAIL=$((FAIL + 1))
    fi
else
    echo "  FAIL  JavaVoidTest.java (compile error)"
    FAIL=$((FAIL + 1))
fi
TOTAL=$((TOTAL + 1))

# 反向测试 - 应该编译失败
echo -n "  Testing JavaVoidReturnFail.java (should fail)... "
if javac JavaVoidReturnFail.java 2>/dev/null; then
    echo "  FAIL  (compiled but should fail)"
    FAIL=$((FAIL + 1))
else
    echo "  PASS  (compile error as expected)"
    PASS=$((PASS + 1))
    EXPECTED_FAIL=$((EXPECTED_FAIL + 1))
fi
TOTAL=$((TOTAL + 1))

echo ""

# Swift 测试
echo "--- Swift Tests ---"

# 正向测试 - 应该编译通过并运行成功
echo -n "  Running SwiftVoidTest.swift... "
if $SWIFT SwiftVoidTest.swift 2>&1; then
    echo "  PASS  SwiftVoidTest.swift"
    PASS=$((PASS + 1))
else
    echo "  FAIL  SwiftVoidTest.swift"
    FAIL=$((FAIL + 1))
fi
TOTAL=$((TOTAL + 1))

echo ""
echo "=========================================="
echo "Total: ${TOTAL}  Pass: ${PASS}  Fail: ${FAIL}"
echo "Expected compile failures: ${EXPECTED_FAIL}"
echo "=========================================="

if [ "$FAIL" -gt 0 ]; then
    exit 1
fi
