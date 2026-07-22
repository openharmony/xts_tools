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

ES2PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/es2panda
ARK=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/bin/ark
BOOT_PANDA=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/pandastdlib/arkstdlib.abc
BOOT_ETS=/home/nnd/projects/arkts/arkcompiler/runtime_core/static_core/out/plugins/ets/etsstdlib.abc

TMPDIR=$(mktemp -d -t arkts-17-XXXXXX)
trap "rm -rf $TMPDIR" EXIT

PASS_COUNT=0
FAIL_COUNT=0
TOTAL=0

run_one() {
  local src="$1"
  local category="$2"
  local rel="${src#$CASE_ROOT/}"
  local basename
  basename=$(basename "$src" .ets | tr ' ' '_')
  local abc="$TMPDIR/${basename}.abc"

  TOTAL=$((TOTAL + 1))

  # Compile
  local compile_out
  compile_out=$("$ES2PANDA" --extension=ets --output="$abc" "$src" 2>&1) || true
  local compile_ok=0
  if [ -f "$abc" ] && [ -s "$abc" ]; then
    compile_ok=1
  fi

  case "$category" in
    compile-pass)
      if [ "$compile_ok" -eq 1 ]; then
        echo "  ✅ PASS $rel"
        PASS_COUNT=$((PASS_COUNT + 1))
      else
        echo "  ❌ FAIL $rel (expected compile-pass, got compile error)"
        echo "     $compile_out"
        FAIL_COUNT=$((FAIL_COUNT + 1))
      fi
      ;;
    compile-fail)
      if [ "$compile_ok" -eq 0 ]; then
        echo "  ✅ PASS $rel"
        PASS_COUNT=$((PASS_COUNT + 1))
      else
        echo "  ⚠️  FAIL_PASSED $rel (expected compile-fail, got compile-pass)"
        FAIL_COUNT=$((FAIL_COUNT + 1))
      fi
      ;;
    runtime)
      if [ "$compile_ok" -eq 0 ]; then
        echo "  ❌ FAIL $rel (runtime: compile failed)"
        echo "     $compile_out"
        FAIL_COUNT=$((FAIL_COUNT + 1))
        return
      fi
      local modname
      modname=$(basename "$src" .ets | tr '.' '_' | tr '-' '_')
      local runtime_out
      runtime_out=$("$ARK" --load-runtimes=ets \
        --boot-panda-files="$BOOT_PANDA:$BOOT_ETS" \
        "$abc" "${modname}.ETSGLOBAL::main" 2>&1) || true
      local exit_code=$?
      # Check for expected throws
      if head -20 "$src" | grep -q '@runtime-throws'; then
        if [ "$exit_code" -ne 0 ]; then
          echo "  ✅ PASS $rel (expected exception, exit=$exit_code)"
          PASS_COUNT=$((PASS_COUNT + 1))
        else
          echo "  ❌ FAIL $rel (expected exception, got exit 0)"
          FAIL_COUNT=$((FAIL_COUNT + 1))
        fi
      else
        if [ "$exit_code" -eq 0 ]; then
          echo "  ✅ PASS $rel"
          PASS_COUNT=$((PASS_COUNT + 1))
        else
          echo "  ❌ FAIL $rel (runtime error, exit=$exit_code)"
          echo "     $runtime_out"
          FAIL_COUNT=$((FAIL_COUNT + 1))
        fi
      fi
      ;;
  esac
}

echo "===== ArkTS 17_Experimental_Features Test Runner ====="
echo "Compiler: $ES2PANDA"
echo "Runtime:  $ARK"
echo ""

# Collect sections
SECTIONS="${SECTIONS:-}"
if [ -z "$SECTIONS" ]; then
  # Run all sections
  for section_dir in "$CASE_ROOT"/*/; do
    [ -d "$section_dir" ] || continue
    section_name=$(basename "$section_dir")
    echo "--- Section: $section_name ---"

    for category in compile-pass compile-fail runtime; do
      cat_dir="$section_dir/$category"
      [ -d "$cat_dir" ] || continue
      for ets_file in "$cat_dir"/*.ets; do
        [ -f "$ets_file" ] || continue
        run_one "$ets_file" "$category"
      done
    done
  done
else
  for section_name in $SECTIONS; do
    section_dir="$CASE_ROOT/$section_name"
    [ -d "$section_dir" ] || { echo "SKIP $section_name: not found"; continue; }
    echo "--- Section: $section_name ---"

    for category in compile-pass compile-fail runtime; do
      cat_dir="$section_dir/$category"
      [ -d "$cat_dir" ] || continue
      for ets_file in "$cat_dir"/*.ets; do
        [ -f "$ets_file" ] || continue
        run_one "$ets_file" "$category"
      done
    done
  done
fi

echo ""
echo "===== Summary ====="
echo "Total: $TOTAL, Pass: $PASS_COUNT, Fail: $FAIL_COUNT"
if [ "$TOTAL" -gt 0 ]; then
  RATE=$(awk "BEGIN { printf \"%.1f\", ($PASS_COUNT/$TOTAL)*100 }")
  echo "Pass rate: ${RATE}%"
fi
echo ""
echo "Temp dir: $TMPDIR"
