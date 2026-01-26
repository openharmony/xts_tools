#!/bin/bash
#
# Copyright (c) 2026 Huawei Device Co., Ltd.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

my_dir=$(dirname $0)
src_cp="$my_dir"/log/src.copy
src_doc="$my_dir"/log/src_doc.info
src_tc="$my_dir"/log/src_tc.info
debug_mode=$([[ -n "$1" ]] && echo 1 || echo 0)

format_tc_doc() {
    local debug_mode="$1"
    if [[ "$debug_mode" -eq 0 ]]; then
        python3 -B "$my_dir"/format_tc_doc.py "$file"
    else
        python3 -B "$my_dir"/format_tc_doc.py "$file" "debug"
    fi
}

# find "$(pwd)" \( -iname "*.js" -o -iname "*.ts" -o -iname "*.ets" \) -type f -exec pcregrep -Mon --buffer-size=100M '(?ms)^[ \t]*/\*.*?\*/' {} + > js-doc.log
# find "$(pwd)" \( -iname "*.js" -o -iname "*.ts" -o -iname "*.ets" \) -type f -exec pcregrep -Mon --buffer-size=100M '(?s)\bit\s*\(\s*.*?\s*,\s*.*?\s*,' {} + > js-tc.log
files=$(find "$(pwd)" \( -iname "*.js" -o -iname "*.ts" -o -iname "*.ets" \) -type f)
for file in $files; do
    cp "$file" "$src_cp"
    pcregrep -Mhon --buffer-size=100M '(?ms)^[ \t]*/\*.*?\*/' "$file" > "$src_doc"
    tc_list=$(pcregrep -Mhon --buffer-size=100M '(?s)\bit\s*\(\s*.*?\s*,\s*.*?\s*,' "$file")

    if [[ $? -eq 0 ]]; then
        echo "$tc_list" > "$src_tc"
        format_tc_doc "$debug_mode"
    fi
done

# find "$(pwd)" \( -iname "*.c" -o -iname "*.cpp" -o -iname "*.c++" -o -iname "*.cxx" -o -iname "*.cc" \) -type f -exec pcregrep -Mon --buffer-size=100M '(?ms)^[ \t]*/\*.*?\*/' {} + > c-doc.log
# find "$(pwd)" \( -iname "*.c" -o -iname "*.cpp" -o -iname "*.c++" -o -iname "*.cxx" -o -iname "*.cc" \) -type f -exec pcregrep -Mon --buffer-size=100M '(?s)\b(?:LITE_TEST_CASE|HWTEST|HWTEST_F)\s*\(\s*.*?\s*,\s*.*?\s*,\s*.*?\s*\)' {} + > c-tc.log
files=$(find "$(pwd)" \( -iname "*.c" -o -iname "*.cpp" -o -iname "*.c++" -o -iname "*.cxx" -o -iname "*.cc" \) -type f)
for file in $files; do
    cp "$file" "$src_cp"
    pcregrep -Mhon --buffer-size=100M '(?ms)^[ \t]*/\*.*?\*/' "$file" > "$src_doc"
    tc_list=$(pcregrep -Mhon --buffer-size=100M '(?s)\b(?:LITE_TEST_CASE|HWTEST_F|HWTEST)\s*\(\s*.*?\s*,\s*.*?\s*,\s*.*?\s*\)' "$file")

    if [[ $? -eq 0 ]]; then
        echo "$tc_list" > "$src_tc"
        format_tc_doc "$debug_mode"
    fi
done
