#!/bin/bash
# Copyright (c) 2022 Huawei Device Co., Ltd.
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

set -e
find_dir_by_name()
{
  dir_name=$1
  find_dir_path=$2
  grep_filed=$3
  pushd $find_dir_path
    dir_num=$(find . -name $dir_name|grep $grep_filed|wc -l)
    if [ $dir_num -eq 1 ];then
      dir_path_find_by_name=$(pwd)/$(find . -name $dir_name | grep $grep_filed)
    else
      echo "find $dir_name in out error !"
      exit 1
    fi
  popd
}
