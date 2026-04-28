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
set -e

xts_suite_dir=''
build_ohos_sdk='false'
build_static_sdk=''

for arg in "$@"; do
  case "$arg" in
    --build-ohos-sdk)
      build_ohos_sdk='true'
      ;;
    sdk_build_arkts=true)
      build_static_sdk='--sdk_build_arkts'
      ;;
    xts_suitename:acts | xts_suitename:dcts | xts_suitename:hits | xts_suitename:acts_devices)
      xts_suite_dir="$SRC_DIR/test/xts/${arg#*:}"
      echo "[XTS] xts suite dir: $xts_suite_dir"
      ;;
    *)
      ;;
  esac
done

# align xts projects' compatibleSdkVersion with sys api full version,
# @since api 26, full version format: major.minor.patch
set_compile_sdk_version() {
  local tgt_api_ver="$1"

  find "$xts_suite_dir" -name 'build-profile.json5' -exec \
    sed -i -E "s/((['\"])compileSdkVersion\2)\s*:[^,]*(.*)$/\1: \"$tgt_api_ver\"\3/" {} +
  echo "[XTS] [$xts_suite_dir] set projects compileSdkVersion to $tgt_api_ver"
}

sys_ver_file_path="$SRC_DIR/build/version.gni"
api_full_ver=$(sed -nE 's/.*api_full_version\s*=\s*"([^"]*)"/\1/p' "$sys_ver_file_path")
xts_ver_file_path="$SRC_DIR/test/xts/tools/xts-project-tools/xts-code-check/config/version.json"

# skip alignment if no conf file set or xts suite mismatch
if [[ -f "$xts_ver_file_path" && -d "$xts_suite_dir" ]]; then
  xts_api_full_ver=$(sed -nE 's/.*"api_full_version"\s*:\s*"([^"]*)"/\1/p' "$xts_ver_file_path")
  echo "[XTS] api_full_version: $api_full_ver, xts_api_full_version: $xts_api_full_ver"

  if [[ "$api_full_ver" != "$xts_api_full_ver" ]]; then
    set_compile_sdk_version "$api_full_ver"
  fi
fi

# build ohos sdk
sdk_nonexistent=$([[ ! -d "$SRC_DIR/prebuilts/ohos-sdk/linux/$api_full_ver" ]] && echo 'true' || echo 'false')
echo "[XTS] sdk nonexistent: $sdk_nonexistent, build_ohos_sdk: $build_ohos_sdk"

if [[ "$sdk_nonexistent" == 'true' || "$build_ohos_sdk" == 'true' ]]; then
  sdk_build_params="--source-root-dir $SRC_DIR --python-dir $PYTHON3_DIR --host-os $HOST_OS"
  echo "Execute command: $SDK_BUILD_SCRIPT $sdk_build_params $build_static_sdk"
  "$SDK_BUILD_SCRIPT" $sdk_build_params $build_static_sdk

  if (( $? != 0 )); then
    echo '[ERROR]: Failed to build ohos-sdk'
    exit 1
  fi
fi
