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

# 跨语言验证脚本 - 3.13 Type string
# 执行 Java 和 Swift 测试用例

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

PASS=0
FAIL=0
TOTAL=0

echo "=========================================="
echo "3.13 Type string - Cross Language Verification"
echo "=========================================="
echo ""

# Java 测试
echo "--- Java Tests ---"
for java_file in *.java; do
    [ -f "$java_file" ] || continue
    class_name="${java_file%.java}"
    
    echo -n "  Compiling ${java_file}... "
    if javac "$java_file" 2>/dev/null; then
        echo -n "Running ${class_name}... "
        if java -ea "$class_name" 2>&1; then
            echo "  PASS  ${java_file}"
            PASS=$((PASS + 1))
        else
            echo "  FAIL  ${java_file} (runtime error)"
            FAIL=$((FAIL + 1))
        fi
    else
        echo "  FAIL  ${java_file} (compile error)"
        FAIL=$((FAIL + 1))
    fi
    TOTAL=$((TOTAL + 1))
done

echo ""

# Swift 测试
SWIFT=~/swift-5.10/usr/bin/swift
echo "--- Swift Tests ---"
for swift_file in *.swift; do
    [ -f "$swift_file" ] || continue
    
    echo -n "  Compiling and running ${swift_file}... "
    if $SWIFT "$swift_file" 2>&1; then
        echo "  PASS  ${swift_file}"
        PASS=$((PASS + 1))
    else
        echo "  FAIL  ${swift_file}"
        FAIL=$((FAIL + 1))
    fi
    TOTAL=$((TOTAL + 1))
done

echo ""
echo "=========================================="
echo "Total: ${TOTAL}  Pass: ${PASS}  Fail: ${FAIL}"
echo "=========================================="

if [ "$FAIL" -gt 0 ]; then
    exit 1
fi
