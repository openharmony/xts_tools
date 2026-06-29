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

sed -i 's|"compileSdkVersion": 26|"compileSdkVersion": "26.0.0"|g' $(find $1 -name build-profile.json5)
sed -i 's|"compileSdkVersion": "26"|"compileSdkVersion": "26.0.0"|g' $(find $1 -name build-profile.json5)
sed -i "s|\"compileSdkVersion\": '26'|\"compileSdkVersion\": \"26.0.0\"|g" $(find $1 -name build-profile.json5)
sed -i 's|compileSdkVersion: 26|"compileSdkVersion": "26.0.0"|g' $(find $1 -name build-profile.json5)
sed -i 's|compileSdkVersion: "26"|"compileSdkVersion": "26.0.0"|g' $(find $1 -name build-profile.json5)

sed -i 's|"compatibleSdkVersion": 26|"compatibleSdkVersion": "26.0.0"|g' $(find $1 -name build-profile.json5)
sed -i 's|"compatibleSdkVersion": "26"|"compatibleSdkVersion": "26.0.0"|g' $(find $1 -name build-profile.json5)
sed -i "s|\"compatibleSdkVersion\": '26'|\"compatibleSdkVersion\": \"26.0.0\"|g" $(find $1 -name build-profile.json5)
sed -i 's|compatibleSdkVersion: 26|"compatibleSdkVersion": "26.0.0"|g' $(find $1 -name build-profile.json5)
sed -i 's|compatibleSdkVersion: "26"|"compatibleSdkVersion": "26.0.0"|g' $(find $1 -name build-profile.json5)

sed -i '/"targetSdkVersion"/d' $(find $1 -name build-profile.json5)
sed -i "/arkTSVersion/d" $(find $1 -name build-profile.json5 | grep "/entry/")
find $1 -name hypium | xargs rm -rf

sh_dir=$(dirname $(readlink -f $0))
${sh_dir}/batch_update_static.sh $1