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

BASE_HOME=$(dirname $(dirname $(dirname $(dirname $(cd $(dirname $0); pwd)))))
PRODUCT=""
XTS=""
#WIFIIOT_OUTFILE=Hi3861_wifiiot_app_allinone.bin
WIFIIOT_OUTFILE=OHOS_Image.bin
DIST_DIR=$BASE_HOME/dist
WIFIIOT_ACTS_MODULES="${WIFIIOT_ACTS_MODULES},//test/xts/acts/communication_lite/lwip_hal:ActsLwipTest"
#WIFIIOT_ACTS_MODULES="${WIFIIOT_ACTS_MODULES},//test/xts/acts/communication_lite/wifiservice_hal:ActsWifiServiceTest"
WIFIIOT_ACTS_MODULES="${WIFIIOT_ACTS_MODULES},//test/xts/acts/commonlibrary_lite/file_hal:ActsUtilsFileTest"
WIFIIOT_ACTS_MODULES="${WIFIIOT_ACTS_MODULES},//test/xts/acts/startup_lite/syspara_hal:ActsParameterTest"
WIFIIOT_ACTS_MODULES="${WIFIIOT_ACTS_MODULES},//test/xts/acts/iothardware_lite/peripheral_hal:ActsWifiIotTest"
#WIFIIOT_ACTS_MODULES="${WIFIIOT_ACTS_MODULES},//test/xts/acts/distributeddatamgr_lite/kv_store_hal:ActsKvStoreTest"
WIFIIOT_ACTS_MODULES="${WIFIIOT_ACTS_MODULES},//test/xts/acts/security_lite/huks/liteos_m_adapter:ActsHuksHalFunctionTest"
WIFIIOT_ACTS_MODULES="${WIFIIOT_ACTS_MODULES},//test/xts/acts/hiviewdfx_lite/hilog_hal:ActsDfxFuncTest"
WIFIIOT_ACTS_MODULES="${WIFIIOT_ACTS_MODULES},//test/xts/acts/hiviewdfx_lite/hievent_hal:ActsHieventLiteTest"
WIFIIOT_ACTS_MODULES="${WIFIIOT_ACTS_MODULES},//test/xts/acts/distributed_schedule_lite/system_ability_manager_hal:ActsSamgrTest"
WIFIIOT_ACTS_MODULES="${WIFIIOT_ACTS_MODULES},//test/xts/acts/update_lite/dupdate_hal:ActsUpdaterFuncTest"
WIFIIOT_ACTS_MODULES="${WIFIIOT_ACTS_MODULES},//test/xts/acts/startup_lite/bootstrap_hal:ActsBootstrapTest"
WIFIIOT_ACTS_MODULES="${WIFIIOT_ACTS_MODULES},//test/xts/acts/xts_lite/device_attest_lite/device_attestStart_hal:ActsDeviceAttestTest"

source $BASE_HOME/test/xts/tools/lite/buildFun.sh

error_report() {
    echo "Error on line $1"
}
trap 'error_report $LINENO' ERR

parse_cmdline()
{
  PLATFORM=""
  TARGET=""
  TARGET_PARAM=""
  while [ -n "$1" ]
  do
    var="$1"
    OPTIONS=$(echo ${var%%=*})
    PARAM=$(echo ${var#*=})
    case "$OPTIONS" in
    product)   PRODUCT="$PARAM"
               ;;
    platform)  PLATFORM="$PARAM"
               ;;
    target)    TARGET="$PARAM"
               ;;
    xts)       XTS="$PARAM"
               ;;
    *)   usage
         break;;
    esac
    shift
  done
  if [ "$PRODUCT" = "" ] || [ "$XTS" = "" ];then
    usage
  fi
  if [ "$PRODUCT" = "wifiiot" ];then
    #PLATFORM="hi3861v100_liteos_riscv"
    if [ "$TARGET" = "" ];then
	  if [ "$XTS" = "acts" ];then
         TARGET=$WIFIIOT_ACTS_MODULES
	  elif [ "$XTS" = "hits" ];then
	     TARGET=$WIFIIOT_HITS_MODULES
	  fi
    fi
  elif [ "$PLATFORM" = "" ];then
    echo "platform is required, for product $PRODUCT"
    usage
  fi
  if [ "$TARGET" != "" ];then
    TARGET_PARAM=" --target $TARGET"
  fi
}

build()
{
  out_dir="${BASE_HOME}/out/hispark_pegasus/wifiiot_hispark_pegasus"
  suite_root_dir="${out_dir}/suites"
  cd $BASE_HOME
  if [[ "$PRODUCT" == "wifiiot" && "$PLATFORM" == "" ]]; then
    if [ "$XTS" = "all" ];then
	  build_wifiiot "acts" $WIFIIOT_ACTS_MODULES
	  build_wifiiot "hits" $WIFIIOT_HITS_MODULES
	  cp -rf ${DIST_DIR}/acts ${suite_root_dir}
	  cd $suite_root_dir
      zip -rv acts.zip acts
      if [ -n "${DIST_DIR}" ]; then
        rm -rf $DIST_DIR
      fi
    else
	  build_wifiiot $XTS $TARGET
      if [ -n "${DIST_DIR}" ]; then
        rm -rf $DIST_DIR
      fi
    fi
  else
    #python build.py ${PRODUCT}_${PLATFORM} -b debug --test xts $TARGET
    build_common
  fi
}

echo $BASE_HOME
check_python
parse_cmdline $@
build
