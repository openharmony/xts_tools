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
from Utils import ChangeFileEntity, XTSTargetUtils, PathUtils, HOME
from ci_manager import ComponentManager, XTSManager, WhitelistManager, GetInterfaceData


class AccurateTarget:

    def __init__(self, xts_root_dir, change_info_file, suite_type, device_type):
        self._xts_root_dir = xts_root_dir
        self._code_root_dir = os.path.realpath(os.path.join(xts_root_dir, "../../.."))
        self._change_info_file = change_info_file
        self._testsuite = None
        self.util_class_list = []
        self._device_type = "phone"
        if "_watch_" in device_type:
            self._device_type = "watch"
        elif "_pc_" in device_type:
            self._device_type = "pc"

        # 测试套件仓修改,只查看当前编译套件仓
        self.xts_manager = XTSManager(self._xts_root_dir, self._code_root_dir)
        # 部件仓修改
        self.com_manager = ComponentManager(self._xts_root_dir, self._code_root_dir)
        # 白名单计算
        self.wlist_manager = WhitelistManager(self._xts_root_dir, self._code_root_dir, suite_type)
        # interface 仓
        self.interface_manager = GetInterfaceData(self._xts_root_dir, self._code_root_dir, suite_type)

        self.util_list = [
            self.xts_manager,
            self.interface_manager,
            self.com_manager,
            self.wlist_manager,
        ]

    def _get_change_info(self):
        try:
            with open(self._change_info_file, 'r') as file:
                # 读取文件内容并解析为Python字典
                data = json.load(file)
        except Exception as e:
            print("warning: Because the change_info_file {} was not read, compile full testsuites".format(
                self._change_info_file))
            return 1

        # 存储新增/修改/删除的文件
        change_list = []
        for item in data:
            changeFileEntity = ChangeFileEntity(name=data[item]["name"], path=item)
            if "added" in data[item]["changed_file_list"]:
                changeFileEntity.addAddPaths(data[item]["changed_file_list"]["added"])
            if "modified" in data[item]["changed_file_list"]:
                changeFileEntity.addModifiedPaths(data[item]["changed_file_list"]["modified"])
            if "rename" in data[item]["changed_file_list"]:
                changeFileEntity.addRenamePathsto(data[item]["changed_file_list"]["rename"])
            if "deleted" in data[item]["changed_file_list"]:
                changeFileEntity.addDeletePaths(data[item]["changed_file_list"]["deleted"])
            if changeFileEntity.isEmpty():
                print("warning: Failed to read change_info_file, no changed files were found.")
                return 1
            change_list.append(changeFileEntity)
        self._change_list = change_list
        return 0

    def get_targets(self):
        ret = self._get_change_info()
        if ret == 1:
            # changeinfo读取失败-全量编译
            print("warning: The list of files to be modifed was not obtained, compile full testsuites.")
            xts_suite = os.path.basename(self._xts_root_dir)
            relative_path = os.path.relpath(self._xts_root_dir, HOME)
            ci_target = [f"{relative_path}:xts_{xts_suite}"]
        else:
            # 处理结果
            target_paths = set()
            targets = set()
            # 执行全部并获取结果
            for manager in self.util_list:
                retcode = manager.get_targets_from_change(self._change_list)
                if retcode == 1:
                    print("error: Execution of {} failed.".format(manager.__class__.__name__))
                manager.write_result(target_paths, targets)

            # 处理target_paths, 去除子目录\重复目录
            sum_path = PathUtils.removeSubandDumpPath(list(target_paths))

            for path in sum_path:
                targets.update(set(XTSTargetUtils.getTargetfromPath(self._xts_root_dir, path)))

            ci_target = XTSTargetUtils.del_uncompile_target(self._xts_root_dir, self._device_type, targets)

        return 0, ci_target


def generate(xts_root_dir, change_info_file, build_target, suite_type, device_type = "phone"):
    print("{}:{}: build_target={}".format(__file__, sys._getframe().f_lineno, build_target))
    if not os.path.exists(change_info_file):
        print("warning: {} not exist".format(change_info_file))
        return 0, build_target

    obj = AccurateTarget(xts_root_dir, change_info_file, suite_type.split(','), device_type)
    ret, accurate_targets = obj.get_targets()
    return ret, accurate_targets
