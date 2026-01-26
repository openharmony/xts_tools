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

projects_home=$1
echo -n > ./log/hvigor-update.log

# Use -print0 and read -d '' to handle spaces in filenames safely
find "$projects_home" -name "hvigor-config.json5" -print0 | while IFS= read -r -d '' conf
do
    proj_dir=$(dirname "$(dirname "$conf")")
    
    echo "Updating: $proj_dir"
    python3 ./hvigor-update.py "$proj_dir" >> hvigor-update.log 2>&1
done
