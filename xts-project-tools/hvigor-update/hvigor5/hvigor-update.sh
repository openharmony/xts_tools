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

project_home=$1
echo ${project_home}

find ${project_home} -name "hvigor-config.json5" | xargs sed -i 's|"hvigorVersion".*|"modelVersion": "5.0.0",|g'
find ${project_home} -name "hvigor-config.json5" | xargs sed -i '/"@ohos\/hvigor-ohos-plugin".*/d'

build_profile_json5=${project_home}/build-profile.json5
runtimeos=$(grep -c "runtimeOS" ${build_profile_json5})
if [ "${runtimeos}" == "0" ]; then
    targetsdkversion=$(grep -c "targetSdkVersion" ${build_profile_json5})
    if [ "${targetsdkversion}" == "0" ]; then
        sed -i 's|"compatibleSdkVersion": [0-9]*$|&,|g' ${build_profile_json5}
        sed -i '/compatibleSdkVersion/a\        "runtimeOS": "OpenHarmony",' ${build_profile_json5}
    else
        sed -i 's|"targetSdkVersion": [0-9]*$|&,|g' ${build_profile_json5}
        sed -i '/targetSdkVersion/a\        "runtimeOS": "OpenHarmony",' ${build_profile_json5}
    fi
fi

rm -rf ${project_home}/hvigorw
rm -rf ${project_home}/hvigorw.bat
rm -rf ${project_home}/hvigor/hvigor-wrapper.js

oh_pachage_json5=${project_home}/oh-package.json5
oh_pachage_json5_version=$(grep -c modelVersion ${oh_pachage_json5})
if [ "${oh_pachage_json5_version}" != 0 ]; then
    echo "modelVersion exists, no need to modify"
else
    sed -i '/"name"/i\  "modelVersion": "5.0.0",' ${oh_pachage_json5}
fi
