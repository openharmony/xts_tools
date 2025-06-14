#!/bin/bash

# Copyright (C) 2025 Huawei Device Co., Ltd.
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
echo exec $@

code_root=$(realpath $(dirname $(readlink -f $0))/../../../../)

mkdir  $1/entry/src/hypium
cp -f ${code_root}/test/testfwk/arkxtest/jsunit/src_static/module $1/entry/src/hypium/
cp -f ${code_root}/test/testfwk/arkxtest/jsunit/src_static/*.ets $1/entry/src/hypium/