#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# Copyright (c) 2024 Huawei Device Co., Ltd.
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

import os
import sys


class TestSuite:

    def __init__(self, xts_root_dir):
        self._xts_root_dir = xts_root_dir
        self._components_mapping_ts = self._generate_dict_of_component_mapping_testsuite()
        self._dir_mapping_ts = self._generate_dict_of_directory_mapping_testsuite()

    def _generate_dict_of_component_mapping_testsuite(self):
        return {}

    def _generate_dict_of_directory_mapping_testsuite(self):
        return {}

    def get_testsuites_of_component(self, component_name):
        return self._components_mapping_ts.get(component_name)

    # 查找文件所属用例
    def get_testsuite_of_file(self, file_name):
        return None


class AccurateTarget:

    def __init__(self, xts_root_dir, change_info_file):
        self._xts_root_dir = xts_root_dir
        self._code_root_dir = os.path.realpath(os.path.join(xts_root_dir, "../../.."))
        self._change_info_file = change_info_file
        self._testsuite = None

    def _get_change_info(self):
        return {}

    def _set_testsuite(self):
        self._testsuite = TestSuite(self._xts_root_dir)

    # 测试套件仓修改
    def _get_targets_from_testcase_change(self):
        return 0, {'111', '222'}

    # 部件仓修改
    def _get_targets_from_component_change(self):
        return 0, {'111', '333'}

    # 接口仓/编译框架仓变化
    def _get_targets_from_if_change(self):
        # 变更文件，在白名单范围内，编译白名单的目标
        # 变更文件，不在白名单范围内，全量编译测试套
        return 0, {'111', '333'}

    def get_targets(self):
        func_list = [
            self._get_targets_from_testcase_change, self._get_targets_from_testcase_change,
            self._get_targets_from_if_change
        ]

        target = set()
        for i in func_list:
            retcode, m = i()
            if retcode:
                return retcode, []
            target = target.union(m)
        return 0, list(target)


def generate(xts_root_dir, change_info_file, build_target):
    print("{}:{}: build_target={}".format(__file__, sys._getframe().f_lineno, build_target))
    if not os.path.exists(change_info_file):
        print("warning: {} not exist".format(change_info_file))
        return 0, build_target

    obj = AccurateTarget(xts_root_dir, change_info_file)
    accurate_targets = obj.get_targets()

    return 0, accurate_targets
