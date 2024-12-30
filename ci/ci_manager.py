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

import json
import os
import re
import fnmatch
import sys
from abc import ABC, abstractmethod
import xml.etree.ElementTree as ET

from Utils import ChangeFileEntity, XTSTargetUtils, PathUtils, MatchConfig, HOME


class Ci_Manager(ABC):

    @abstractmethod
    def get_targets_from_change(self, change_list: list):
        pass

    def write_result(self, target_path_set: set, target_set: set):
        print(f"{self.__class__.__name__} 增加 build_targets : {self._build_targets}")
        print(f"{self.__class__.__name__} 增加 build_paths : {self._build_paths}")

        xts_root_target = PathUtils.get_root_target(self._xts_root_dir)
        if xts_root_target in target_set:
            print("编译全量代码")
            return
        if xts_root_target in self._build_targets:
            target_set.add(xts_root_target)
            target_path_set.clear()
            print("编译全量代码")
            return

        target_set.update(set(self._build_targets))
        target_path_set.update(set(self._build_paths))


class ComponentManager(Ci_Manager):

    def __init__(self, xts_root_dir, code_root_dir):
        self._xts_root_dir = xts_root_dir
        self._code_root_dir = code_root_dir
        self._build_paths = []
        self._build_targets = []

    def get_targets_from_change(self, change_list):
        for changeFileEntity in change_list:
            if changeFileEntity.path in MatchConfig.get_escape_list():
                print(f"{changeFileEntity.name} 仓逃生,使用旧精准目标")
                continue
            if changeFileEntity.path not in MatchConfig.get_xts_path_list():
                ret = self.getTargetsPaths(changeFileEntity)
                if ret == 1:
                    return 1
        return 0

    def getTargetsPaths(self, change_file_entity: ChangeFileEntity):
        # 获取部件名
        try:
            bundle_name = self.getBundleName(change_file_entity.path)
        except Exception as e:
            print(f"读取{change_file_entity.name}部件仓bundle_name失败")
            return 1
        print(f"{self.__class__.__name__} 增加 bundle_name : {bundle_name}")
        # 部件名(partname)获取paths
        paths = XTSTargetUtils.getPathsByBundle([bundle_name], self._xts_root_dir)
        if paths:
            change_file_entity.set_already_match_utils(True)
            self._build_paths += paths
        return 0

    def getBundleName(self, path) -> str:
        with open(os.path.join(HOME, path, "bundle.json"), 'r') as file:
            data = json.load(file)
        bundle_name = data['component']['name']
        return bundle_name


class XTSManager(Ci_Manager):

    def __init__(self, xts_root_dir, code_root_dir):
        self._xts_root_dir = xts_root_dir
        self._code_root_dir = code_root_dir
        self._build_paths = []
        self._build_targets = []
        self._need_all = False

    def get_targets_from_change(self, change_list):
        for changeFileEntity in change_list:
            # tools仓修改，编译全量
            if changeFileEntity.path == "test/xts/tools":
                self._need_all = True
                changeFileEntity.set_already_match_utils(True)
            if changeFileEntity.path in MatchConfig.get_xts_path_list() and changeFileEntity.path in self._xts_root_dir:
                # 只有当前编译的xts仓修改参与计算
                ret = self.getTargetsPaths(changeFileEntity)
                if ret == 1:
                    print(f"{changeFileEntity.name}仓修改解析失败")
                    return 1
        if self._need_all:
            self._build_targets += MatchConfig.get_acts_All_template_ex_list()
        return 0

    # 获取path接口
    def getTargetsPaths(self, changeFileEntity: ChangeFileEntity):
        # 修改和新增
        for file in changeFileEntity.add + changeFileEntity.modified:
            # file转为绝对路径
            file = os.path.join(self._code_root_dir, file)
            # 筛选掉例外的目录
            if PathUtils.isMatchRules(file, MatchConfig.get_exception_path()):
                continue
            # 当前文件路径或父已存在,跳过
            if PathUtils.isTargetContains(self._build_paths, file):
                continue
            # 当前file对应BUILD.gn路径
            build_File = XTSTargetUtils.get_current_Build(self._xts_root_dir, file)
            # 计算到根目录或指定目录,直接编译全量
            if (os.path.dirname(build_File) == self._xts_root_dir or
                    PathUtils.isMatchRules(file, MatchConfig.get_all_com_path())):
                self._need_all = True
            else:
                self._build_paths.append(os.path.dirname(build_File))
        # 删除
        for file in changeFileEntity.delete:
            # file转为绝对路径
            file = os.path.join(self._code_root_dir, file)
            # 筛选掉例外的目录
            if PathUtils.isMatchRules(file, MatchConfig.get_exception_path()):
                continue
            # 当前文件路径或父已存在,跳过
            if PathUtils.isTargetContains(self._build_paths, file):
                continue
            # 当前存在的最外层路径
            exist_path = PathUtils.get_current_exist(self._xts_root_dir, os.path.dirname(file))
            build_File = XTSTargetUtils.get_current_Build(self._xts_root_dir, exist_path)
            # 计算到根目录或指定目录,直接编译全量
            if (os.path.dirname(build_File) == self._xts_root_dir or
                    PathUtils.isMatchRules(file, MatchConfig.get_all_com_path())):
                self._need_all = True
            else:
                self._build_paths.append(os.path.dirname(build_File))
        return 0


class WhitelistManager(Ci_Manager):

    def __init__(self, xts_root_dir, code_root_dir):
        self._xts_root_dir = xts_root_dir
        self._code_root_dir = code_root_dir
        self._build_paths = []
        self._build_targets = []
        self.full_impact_flag = "FULL_IMPACT"

    def get_targets_from_change(self, change_list):
        for changeFileEntity in change_list:
            if changeFileEntity.path in MatchConfig.get_escape_list():
                print(f"{changeFileEntity.name} 仓逃生,使用旧精准目标")
                continue
            if changeFileEntity.path not in MatchConfig.get_xts_path_list():
                ret = self.getTargetsandPaths(changeFileEntity)
                if ret == 1:
                    return 1
        return 0

    def getTargetsandPaths(self, change_file_entity):
        white_list = MatchConfig.get_white_list_repo()
        if change_file_entity.path not in white_list:
            return 0
        bundles = white_list[change_file_entity.path]["add_bundle"]
        targets = white_list[change_file_entity.path]["add_target"]
        if targets[0] == self.full_impact_flag:
            targets = MatchConfig.get_acts_All_template_ex_list()
        change_file_entity.set_already_match_utils(True)
        if bundles:
            paths = XTSTargetUtils.getPathsByBundle(bundles, self._xts_root_dir)
            if paths:
                self._build_paths += paths
        if targets:
            self._build_targets += targets
        return 0


class OldPreciseManager(Ci_Manager):

    def __init__(self, xts_root_dir, code_root_dir):
        self._xts_root_dir = xts_root_dir
        self._code_root_dir = code_root_dir
        self._build_paths = []
        self._build_targets = []
        self._precise_compilation_file = os.path.join(HOME, "test", "xts", "tools", "config",
                                                      "precise_compilation.json")
        self._init_old_precise_map()

    def _init_old_precise_map(self):
        self._old_precise_map = {}
        with open(self._precise_compilation_file, 'r') as file:
            data_list = json.load(file)
        for item in data_list:
            name = item['name']
            build_target = item['buildTarget']
            self._old_precise_map[name] = build_target

    def get_targets_from_change(self, change_list):
        for changeFileEntity in change_list:
            if changeFileEntity.path not in MatchConfig.get_xts_path_list() and \
                    not changeFileEntity.get_already_match_utils():
                ret = self.getTargets(changeFileEntity)
                if ret == 1:
                    pass
        return 0

    # 获取path接口
    def getTargets(self, changeFileEntity: ChangeFileEntity):
        # 获取开源仓名
        repo_name = self.search_repo_name(changeFileEntity.path)
        # precise_compilation.json配置文件中获取对应目标
        if repo_name in self._old_precise_map:
            self._build_targets.append(self._old_precise_map[repo_name])
        return 0

    def getTargetsbyRepoName(self, repo_name):
        with open(repo_name, 'r') as file:
            data_list = json.load(file)
        # 遍历列表中的每个字典
        for item in data_list:
            # 获取 name 和 buildTarget 的值
            name = item['name']
            build_target = item['buildTarget']
            # 打印结果
            print(f'Name: {name}, Build Target: {build_target}')

    def search_repo_name(self, repo_path, directory=os.path.join(HOME, ".repo", "manifests")):
        for root, dirs, files in os.walk(directory):
            for filename in fnmatch.filter(files, '*.xml'):
                file_path = os.path.join(root, filename)
                for child in ET.parse(file_path).getroot().findall('project'):
                    if 'path' in child.attrib and child.attrib['path'] == repo_path:
                        if 'gitee_name' in child.attrib:
                            return child.attrib['gitee_name']
                        if 'name' in child.attrib:
                            return child.attrib['name']
        return None

class GetInterfaceData(Ci_Manager):

    def __init__(self, xts_root_dir, code_root_dir):
        self._xts_root_dir = xts_root_dir
        self._code_root_dir = code_root_dir
        self._build_paths = []
        self._build_targets = []
        self.sum_change_list_path = []
        self.bundle_name_list = []
        self.match_path_list = []
        self.no_match_path_list = []

    # 截取路径
    def get_first_levels_path(self, path, num):
        normalized_path = os.path.normpath(path)
        parts = normalized_path.split(os.sep)
        return os.sep.join(parts[:num])

    def path_error(self, path_list):
        if len(path_list) > 0:
            raise Exception('Error:  interface 路径无法匹配 bundle_name, 请前往 test/xts/tools/config/ci_api_part_name.json 配置对应 path 与 bundle_name')

    def get_targets_from_change(self, change_list):
        
        # 分开处理三个 interface 仓
        self.get_c_bundle_name(change_list, MatchConfig.get_interface_json_c_data())
        self.get_driver_interface_bundle_name(change_list, MatchConfig.get_interface_json_driver_interface_data())
        self.get_js_bundle_name(change_list, MatchConfig.get_interface_json_js_data())
        # 筛选出未匹配路径
        for path in self.sum_change_list_path:
            if path not in self.match_path_list:
               self.no_match_path_list.append(path)

        self.bundle_name_list = list(set(self.bundle_name_list))
        self._build_targets = list(set(self._build_targets))
        print('INTERFACE_BUNDLE_NAME = ', self.bundle_name_list)
    
        # 抛出未匹配到 bundle_name 的路径
        try:
            self.path_error(self.no_match_path_list)
        except Exception as e:
            print(e)
            for path in self.no_match_path_list:
                print('Error: 无法匹配路径： ', path)
            sys.exit(1)

        # 根据bundle_name 查找对应 build_paths
        self._build_paths = XTSTargetUtils.getPathsByBundle(self.bundle_name_list, self._xts_root_dir)

    # 处理 interface/sdk-js 仓
    def get_js_bundle_name(self, change_list, js_json_data):
        # 获取 change_list interface/sdk-js 仓数据
        for store in change_list:
            if store.path != MatchConfig.get_interface_path_list()[0]:
                continue
            paths = store.add + store.modified + store.delete
            self.sum_change_list_path += paths
            targete_data = [data for data in js_json_data if data['path'] in paths]
            for _data in targete_data:
                store.set_already_match_utils(True)
                self.match_path_list.append(_data.get('path'))
                # 找出 bundle_name 加入 self.bundle_name_list
                self.bundle_name_list += _data.get('bundle_name')                
                # 针对 interface/sdk-js/kits、interface/sdk-js/arkts 在配置文件中查找 build_target
                self._build_targets += _data.get('build_targets')
            # 根据路径匹配
            for path in paths:
                for source_path in js_json_data:
                    if PathUtils.is_parent_path(source_path.get('path'), path):
                        self.match_path_list.append(path)
                        store.set_already_match_utils(True)
                        self.bundle_name_list += source_path.get('bundle_name')
                                    
    # 处理 driver_interface 仓
    def get_driver_interface_bundle_name(self, change_list, driver_interface_json_data):
        add_bundle_json_path = []
        for store in change_list:
            # 获取 change_list driver_interface 仓数据
            if store.path != MatchConfig.get_interface_path_list()[2]:
                continue
            for path in store.add + store.modified + store.delete:
                    self.sum_change_list_path.append(path)
                    for source_path in driver_interface_json_data:
                        # 从 drivers/interface 下第一级目录截取路径在配置文件中查找 bundle_name
                        if self.get_first_levels_path(path, 3) == source_path.get('path'):
                            store.set_already_match_utils(True)
                            self.bundle_name_list += source_path.get('bundle_name')
                            self.match_path_list.append(path)
            
            # 查看新增目录下是否有 bundle.json
            for path in store.add:                
                if os.path.basename(path) == 'bundle.json':
                    try:
                        # 发现 bundle.json 后进去文件寻找 bundle_name  
                        with open(os.path.abspath(__file__).split('/test/')[0] + '/' + path, 'r') as d:
                            for k, v in json.load(d).items():
                                if k == 'component':
                                    add_bundle_json_path.append([path, v['name']])
                    except FileNotFoundError:
                        print('Error:  drivers/interface仓新增目录且在目录下未发现 bundle.json， 无法匹配 bundle_name， 请添加 bundle.json 文件')
                        sys.exit(1)

            # 处理新增目录下其他文件
            for path in store.add: 
                for path_name in add_bundle_json_path:
                    if self.get_first_levels_path(path, 3) == self.get_first_levels_path(path_name[0], 3):
                        self.match_path_list.append(path)
                        store.set_already_match_utils(True)
                        self.bundle_name_list.append(path_name[1])
                
    # 处理 interface/sdk_c 仓
    def get_c_bundle_name(self, change_list, c_json_data):
        for store in change_list:
            # 获取 change_list interface/sdk_c 仓数据
            if store.path != MatchConfig.get_interface_path_list()[1]:
                continue
            for path in store.add + store.modified + store.delete:
                self.sum_change_list_path.append(path)
                for source_path in c_json_data:
                    # 根据目录匹配
                    if PathUtils.is_parent_path(source_path.get('path'), path):
                        self.match_path_list.append(path)
                        store.set_already_match_utils(True)
                        self.bundle_name_list += source_path.get('bundle_name')
                    # 根据文件匹配
                    elif path == source_path.get('path'):
                        self.match_path_list.append(path)
                        store.set_already_match_utils(True)
                        self.bundle_name_list += source_path.get('bundle_name')