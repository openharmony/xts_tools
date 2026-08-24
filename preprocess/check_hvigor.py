#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Copyright (c) 2024-2024 Huawei Device Co., Ltd.
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

import os
import sys
import json5
from pathlib import Path
from bump_compile_sdk_version import get_sdk_api_full_version


class HvigorChecker:

    HVIGOR_BASE_VERSION = [
        '26.0.0',
    ]

    def __init__(self, suite_name):
        self._current_dir = Path(__file__).resolve().parent
        self._suite_name = suite_name
        self._xts_root_dir = (self._current_dir / '../..' / suite_name).resolve()

    def get_hvigor_version(self, conf_file: Path):
        with conf_file.open('r', encoding='utf-8') as f:
            try:
                data = json5.load(f)
                version = data.get('hvigorVersion')
                return version if version else data.get('modelVersion')
            except Exception:
                print(f'Error processing config file: {conf_file}')
                raise

    def get_compile_sdk_version(self, conf_file: Path):
        with conf_file.open('r', encoding='utf-8') as f:
            try:
                data = json5.load(f)
                version = data.get('app').get('products')[0].get('compileSdkVersion')
                return str(version)
            except Exception:
                print(f'Error processing config file: {conf_file}')
                raise

    def output_unmatched_project(self, prject_list, filename):
        print("")
        print("Error: The {} in the following directory does not meet the requirements:".format(filename))
        for prj in prject_list:
            print(prj[0], prj[1])

    def check_hvigor_version(self, hvigor_prj_list: list[Path]):
        unmatch_prj_list = []
        for prj_dir in hvigor_prj_list:
            filename = prj_dir / 'hvigor' / 'hvigor-config.json5'
            if not filename.is_file():
                continue
            version = self.get_hvigor_version(filename)
            if version not in self.HVIGOR_BASE_VERSION:
                unmatch_prj_list.append((version, filename))

        if len(unmatch_prj_list):
            self.output_unmatched_project(unmatch_prj_list, 'hvigor-config.json5')
            print("Plesse use {}".format(self.HVIGOR_BASE_VERSION))
            return False
        return True

    def check_compile_sdk_version(self, hvigor_prj_list: list[Path]):
        api_full_version = get_sdk_api_full_version()
        unmatch_prj_list = []
        for prj_dir in hvigor_prj_list:
            filename = prj_dir / 'build-profile.json5'
            if not filename.is_file():
                continue
            compile_sdk_version = self.get_compile_sdk_version(filename)
            if compile_sdk_version != api_full_version:
                unmatch_prj_list.append((compile_sdk_version, filename))

        if len(unmatch_prj_list):
            self.output_unmatched_project(unmatch_prj_list, 'build-profile.json5')
            print("Plesse update compileSdkVersion to {}".format(api_full_version))
            return False
        return True

    def get_hvigor_prject_list(self) -> list[Path]:
        hvigor_prj_list = []
        target_files = {'build-profile.json5', 'BUILD.gn', 'Test.json'}
        exclude_dirs = {'.cxx', '.git', 'node_modules', 'oh_modules', 'build', '.hvigor', '.idea', 'dist'}

        root_path = Path(self._xts_root_dir)
        if not root_path.exists():
            return hvigor_prj_list

        walker = root_path.walk() if hasattr(root_path, 'walk') else os.walk(root_path)

        for root, dirs, files in walker:
            current_path = Path(root)
            if 'hvigor' in dirs and target_files.issubset(files):
                hvigor_prj_list.append(current_path.resolve())
                dirs.clear()
            else:
                dirs[:] = [d for d in dirs if d not in exclude_dirs]

        return hvigor_prj_list

    def check_hvigor(self):
        hvigor_prj_list = self.get_hvigor_prject_list()
        check_func_list = [
            self.check_hvigor_version,
            self.check_compile_sdk_version,
        ]
        isValid = True
        for check_func in check_func_list:
            isValid &= check_func(hvigor_prj_list)
        return isValid


def main():
    if len(sys.argv) < 2:
        print("Usage: python3 check_hvigor.py <xts_suite_dir>")
        return 1

    suite_name = (
        os.environ.get('XTS_SUITENAME') or
        os.environ.get('xts_suitename') or
        Path(sys.argv[1]).name
    )

    obj = HvigorChecker(suite_name)

    if not obj.check_hvigor():
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
