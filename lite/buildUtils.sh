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
findDirByName()
{
  dirName=$1
  findDirPath=$2
  grepFiled=$3
  pushd $findDirPath
    dirNum=$(find . -name $dirName|grep $grepFiled|wc -l)
    if [ $dirNum -eq 1 ];then
      dirPathFindByName=$(pwd)/$(find . -name $dirName | grep $grepFiled)
    else
      echo "find $dirName in out error !"
      exit 1
    fi
  popd
}
