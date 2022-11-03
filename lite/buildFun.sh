#!/bin/bash
# Copyright (c) 2020-2021 Huawei Device Co., Ltd.
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
source $BASE_HOME/test/xts/tools/lite/buildUtils.sh
usage()
{
  echo
  echo "USAGE"
  echo "       ./build.sh product=PRODUCT [platform=PLATFORM] [target=TARGET] xts=XTS"
  echo
  echo "                  product   : PRODUCT  product name, such as ipcamera or wifiiot"
  echo "                  platform  : PLATFORM  the platform of device"
  echo "                  target    : TARGET   the target for build, such as //xts/acts/communication_lite/wifiaware_test."
  echo "                  xts       : XTS   the name of xts, such as acts/hits etc."
  echo
  exit 1
}

check_python()
{
  python_cmd=""
  ver=$(python -c 'import platform; major, minor, patch = platform.python_version_tuple(); print(major);')
  if [ "$ver" = "3" ];then
    python_cmd=python
  else
    ver=$(python3 -c 'import platform; major, minor, patch = platform.python_version_tuple(); print(major);')
    if [ "$ver" = "3" ];then
      python_cmd=python3
    fi
  fi
  if [ -z "$python_cmd" ];then
    echo "Enviroment variable 'python3' is required, and python verion must be greater than 3.7"
    exit 1
  fi
}

build_wifiiot()
{
    current_xts=$1
    current_target=$2
    xts_root_dir="${suite_root_dir}/${current_xts}"
    suite_out_dir="${xts_root_dir}/testcases"
    suite_out_zip="${xts_root_dir}.zip"
    mkdir -p $DIST_DIR
    IFS=',' read -r -a array <<< "${current_target}"
    echo "--------------------------------------------${array[@]}"
    set -e
        mkdir -p ${DIST_DIR}/json
    for element in ${array[*]}
    do
      python build.py -p wifiiot_hispark_pegasus@hisilicon -f --test xts ${element} --gn-args build_xts=true
      suite_build_target=$(echo "${element}" | awk -F "[/:]" '{print $NF}')
      module_list_file=$suite_out_dir/module_info.json
      suite_module_name=$(python test/xts/tools/lite/build/utils.py --method_name get_modulename_by_buildtarget --arguments module_list_file=${module_list_file}#build_target=${suite_build_target})
      subsystem_name=$(python test/xts/tools/lite/build/utils.py --method_name get_subsystem_name --arguments path=${element})

      python test/xts/tools/lite/build/utils.py --method_name record_testmodule_info --arguments build_target_name=${suite_module_name}#module_name=${suite_module_name}#subsystem_name=${subsystem_name}#suite_out_dir=${DIST_DIR}/json#same_file=True

      mkdir -p ${suite_out_dir}/${subsystem_name}
      cp -f ${BASE_HOME}/out/hispark_pegasus/wifiiot_hispark_pegasus/${WIFIIOT_OUTFILE} ${suite_out_dir}/${subsystem_name}/${suite_module_name}.bin
      rm -f ${suite_out_dir}/${subsystem_name}/*.a
      cp -rf ${xts_root_dir}  ${DIST_DIR}
    done

    cp -rf ${DIST_DIR}/${current_xts} ${suite_root_dir}
    rm -f ${suite_out_dir}/.bin
    cp -rf ${DIST_DIR}/json/module_info.json ${suite_out_dir}
    cd $suite_root_dir
    rm -f ${suite_out_zip}
    zip -rv ${suite_out_zip} ${current_xts}
    cd $BASE_HOME

}

build_common()
{
    python build.py -p ${PRODUCT}@${PLATFORM} -f --gn-args build_xts=true
    findDirByName "suites" "${BASE_HOME}/out" ${PRODUCT}
    suite_root_dir_common="$dirPathFindByName"
    xts_root_dir_common="${suite_root_dir_common}/acts"
    suite_out_zip_common="${xts_root_dir_common}.zip"
    mv ${xts_root_dir_common}/testcases/test_component.json $xts_root_dir_common/test_component.json
    rm -rf ${xts_root_dir_common}/testcases
    mkdir -p ${xts_root_dir_common}/testcases/${PRODUCT}
    cp -f $(dirname $suite_root_dir_common)/OHOS_Image.bin ${suite_root_dir_common}/acts/testcases/${PRODUCT}/OHOS_Image.bin
    python test/xts/tools/lite/build/utils.py --method_name generate_allinone_testjson_by_template --arguments tmpl_file=${BASE_HOME}/test/xts/acts/build_lite/Test.tmpl#module_name=OHOS_Image#product_name=${PRODUCT}#config_file=${xts_root_dir_common}/testcases/${PRODUCT}/OHOS_Image.json
    mv $xts_root_dir_common/test_component.json ${xts_root_dir_common}/testcases/test_component.json
    echo "{}" > ${xts_root_dir_common}/testcases/module_info.json
    python test/xts/tools/lite/build/utils.py --method_name record_testmodule_info --arguments build_target_name=OHOS_Image#module_name=OHOS_Image#subsystem_name=${PRODUCT}#suite_out_dir=${xts_root_dir_common}/testcases#same_file=True
    cd $suite_root_dir_common
    rm -f ${suite_out_zip_common}
    zip -rv ${suite_out_zip_common} acts
    cd $BASE_HOME
}
