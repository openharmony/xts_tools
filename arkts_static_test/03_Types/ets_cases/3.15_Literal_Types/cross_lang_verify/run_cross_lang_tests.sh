#!/usr/bin/env bash
set -eo pipefail

# 跨语言验证脚本 - 3.15 Literal Types
# 执行 Java 和 Swift 测试用例

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

PASS=0
FAIL=0
TOTAL=0

SWIFT=~/swift-5.10/usr/bin/swift

echo "=========================================="
echo "3.15 Literal Types - Cross Language Verification"
echo "=========================================="
echo ""

# Java 测试
echo "--- Java Tests ---"
echo -n "  Compiling TYP_03_15_Literal_Types.java... "
if javac TYP_03_15_Literal_Types.java 2>/dev/null; then
    echo -n "Running... "
    if java TYP_03_15_Literal_Types 2>&1; then
        echo "  PASS  TYP_03_15_Literal_Types.java"
        PASS=$((PASS + 1))
    else
        echo "  FAIL  TYP_03_15_Literal_Types.java (runtime error)"
        FAIL=$((FAIL + 1))
    fi
else
    echo "  FAIL  TYP_03_15_Literal_Types.java (compile error)"
    FAIL=$((FAIL + 1))
fi
TOTAL=$((TOTAL + 1))

echo ""

# Swift 测试
echo "--- Swift Tests ---"
echo -n "  Running TYP_03_15_Literal_Types.swift... "
if $SWIFT TYP_03_15_Literal_Types.swift 2>&1; then
    echo "  PASS  TYP_03_15_Literal_Types.swift"
    PASS=$((PASS + 1))
else
    echo "  FAIL  TYP_03_15_Literal_Types.swift"
    FAIL=$((FAIL + 1))
fi
TOTAL=$((TOTAL + 1))

echo ""
echo "=========================================="
echo "Total: ${TOTAL}  Pass: ${PASS}  Fail: ${FAIL}"
echo "=========================================="

if [ "$FAIL" -gt 0 ]; then
    exit 1
fi
