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
import json
from targetUtils import ChangeFileEntity, BundleTargetUtils, XTSTargetUtils, PathUtils



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

    XTS_PATH_LIST = [
        "test/xts/acts",
        "test/xts/dcts",
        "test/xts/hats"
    ]

    def __init__(self, xts_root_dir, change_info_file):
        self._xts_root_dir = xts_root_dir
        self._code_root_dir = os.path.realpath(os.path.join(xts_root_dir, "../../.."))
        self._change_info_file = change_info_file
        self._xts_suitename = os.getenv("XTS_SUITENAME")
        self._testsuite = None

    # def _get_full_target(self, xts_suitename):
        

    def _get_change_info(self):
        try:
            with open(self._change_info_file, 'r') as file:
                # 读取文件内容并解析为Python字典
                data = json.load(file)

            # 存储新增/修改/删除的文件
            change_list = []
        except Exception as e:
            print(f"读取change_info_file文件失败,全量编译\nchange_info_file路径: {self._change_info_file}")
            return 1

        for item in data:
            changeFileEntity = ChangeFileEntity(name=data[item]["name"], path=item)
            changeFileEntity.addAddPaths(data[item]["change_file_list"]["add"])
            changeFileEntity.addModifiedPaths(data[item]["change_file_list"]["modified"])
            changeFileEntity.addRenamePathsto(data[item]["change_file_list"]["rename"])
            changeFileEntity.addDeletePaths(data[item]["change_file_list"]["delete"])
            change_list.append(changeFileEntity)
        self._change_list = change_list
        return 0


    def _set_testsuite(self):
        self._testsuite = TestSuite(self._xts_root_dir)

    # 测试套件仓修改,只查看当前编译套件仓
    def _get_targets_from_testcase_change(self):
        targetFilse = []
        for changeFileEntity in self._change_list:
            if changeFileEntity.path in self.XTS_PATH_LIST and changeFileEntity.path in self._xts_root_dir:
                # 只有当前编译的xts仓修改参与计算
                ret, targetFilse = XTSTargetUtils.getTargstsPaths(self._xts_root_dir, changeFileEntity)
        return 0, targetFilse

    # 部件仓修改
    def _get_targets_from_component_change(self):
        targetFilse = []
        for changeFileEntity in self._change_list:
            if changeFileEntity.path not in self.XTS_PATH_LIST:
                targetFilse += BundleTargetUtils.getTargstsPaths(self._xts_root_dir, changeFileEntity)
        return 0, targetFilse

    # 接口仓/编译框架仓变化
    def _get_targets_from_if_change(self):
        # 变更文件，在白名单范围内，编译白名单的目标
        # 变更文件，不在白名单范围内，全量编译测试套
        return 0, {'111', '333'}

    def get_targets(self):
        ret = self._get_change_info()
        if ret == 1:
            # changeinfo读取失败-全量编译
            target_paths = [self._xts_root_dir]
        else:
            func_list = [
                self._get_targets_from_testcase_change, 
                self._get_targets_from_component_change
                # self._get_targets_from_if_change
            ]

            # 应编目录
            target_paths = []
            for i in func_list:
                retcode, m = i()
                if retcode:
                    return retcode, []
                target_paths += m

        # 去除子目录\重复目录
        combined_list = sorted(set(target_paths))
        sum_path = PathUtils.removeSubandDumpPath(combined_list)

        targets = []
        # 每个目录获取 target
        for path in sum_path:
            targets += XTSTargetUtils.getTargetfromPath(self._xts_root_dir, path)

        return 0, list(targets)


def generate(xts_root_dir, change_info_file, build_target):
    print("{}:{}: build_target={}".format(__file__, sys._getframe().f_lineno, build_target))
    if not os.path.exists(change_info_file):
        print("warning: {} not exist".format(change_info_file))
        return 0, build_target

    obj = AccurateTarget(xts_root_dir, change_info_file)
    ret, accurate_targets = obj.get_targets()
    return ret, accurate_targets
