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

declare -A my_dict

echo $@

code_root=$(realpath $(dirname $(readlink -f $0))/../../../../)

function usage() {
    "Usage:
        ./build_xts.sh project_dir=<directory> hap_name=<string> output_dir=<directory>
        project_dir: full path
        hap_name: string
        output_dir: full path
    "
}

function env_prepare() {

    export PATH=${code_root}/prebuilts/command-line-tools/bin:${code_root}/prebuilts/command-line-tools/ohpm/bin:${code_root}/prebuilts/build-tools/common/nodejs/node-v16.20.2-linux-x64/bin:$PATH
    chmod -R 755 ${code_root}/prebuilts/command-line-tools
    export NODE_HOME=${code_root}/prebuilts/command-line-tools/tool/node
    mkdir -p $HOME/.hvigor/wrapper/tools
    cat <<EOF > $HOME/.hvigor/wrapper/tools/package.json
{
    "dependencies": {
    "pnpm": "7.30.0"
    }
}
EOF
    cd "$HOME/.hvigor/wrapper/tools" 
    echo "npminstall"
    npm install --silent 
    if [ $? -eq 0 ]; then
        echo "npmsucceeded"
    else
        echo "npmfailed"
        exit 1
    fi
}

function parse_arguments() {
	local helperKey="";
	local helperValue="";
	local current="";

 	while [ "$1" != "" ]; do
        echo $1
        key=$(echo $1 | awk -F'=' '{print $1}')
        value=$(echo $1 | awk -F'=' '{print $2}')
        echo key=$key, value=$value
        my_dict[$key]=$value
        shift
  	done

    if [[ ! -v my_dict["project_dir"] ]]; then
        usage
        exit 1
    fi
    if [[ ! -v my_dict["hap_name"] ]]; then
        usage
        exit 1
    fi
    if [[ ! -v my_dict["output_dir"] ]]; then
        usage
        exit 1
    fi
}


parse_arguments "${@}";
env_prepare

echo project_dir=${my_dict["project_dir"]}, hap_name=${my_dict["hap_name"]}, output_dir=${my_dict["output_dir"]}

${code_root}/applications/standard/hap/build.sh --project=${my_dict["project_dir"]} --out_path=${my_dict["output_dir"]} --sdk_path=${code_root}/prebuilts/ohos-sdk/linux
mv -v ${my_dict["output_dir"]}/entry-default-signed.hap ${my_dict["output_dir"]}/${my_dict["hap_name"]}.hap
