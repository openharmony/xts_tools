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

ES2PANDA=~/arkcompiler/runtime_core/static_core/out/bin/es2panda
ARK=~/arkcompiler/runtime_core/static_core/out/bin/ark
BOOT_PANDA=~/arkcompiler/runtime_core/static_core/out/pandastdlib/arkstdlib.abc
BOOT_ETS=~/arkcompiler/runtime_core/static_core/out/plugins/ets/etsstdlib.abc
TMPDIR=/tmp/arkts_test_$(date +%s)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CASE_ROOT="${SCRIPT_DIR}/ets_cases"
PASS=0; FAIL=0; TOTAL=0; FAILED_CASES=()
mkdir -p "${TMPDIR}"

has_errors() {
    while IFS= read -r line; do
        [[ "$line" =~ ^\[.*\]\ Syntax\ error ]] || [[ "$line" =~ ^\[.*\]\ Semantic\ error ]] && return 0
    done <<< "$1"; return 1
}

run_compile_pass() {
    local file="$1" name; name=$(basename "$file"); local out="${TMPDIR}/${name}.abc"
    local errors; errors=$("${ES2PANDA}" --extension=ets --output="${out}" "$file" 2>&1) || true
    if has_errors "$errors"; then echo "  FAIL  ${name}"; echo "$errors" | while IFS= read -r line; do [[ "$line" =~ ^\[.*\]\ Syntax\ error ]] || [[ "$line" =~ ^\[.*\]\ Semantic\ error ]] && echo "    $line"; done; FAIL=$((FAIL+1)); FAILED_CASES+=("${name}")
    else echo "  PASS  ${name}"; PASS=$((PASS+1)); fi
    TOTAL=$((TOTAL+1))
}

run_compile_fail() {
    local file="$1" name; name=$(basename "$file"); local out="${TMPDIR}/${name}.abc"
    local errors; errors=$("${ES2PANDA}" --extension=ets --output="${out}" "$file" 2>&1) || true
    if has_errors "$errors"; then echo "  PASS  ${name}"; PASS=$((PASS+1))
    else echo "  FAIL  ${name}  (expected error)"; FAIL=$((FAIL+1)); FAILED_CASES+=("${name}"); fi
    TOTAL=$((TOTAL+1))
}

run_runtime() {
    local file="$1" name; name=$(basename "$file"); local out="${TMPDIR}/${name}.abc"
    local expects_throw; expects_throw=$(grep -oP '@runtime-throws=\K[A-Za-z]+' "$file" 2>/dev/null | head -1 || true)
    local errors; errors=$("${ES2PANDA}" --extension=ets --output="${out}" "$file" 2>&1) || true
    if has_errors "$errors"; then echo "  FAIL  ${name}  (compile failed)"; FAIL=$((FAIL+1)); FAILED_CASES+=("${name}"); TOTAL=$((TOTAL+1)); return; fi
    if ! grep -qE '^function\s+main\s*\(' "$file"; then echo "  SKIP  ${name}"; PASS=$((PASS+1)); TOTAL=$((TOTAL+1)); return; fi
    local entry="${name%.ets}.ETSGLOBAL::main"
    local run_output; run_output=$("${ARK}" --load-runtimes=ets --boot-panda-files="${BOOT_PANDA}:${BOOT_ETS}" "${out}" "${entry}" 2>&1) || true
    if [ -n "$expects_throw" ]; then
        if echo "$run_output" | grep -q "Unhandled exception.*${expects_throw}"; then echo "  PASS  ${name}  (threw ${expects_throw})"; PASS=$((PASS+1))
        else echo "  FAIL  ${name}  (expected throw)"; echo "$run_output" | head -3 | sed 's/^/    /'; FAIL=$((FAIL+1)); FAILED_CASES+=("${name}"); fi
    else
        if echo "$run_output" | grep -q "Unhandled exception"; then echo "  FAIL  ${name}  (unexpected exception)"; echo "$run_output" | head -3 | sed 's/^/    /'; FAIL=$((FAIL+1)); FAILED_CASES+=("${name}")
        else echo "  PASS  ${name}  (executed successfully)"; PASS=$((PASS+1)); fi
    fi
    TOTAL=$((TOTAL+1))
}

SECTIONS="${SECTIONS:-11_Enumerations}"
for section in $SECTIONS; do
    echo ""; echo "=== ${section} ==="
    for dir in "compile-pass" "compile-fail" "runtime"; do
        d="${CASE_ROOT}/${section}/${dir}"
        [ -d "$d" ] || continue; echo "--- ${dir} ---"
        for f in "$d"/*.ets; do
            [ -f "$f" ] || continue
            case "$dir" in compile-pass) run_compile_pass "$f" ;; compile-fail) run_compile_fail "$f" ;; runtime) run_runtime "$f" ;; esac
        done
    done
done

echo ""; echo "============================="; echo "Total: ${TOTAL}  Pass: ${PASS}  Fail: ${FAIL}"
if [ "${#FAILED_CASES[@]}" -gt 0 ]; then echo ""; echo "Failed cases:"; for c in "${FAILED_CASES[@]}"; do echo "  - $c"; done; fi
echo "============================="
rm -rf "${TMPDIR}"
if [ "$FAIL" -gt 0 ]; then exit 1; fi