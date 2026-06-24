#!/bin/bash
# 3.17 Tuple Types - 跨语言验证脚本

echo "=========================================="
echo "3.17 Tuple Types - Cross Language Verification"
echo "=========================================="

PASS_COUNT=0
FAIL_COUNT=0
BASE_DIR="/mnt/d/git/ARKTS_STATIC_TEST/03_Types/ets_cases/3.17_Tuple_Types/cross_lang_verify"

run_java_test() {
    local dir=$1
    local file=$2
    local name=$(basename "$file" .java)
    
    echo -n "  Java: $name... "
    cd "$dir"
    if javac "$file" 2>/dev/null && java "$name" 2>/dev/null; then
        echo "PASS"
        PASS_COUNT=$((PASS_COUNT + 1))
    else
        echo "FAIL"
        FAIL_COUNT=$((FAIL_COUNT + 1))
    fi
    cd - > /dev/null
}

run_swift_test() {
    local file=$1
    local name=$(basename "$file" .swift)
    
    echo -n "  Swift: $name... "
    if ~/swift-5.10/usr/bin/swift "$file" 2>/dev/null; then
        echo "PASS"
        PASS_COUNT=$((PASS_COUNT + 1))
    else
        echo "FAIL"
        FAIL_COUNT=$((FAIL_COUNT + 1))
    fi
}

echo ""
echo "--- compile-pass ---"
for java_file in "$BASE_DIR"/compile-pass/*.java; do
    if [ -f "$java_file" ]; then
        run_java_test "$BASE_DIR/compile-pass" "$java_file"
    fi
done
for swift_file in "$BASE_DIR"/compile-pass/*.swift; do
    if [ -f "$swift_file" ]; then
        run_swift_test "$swift_file"
    fi
done

echo ""
echo "--- compile-fail ---"
for java_file in "$BASE_DIR"/compile-fail/*.java; do
    if [ -f "$java_file" ]; then
        run_java_test "$BASE_DIR/compile-fail" "$java_file"
    fi
done
for swift_file in "$BASE_DIR"/compile-fail/*.swift; do
    if [ -f "$swift_file" ]; then
        run_swift_test "$swift_file"
    fi
done

echo ""
echo "--- runtime ---"
for java_file in "$BASE_DIR"/runtime/*.java; do
    if [ -f "$java_file" ]; then
        run_java_test "$BASE_DIR/runtime" "$java_file"
    fi
done
for swift_file in "$BASE_DIR"/runtime/*.swift; do
    if [ -f "$swift_file" ]; then
        run_swift_test "$swift_file"
    fi
done

echo ""
echo "=========================================="
echo "Total: $((PASS_COUNT + FAIL_COUNT))  Pass: $PASS_COUNT  Fail: $FAIL_COUNT"
echo "=========================================="
