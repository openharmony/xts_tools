#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Copyright (c) 2026 Huawei Device Co., Ltd.
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
"""

import sys
import os
from bump_compile_sdk_version import should_bump_compile_sdk_version, bump_compile_sdk_version
from check_hvigor import HvigorChecker


def bump_compile_sdk_version_if_needed(xts_root_dir):
    should_bump, local_ver, sdk_ver = should_bump_compile_sdk_version()
    if should_bump and sdk_ver:
        print(f"[XTS PREPROCESS] API update wip ({local_ver} -> {sdk_ver}). Commit is NTCOC/Full Build. Running preprocess on {xts_root_dir}...")
        bump_compile_sdk_version(xts_root_dir, sdk_ver)
    else:
        if local_ver and sdk_ver and local_ver != sdk_ver:
            print(f"[XTS PREPROCESS] API update wip ({local_ver} -> {sdk_ver}). Commit is TCOC. Skipping preprocess.")
        elif sdk_ver:
            print(f"[XTS PREPROCESS] API update completed ({sdk_ver}). Skipping preprocess.")


def run_hvigor_checks(xts_root_dir):
    suite_name = ""
    if 'XTS_SUITENAME' in os.environ:
        suite_name = os.environ.get('XTS_SUITENAME')
    elif 'xts_suitename' in os.environ:
        suite_name = os.environ.get('xts_suitename')
    else:
        suite_name = xts_root_dir

    obj = HvigorChecker(suite_name)
    return obj.check_hvigor()


def main():
    if len(sys.argv) < 2:
        print("Usage: xts_preprocess.py <xts_root_dir>")
        return 1

    xts_root_dir = sys.argv[1]

    # 1. Bump compileSdkVersion if necessary
    bump_compile_sdk_version_if_needed(xts_root_dir)

    # 2. Run Hvigor checks
    if not run_hvigor_checks(xts_root_dir):
        return 1

    return 0


if __name__ == "__main__":
    sys.exit(main())
