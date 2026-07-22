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
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CASE_ROOT="${SCRIPT_DIR}/ets_cases"

ES2PANDA=~/arkcompiler/runtime_core/static_core/out/bin/es2panda
ARK=~/arkcompiler/runtime_core/static_core/out/bin/ark
BOOT_PANDA=~/arkcompiler/runtime_core/static_core/out/pandastdlib/arkstdlib.abc
BOOT_ETS=~/arkcompiler/runtime_core/static_core/out/plugins/ets/etsstdlib.abc

SECTIONS="${SECTIONS:-18.1_Declaring_Annotations}"

PASS=0
FAIL=0
TOTAL=0

run_compile_pass() {
    local file="$1"
    local name="$2"
    local errors
    errors=$("$ES2PANDA" --extension=ets --output="${file%.ets}.abc" "$file" 2>&1 || true)
    if echo "$errors" | grep -q -E "Syntax error|Semantic error"; then
        echo "$errors"
        echo "  ❌ $name - compile-pass FAILED (compiler reported error)"
        return 1
    else
        echo "  ✅ $name - compile-pass PASSED"
        return 0
    fi
}

run_compile_fail() {
    local file="$1"
    local name="$2"
    local errors
    errors=$("$ES2PANDA" --extension=ets --output="${file%.ets}.abc" "$file" 2>&1 || true)
    if echo "$errors" | grep -q -E "Syntax error|Semantic error"; then
        echo "$errors"
        echo "  ✅ $name - compile-fail PASSED (compiler reported expected error)"
        return 0
    else
        echo "  ❌ $name - compile-fail FAILED (expected error but compilation succeeded)"
        return 1
    fi
}

run_runtime() {
    local file="$1"
    local name="$2"
    local abc="${file%.ets}.abc"
    local module
    module=$(basename "$file" .ets)

    local errors
    errors=$("$ES2PANDA" --extension=ets --output="$abc" "$file" 2>&1 || true)
    if echo "$errors" | grep -q -E "Syntax error|Semantic error"; then
        echo "$errors"
        echo "  ❌ $name - runtime COMPILE FAILED"
        return 1
    fi

    local output
    output=$("$ARK" --load-runtimes=ets \
        --boot-panda-files="$BOOT_PANDA:$BOOT_ETS" \
        "$abc" "${module}.ETSGLOBAL::main" 2>&1 || true)
    if echo "$output" | grep -q -E "Cannot find class|Cannot execute|assertion failed"; then
        echo "$output"
        echo "  ❌ $name - runtime FAILED"
        return 1
    fi

    echo "  ✅ $name - runtime PASSED"
    return 0
}

echo "============================================"
echo "  ArkTS Annotations Test Suite"
echo "  Sections: $SECTIONS"
echo "============================================"

IFS=',' read -ra SECTION_LIST <<< "$SECTIONS"
for SECTION in "${SECTION_LIST[@]}"; do
    SECTION_DIR="${CASE_ROOT}/${SECTION}"
    echo ""
    echo "--- Section: ${SECTION} ---"

    for CATEGORY in compile-pass compile-fail runtime; do
        CAT_DIR="${SECTION_DIR}/${CATEGORY}"
        if [ ! -d "$CAT_DIR" ]; then
            continue
        fi
        for CASE_FILE in "$CAT_DIR"/*.ets; do
            [ -f "$CASE_FILE" ] || continue
            BASENAME=$(basename "$CASE_FILE" .ets)
            TOTAL=$((TOTAL + 1))

            case "$CATEGORY" in
                compile-pass)
                    if run_compile_pass "$CASE_FILE" "$BASENAME"; then
                        PASS=$((PASS + 1))
                    else
                        FAIL=$((FAIL + 1))
                    fi
                    ;;
                compile-fail)
                    if run_compile_fail "$CASE_FILE" "$BASENAME"; then
                        PASS=$((PASS + 1))
                    else
                        FAIL=$((FAIL + 1))
                    fi
                    ;;
                runtime)
                    if run_runtime "$CASE_FILE" "$BASENAME"; then
                        PASS=$((PASS + 1))
                    else
                        FAIL=$((FAIL + 1))
                    fi
                    ;;
            esac
        done
    done
done

echo ""
echo "============================================"
echo "  Results: $PASS / $TOTAL passed, $FAIL failed"
echo "============================================"

find "$CASE_ROOT" -name '*.abc' -delete

exit $FAIL
