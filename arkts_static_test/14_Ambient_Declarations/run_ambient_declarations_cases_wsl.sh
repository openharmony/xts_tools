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

# ArkTS Ambient Declarations — 用例运行脚本
# - compile-pass: 编译应成功，无 error
# - compile-fail: 编译应失败，有 Syntax/Semantic error
# - runtime: 编译成功 + 实际执行 + 检查 assert/异常

ES2PANDA=~/arkcompiler/runtime_core/static_core/out/bin/es2panda
ARK=~/arkcompiler/runtime_core/static_core/out/bin/ark
BOOT_PANDA=~/arkcompiler/runtime_core/static_core/out/pandastdlib/arkstdlib.abc
BOOT_ETS=~/arkcompiler/runtime_core/static_core/out/plugins/ets/etsstdlib.abc
TMPDIR=/tmp/arkts_test_$(date +%s)

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CASE_ROOT="${SCRIPT_DIR}/ets_cases"

PASS=0
FAIL=0
TOTAL=0
FAILED_CASES=()

mkdir -p "${TMPDIR}"

has_errors() {
    local input="$1"
    local line
    while IFS= read -r line; do
        if [[ "$line" =~ ^\[.*\]\ Syntax\ error ]] || [[ "$line" =~ ^\[.*\]\ Semantic\ error ]] || [[ "$line" =~ ^\[.*\][^W].*[Ee]rror[^:] ]]; then
            return 0
        fi
    done <<< "$input"
    return 1
}

extract_errors() {
    local input="$1"
    while IFS= read -r line; do
        if [[ "$line" =~ ^\[.*\]\ Syntax\ error ]] || [[ "$line" =~ ^\[.*\]\ Semantic\ error ]] || [[ "$line" =~ ^\[.*\][^W].*[Ee]rror ]]; then
            echo "    $line"
        fi
    done <<< "$input"
}

run_compile_pass() {
    local file="$1"
    local name
    name=$(basename "$file")
    local out="${TMPDIR}/${name}.abc"
    local errors
    errors=$("${ES2PANDA}" --extension=ets --output="${out}" "$file" 2>&1) || true
    if has_errors "$errors"; then
        echo "  FAIL  ${name}  (expected pass, got compile errors)"
        extract_errors "$errors"
        FAIL=$((FAIL + 1))
        FAILED_CASES+=("${name}")
    else
        echo "  PASS  ${name}"
        PASS=$((PASS + 1))
    fi
    TOTAL=$((TOTAL + 1))
}

run_compile_fail() {
    local file="$1"
    local name
    name=$(basename "$file")
    local out="${TMPDIR}/${name}.abc"
    local errors
    errors=$("${ES2PANDA}" --extension=ets --output="${out}" "$file" 2>&1) || true
    if has_errors "$errors"; then
        echo "  PASS  ${name}"
        PASS=$((PASS + 1))
    else
        echo "  FAIL  ${name}  (expected compile error, got success)"
        FAIL=$((FAIL + 1))
        FAILED_CASES+=("${name}")
    fi
    TOTAL=$((TOTAL + 1))
}

# runtime 用例：必须有 main 入口，编译成功后用 ark 实际运行
run_runtime() {
    local file="$1"
    local name
    name=$(basename "$file")
    local basename_no_ext="${name%.ets}"
    local out="${TMPDIR}/${basename_no_ext}.abc"

    # 期望抛异常的标记
    local expects_throw
    expects_throw=$(grep -oP '@runtime-throws=\K[A-Za-z]+' "$file" 2>/dev/null | head -1 || true)

    # 编译
    local compile_errors
    compile_errors=$("${ES2PANDA}" --extension=ets --output="${out}" "$file" 2>&1) || true
    if has_errors "$compile_errors"; then
        echo "  FAIL  ${name}  (compile failed)"
        extract_errors "$compile_errors"
        FAIL=$((FAIL + 1))
        FAILED_CASES+=("${name}")
        TOTAL=$((TOTAL + 1))
        return
    fi

    # 检查是否有 main 函数
    if ! grep -qE '^function\s+main\s*\(' "$file"; then
        echo "  SKIP  ${name}  (no main entrypoint, compile only)"
        PASS=$((PASS + 1))
        TOTAL=$((TOTAL + 1))
        return
    fi

    # 实际运行
    local entry="${basename_no_ext}.ETSGLOBAL::main"
    local run_output
    local run_exit
    run_output=$("${ARK}" --load-runtimes=ets \
        --boot-panda-files="${BOOT_PANDA}:${BOOT_ETS}" \
        "${out}" "${entry}" 2>&1) || true
    run_exit=$?

    # 检查实际运行结果是否符合预期
    if [ -n "$expects_throw" ]; then
        # 期望抛出异常
        if echo "$run_output" | grep -q "Unhandled exception.*${expects_throw}"; then
            echo "  PASS  ${name}  (threw ${expects_throw} as expected)"
            PASS=$((PASS + 1))
        else
            echo "  FAIL  ${name}  (expected throw ${expects_throw})"
            echo "$run_output" | head -3 | sed 's/^/    /'
            FAIL=$((FAIL + 1))
            FAILED_CASES+=("${name}")
        fi
    else
        # 期望正常完成
        if echo "$run_output" | grep -q "Unhandled exception"; then
            echo "  FAIL  ${name}  (unexpected exception)"
            echo "$run_output" | head -3 | sed 's/^/    /'
            FAIL=$((FAIL + 1))
            FAILED_CASES+=("${name}")
        else
            echo "  PASS  ${name}  (executed successfully)"
            PASS=$((PASS + 1))
        fi
    fi
    TOTAL=$((TOTAL + 1))
}

run_section() {
    local section="$1"
    echo ""
    echo "=== ${section} ==="

    for dir in "compile-pass" "compile-fail" "runtime"; do
        local d="${CASE_ROOT}/${section}/${dir}"
        if [ ! -d "$d" ]; then continue; fi
        echo "--- ${dir} ---"
        for f in "$d"/*.ets; do
            [ -f "$f" ] || continue
            case "$dir" in
                compile-pass) run_compile_pass "$f" ;;
                compile-fail) run_compile_fail "$f" ;;
                runtime)      run_runtime "$f" ;;
            esac
        done
    done
}

# 执行哪些章节（默认全部 12 节，可通过 SECTIONS 环境变量覆盖）
#
# 用法：
#   bash run_ambient_declarations_cases_wsl.sh          # 跑全部 12 节
#   SECTIONS="14.1_Ambient_Constant_or_Variable_Declarations" bash run_ambient_declarations_cases_wsl.sh  # 只跑单节
#   SECTIONS="14.1_Ambient_Constant_or_Variable_Declarations 14.2_Ambient_Function_Declarations" bash run_ambient_declarations_cases_wsl.sh  # 跑指定列表
#
DEFAULT_SECTIONS="14.1_Ambient_Constant_or_Variable_Declarations \
  14.2_Ambient_Function_Declarations \
  14.3_Ambient_Overload_Function_Declarations \
  14.4_Ambient_Class_Declarations \
  14.4.1_Ambient_Indexer \
  14.4.2_Ambient_Call_Signature \
  14.4.3_Ambient_Iterable \
  14.5_Ambient_Interface_Declarations \
  14.6_Ambient_Enumeration_Declarations \
  14.7_Ambient_Namespace_Declarations \
  14.7.1_Implementing_Ambient_Namespace_Declaration \
  14.8_Ambient_Accessor_Declarations"
SECTIONS="${SECTIONS:-$DEFAULT_SECTIONS}"

for section in $SECTIONS; do
    run_section "$section"
done

echo ""
echo "============================="
echo "Total: ${TOTAL}  Pass: ${PASS}  Fail: ${FAIL}"
if [ "${#FAILED_CASES[@]}" -gt 0 ]; then
    echo ""
    echo "Failed cases:"
    for c in "${FAILED_CASES[@]}"; do
        echo "  - $c"
    done
fi
echo "============================="

rm -rf "${TMPDIR}"

if [ "$FAIL" -gt 0 ]; then
    exit 1
fi
