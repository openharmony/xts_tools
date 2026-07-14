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
#!/bin/bash
# run_generics_cases_wsl.sh - Run all Chapter 5 Generics test cases
# Usage: SECTIONS="5.1_Type_Parameters" bash run_generics_cases_wsl.sh
# Usage: SECTIONS="5.1_Type_Parameters,5.1.1_Type_Parameter_Constraint" bash run_generics_cases_wsl.sh
# Usage: bash run_generics_cases_wsl.sh (runs all)

ES2PANDA=~/arkcompiler/runtime_core/static_core/out/bin/es2panda
ARK=~/arkcompiler/runtime_core/static_core/out/bin/ark
BOOT_PANDA=~/arkcompiler/runtime_core/static_core/out/pandastdlib/arkstdlib.abc
BOOT_ETS=~/arkcompiler/runtime_core/static_core/out/plugins/ets/etsstdlib.abc
ARKTSCONFIG=~/arkcompiler/runtime_core/static_core/out/bin/arktsconfig.json
# Auto-resolve script directory for portability (no hardcoded paths)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE_DIR="${SCRIPT_DIR}"

PASS_COUNT=0
FAIL_COUNT=0
TOTAL_COUNT=0

run_compile_pass() {
    local file=$1
    local id=$2
    local output
    local temp_output=$(mktemp /tmp/test_gen_XXXX.abc)
    output=$($ES2PANDA --arktsconfig=$ARKTSCONFIG --extension=ets --output="$temp_output" "$file" 2>&1)
    rm -f "$temp_output"
    if echo "$output" | grep -qE "Syntax error|Semantic error|Fatal error"; then
        echo "  FAIL: $id - compile failed"
        return 1
    else
        echo "  PASS: $id"
        return 0
    fi
}

run_compile_fail() {
    local file=$1
    local id=$2
    local output
    local temp_output=$(mktemp /tmp/test_gen_XXXX.abc)
    output=$($ES2PANDA --arktsconfig=$ARKTSCONFIG --extension=ets --output="$temp_output" "$file" 2>&1)
    rm -f "$temp_output"
    if echo "$output" | grep -qE "Syntax error|Semantic error|Fatal error"; then
        echo "  PASS: $id - compile error as expected"
        return 0
    else
        echo "  FAIL: $id - expected compile error but compiled OK"
        return 1
    fi
}

run_runtime() {
    local file=$1
    local id=$2
    local module_name=$(basename "$file" .ets)
    local entry_point="${module_name}/ETSGLOBAL::main"
    local temp_output=$(mktemp /tmp/test_gen_XXXX.abc)
    local output
    output=$($ES2PANDA --arktsconfig=$ARKTSCONFIG --extension=ets --output="$temp_output" "$file" 2>&1)
    if echo "$output" | grep -qE "Syntax error|Semantic error|Fatal error"; then
        echo "  FAIL: $id - compile failed"
        return 1
    fi
    output=$($ARK --load-runtimes=ets --boot-panda-files="$BOOT_PANDA:$BOOT_ETS" "$temp_output" "$entry_point" 2>&1)
    local exit_code=$?
    rm -f "$temp_output"
    if [ $exit_code -eq 0 ]; then
        echo "  PASS: $id - runtime OK"
        return 0
    else
        echo "  FAIL: $id - runtime exit code $exit_code"
        echo "       Output: $output"
        return 1
    fi
}

process_section() {
    local section=$1
    local section_dir="$BASE_DIR/ets_cases/$section"
    echo ""
    echo "=== Section: $section ==="

    # compile-pass
    for f in "$section_dir/compile-pass"/*.ets; do
        [ -f "$f" ] || continue
        TOTAL_COUNT=$((TOTAL_COUNT + 1))
        local id=$(basename "$f" .ets)
        run_compile_pass "$f" "$id"
        if [ $? -eq 0 ]; then PASS_COUNT=$((PASS_COUNT + 1)); else FAIL_COUNT=$((FAIL_COUNT + 1)); fi
    done

    # compile-fail
    for f in "$section_dir/compile-fail"/*.ets; do
        [ -f "$f" ] || continue
        TOTAL_COUNT=$((TOTAL_COUNT + 1))
        local id=$(basename "$f" .ets)
        run_compile_fail "$f" "$id"
        if [ $? -eq 0 ]; then PASS_COUNT=$((PASS_COUNT + 1)); else FAIL_COUNT=$((FAIL_COUNT + 1)); fi
    done

    # runtime
    for f in "$section_dir/runtime"/*.ets; do
        [ -f "$f" ] || continue
        TOTAL_COUNT=$((TOTAL_COUNT + 1))
        local id=$(basename "$f" .ets)
        run_runtime "$f" "$id"
        if [ $? -eq 0 ]; then PASS_COUNT=$((PASS_COUNT + 1)); else FAIL_COUNT=$((FAIL_COUNT + 1)); fi
    done
}

cd "$BASE_DIR"

if [ -n "$SECTIONS" ]; then
    IFS=',' read -ra SECTION_LIST <<< "$SECTIONS"
    for section in "${SECTION_LIST[@]}"; do
        process_section "$section"
    done
else
    for section_dir in ets_cases/*/; do
        section=$(basename "$section_dir")
        if [ -d "$section_dir/compile-pass" ] || [ -d "$section_dir/compile-fail" ] || [ -d "$section_dir/runtime" ]; then
            process_section "$section"
        else
            # Section may have sub-sections (e.g., 5.2.x with 5.2.1/5.2.2/5.2.3)
            for sub_dir in "$section_dir"*/; do
                [ -d "$sub_dir" ] || continue
                sub_section="$section/$(basename "$sub_dir")"
                process_section "$sub_section"
            done
        fi
    done
fi

echo ""
echo "=========================================="
echo "  Total: $TOTAL_COUNT, Pass: $PASS_COUNT, Fail: $FAIL_COUNT"
echo "=========================================="
