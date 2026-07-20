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
# 13_Namespaces_Modules 章节运行脚本
# 用法：
#   bash run_namespaces_modules_cases_wsl.sh
#   SECTIONS="13.3_Namespace_Declarations" bash run_namespaces_modules_cases_wsl.sh

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CASE_ROOT="${SCRIPT_DIR}/ets_cases"

# 工具链路径（按 TESTING_PROCESS_GUIDE 标准）
ARK_HOME="/home/ubuntu/arkcompiler/runtime_core/static_core/out"
ES2PANDA="${ARK_HOME}/bin/es2panda"
ARK="${ARK_HOME}/bin/ark"
BOOT_PANDA="${ARK_HOME}/pandastdlib/arkstdlib.abc"
BOOT_ETS="${ARK_HOME}/plugins/ets/etsstdlib.abc"

# 验证工具链
for tool in "$ES2PANDA" "$ARK" "$BOOT_PANDA" "$BOOT_ETS"; do
  if [ ! -e "$tool" ]; then
    echo "ERROR: missing $tool" >&2
    exit 1
  fi
done

# 章节过滤
if [ -n "${SECTIONS:-}" ]; then
  read -ra SECTION_LIST <<< "${SECTIONS}"
else
  SECTION_LIST=()
  for d in "${CASE_ROOT}"/*/; do
    [ -d "$d" ] && SECTION_LIST+=("$(basename "$d")")
  done
fi

WORK_DIR=$(mktemp -d)
trap "rm -rf $WORK_DIR" EXIT

TOTAL_PASS=0
TOTAL_FAIL_OK=0
TOTAL_RT_OK=0
UNEXPECTED=0
ISSUES=()

run_pass_case() {
  local f="$1"
  local name=$(basename "$f")
  local out
  out=$($ES2PANDA --extension=ets --output="${WORK_DIR}/${name}.abc" "$f" 2>&1)
  local rc=$?
  if [ $rc -eq 0 ]; then
    echo "  [pass] OK: $name"
    TOTAL_PASS=$((TOTAL_PASS+1))
  else
    echo "  [pass] UNEXPECTED FAIL: $name"
    echo "    $(echo "$out" | grep -i 'error' | head -2)"
    UNEXPECTED=$((UNEXPECTED+1))
    ISSUES+=("PASS_FAILED: $name")
  fi
}

run_fail_case() {
  local f="$1"
  local name=$(basename "$f")
  local out
  out=$($ES2PANDA --extension=ets --output="${WORK_DIR}/${name}.abc" "$f" 2>&1)
  local rc=$?
  if [ $rc -ne 0 ]; then
    echo "  [fail] OK (expected error): $name"
    TOTAL_FAIL_OK=$((TOTAL_FAIL_OK+1))
  else
    echo "  [fail] UNEXPECTED PASS: $name"
    UNEXPECTED=$((UNEXPECTED+1))
    ISSUES+=("FAIL_PASSED: $name")
  fi
}

run_runtime_case() {
  local f="$1"
  local name=$(basename "$f")
  local abc="${WORK_DIR}/${name}.abc"

  # Step 1: 编译
  local cout
  cout=$($ES2PANDA --extension=ets --output="$abc" "$f" 2>&1)
  local crc=$?
  if [ $crc -ne 0 ]; then
    echo "  [rt] COMPILE FAIL: $name"
    echo "    $(echo "$cout" | grep -i 'error' | head -2)"
    UNEXPECTED=$((UNEXPECTED+1))
    ISSUES+=("RUNTIME_COMPILE_FAIL: $name")
    return
  fi

  # Step 2: 检查是否期望抛异常
  local expect_throw=""
  if grep -q "@runtime-throws" "$f"; then
    expect_throw=$(grep "@runtime-throws" "$f" | sed 's/.*@runtime-throws[ =]*//' | tr -d ' \r')
  fi

  # Step 3: ark VM 运行
  local rout
  rout=$($ARK --load-runtimes=ets \
    --boot-panda-files="${BOOT_PANDA}:${BOOT_ETS}" \
    "$abc" \
    "${name%.ets}.ETSGLOBAL::main" 2>&1)
  local rrc=$?

  if [ -n "$expect_throw" ]; then
    if [ $rrc -ne 0 ] && echo "$rout" | grep -q "$expect_throw"; then
      echo "  [rt] OK (expected throw $expect_throw): $name"
      TOTAL_RT_OK=$((TOTAL_RT_OK+1))
    else
      echo "  [rt] THROW MISMATCH: $name"
      echo "    expected $expect_throw, got rc=$rrc"
      UNEXPECTED=$((UNEXPECTED+1))
      ISSUES+=("RUNTIME_THROW_MISMATCH: $name")
    fi
  else
    if [ $rrc -eq 0 ]; then
      echo "  [rt] OK: $name"
      TOTAL_RT_OK=$((TOTAL_RT_OK+1))
    else
      echo "  [rt] UNEXPECTED THROW/ASSERT: $name"
      echo "    $(echo "$rout" | tail -3 | head -2)"
      UNEXPECTED=$((UNEXPECTED+1))
      ISSUES+=("RUNTIME_ASSERT_FAIL: $name")
    fi
  fi
}

for SEC in "${SECTION_LIST[@]}"; do
  SEC_DIR="${CASE_ROOT}/${SEC}"
  if [ ! -d "$SEC_DIR" ]; then
    echo "Section not found: $SEC, skipping"
    continue
  fi
  echo ""
  echo "============================================"
  echo "  Section: $SEC"
  echo "============================================"

  if [ -d "${SEC_DIR}/compile-pass" ]; then
    echo "-- compile-pass --"
    for f in "${SEC_DIR}/compile-pass"/*.ets; do
      [ -e "$f" ] && run_pass_case "$f"
    done
  fi

  if [ -d "${SEC_DIR}/compile-fail" ]; then
    echo "-- compile-fail --"
    for f in "${SEC_DIR}/compile-fail"/*.ets; do
      [ -e "$f" ] && run_fail_case "$f"
    done
  fi

  if [ -d "${SEC_DIR}/runtime" ]; then
    echo "-- runtime --"
    for f in "${SEC_DIR}/runtime"/*.ets; do
      [ -e "$f" ] && run_runtime_case "$f"
    done
  fi
done

echo ""
echo "============================================"
echo "  SUMMARY"
echo "============================================"
echo "  compile-pass OK: $TOTAL_PASS"
echo "  compile-fail OK: $TOTAL_FAIL_OK"
echo "  runtime OK:      $TOTAL_RT_OK"
echo "  unexpected:      $UNEXPECTED"
echo "  total:           $((TOTAL_PASS + TOTAL_FAIL_OK + TOTAL_RT_OK + UNEXPECTED))"

if [ "${#ISSUES[@]}" -gt 0 ]; then
  echo ""
  echo "Unresolved issues:"
  for i in "${ISSUES[@]}"; do
    echo "  - $i"
  done
fi

[ "$UNEXPECTED" -eq 0 ]
