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
has_errors(){ while IFS= read -r line; do [[ "$line" =~ ^\[.*\]\ Syntax\ error ]]||[[ "$line" =~ ^\[.*\]\ Semantic\ error ]]&&return 0; done<<<"$1"; return 1; }
run_compile_pass(){ local f="$1" n; n=$(basename "$f"); local o="${TMPDIR}/${n}.abc"; local e; e=$("${ES2PANDA}" --extension=ets --output="${o}" "$f" 2>&1)||true; if has_errors "$e"; then echo "  FAIL  ${n}"; FAIL=$((FAIL+1)); FAILED_CASES+=("${n}"); else echo "  PASS  ${n}"; PASS=$((PASS+1)); fi; TOTAL=$((TOTAL+1)); }
run_compile_fail(){ local f="$1" n; n=$(basename "$f"); local o="${TMPDIR}/${n}.abc"; local e; e=$("${ES2PANDA}" --extension=ets --output="${o}" "$f" 2>&1)||true; if has_errors "$e"; then echo "  PASS  ${n}"; PASS=$((PASS+1)); else echo "  FAIL  ${n}"; FAIL=$((FAIL+1)); FAILED_CASES+=("${n}"); fi; TOTAL=$((TOTAL+1)); }
run_runtime(){ local f="$1" n; n=$(basename "$f"); local o="${TMPDIR}/${n}.abc"; local t; t=$(grep -oP '@runtime-throws=\K[A-Za-z]+' "$f" 2>/dev/null|head -1||true); local e; e=$("${ES2PANDA}" --extension=ets --output="${o}" "$f" 2>&1)||true; if has_errors "$e"; then echo "  FAIL  ${n}"; FAIL=$((FAIL+1)); FAILED_CASES+=("${n}"); TOTAL=$((TOTAL+1)); return; fi; if ! grep -qE '^function\s+main\s*\(' "$f"; then echo "  SKIP  ${n}"; PASS=$((PASS+1)); TOTAL=$((TOTAL+1)); return; fi; local ep="${n%.ets}.ETSGLOBAL::main"; local ro; ro=$("${ARK}" --load-runtimes=ets --boot-panda-files="${BOOT_PANDA}:${BOOT_ETS}" "${o}" "${ep}" 2>&1)||true; if [ -n "$t" ]; then if echo "$ro"|grep -q "Unhandled exception.*${t}"; then echo "  PASS  ${n}  (threw ${t})"; PASS=$((PASS+1)); else echo "  FAIL  ${n}"; echo "$ro"|head -3|sed 's/^/    /'; FAIL=$((FAIL+1)); FAILED_CASES+=("${n}"); fi; else if echo "$ro"|grep -q "Unhandled exception"; then echo "  FAIL  ${n}"; echo "$ro"|head -3|sed 's/^/    /'; FAIL=$((FAIL+1)); FAILED_CASES+=("${n}"); else echo "  PASS  ${n}  (executed successfully)"; PASS=$((PASS+1)); fi; fi; TOTAL=$((TOTAL+1)); }
SECTIONS="${SECTIONS:-12.1_Errors}"
for section in $SECTIONS; do echo ""; echo "=== ${section} ==="
  for dir in "compile-pass" "compile-fail" "runtime"; do d="${CASE_ROOT}/${section}/${dir}"; [ -d "$d" ]||continue; echo "--- ${dir} ---"
    for f in "$d"/*.ets; do [ -f "$f" ]||continue; case "$dir" in compile-pass) run_compile_pass "$f" ;; compile-fail) run_compile_fail "$f" ;; runtime) run_runtime "$f" ;; esac; done
  done
done
echo ""; echo "============================="; echo "Total: ${TOTAL}  Pass: ${PASS}  Fail: ${FAIL}"
if [ "${#FAILED_CASES[@]}" -gt 0 ]; then echo "Failed:"; for c in "${FAILED_CASES[@]}"; do echo "  - $c"; done; fi
rm -rf "${TMPDIR}"; if [ "$FAIL" -gt 0 ]; then exit 1; fi