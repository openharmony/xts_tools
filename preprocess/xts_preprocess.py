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
from pathlib import Path
from bump_compile_sdk_version import bump_compile_sdk_version
from check_hvigor import HvigorChecker


def run_hvigor_checks(suite_name: str):
    checker = HvigorChecker(suite_name)
    return checker.check_hvigor()


def main():
    if len(sys.argv) < 2:
        print("Usage: python3 xts_preprocess.py <xts_suite_dir>")
        return 1

    if os.environ.get('xts_skip_preprocess') == 'true':
        print("[XTS PREPROCESS] No need to preprocess.")
        return 0

    suite_name = (
        os.environ.get('XTS_SUITENAME') or
        os.environ.get('xts_suitename') or
        Path(sys.argv[1]).name
    )
    cwd = Path(__file__).resolve().parent
    xts_suite_dir = (cwd / '../..' / suite_name).resolve()

    print(f"[XTS PREPROCESS] suite_name: {suite_name}, xts_suite_dir: {xts_suite_dir}")
    print("[XTS PREPROCESS] Bumping compileSdkVersion start.")
    # 1. Bump compileSdkVersion if necessary
    bump_compile_sdk_version(xts_suite_dir)

    print("[XTS PREPROCESS] Hvigor check start.")
    # 2. Run Hvigor checks
    if not run_hvigor_checks(suite_name):
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
