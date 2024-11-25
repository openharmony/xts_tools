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
from abc import ABC, abstractmethod

from Utils import ChangeFileEntity, XTSTargetUtils, PathUtils, MatchConfig, HOME


class Ci_Manager(ABC):

    @abstractmethod
    def get_targets_from_change(self, change_list: list[ChangeFileEntity]):
        pass

    @abstractmethod
    def write_result(self, target_path_set: set, target_set: set):
        pass


class ComponentManager(Ci_Manager):

    def __init__(self, xts_root_dir, code_root_dir):
        self._xts_root_dir = xts_root_dir
        self._code_root_dir = code_root_dir
        self._match_list = []
        self._build_paths = []

    def get_targets_from_change(self, change_list):
        for changeFileEntity in change_list:
            if changeFileEntity.path not in MatchConfig.get_xts_path_list():
                ret = self.getTargetsPaths(changeFileEntity)
                if ret == 1:
                    pass
        return 0

    def getTargetsPaths(self, change_file_entity: ChangeFileEntity):
        # 获取部件名
        bundle_name = self.getBundleName(change_file_entity.path)
        # 部件名(partname)获取paths
        paths = XTSTargetUtils.getPathsByBundle(bundle_name, self._xts_root_dir)
        if paths:
            change_file_entity.set_already_match_utils(True)
            self._build_paths += paths
        return 0

    def write_result(self, target_path_set: set, target_set: set):
        target_path_set.update(set(self._build_paths))
        print(f"{self.__class__.__name__} 增加 build_paths : {self._build_paths}")

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
        self._need_all = False

    def get_targets_from_change(self, change_list):
        targets = []
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
                    return 1, []
        if self._need_all:
            self._build_paths.append(self._xts_root_dir)
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

    def write_result(self, target_path_set: set, target_set: set):
        target_path_set.update(set(self._build_paths))
        print(f"{self.__class__.__name__} 增加 build_paths : {self._build_paths}")


class OldPreciseManager(Ci_Manager):

    def __init__(self, xts_root_dir, code_root_dir):
        self._xts_root_dir = xts_root_dir
        self._code_root_dir = code_root_dir
        self._match_list = []
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

    def search_repo_name(self, repo_path, directory=os.path.join(HOME, ".repo")):
        line_info = ""
        # Walk through the directory
        for root, dirs, files in os.walk(directory):
            for filename in fnmatch.filter(files, '*.xml'):
                file_path = os.path.join(root, filename)

                # Read the file line by line
                with open(file_path, 'r', encoding='utf-8') as file:
                    for line_number, line in enumerate(file, start=1):
                        if repo_path in line:
                            line_info = line.strip()
        if line_info is not "":
            # 使用正则表达式获取xml信息
            pattern = r'<(\w+)\s+([^>]*)/>'
            match = re.search(pattern, line_info)
            if match:
                tag_name = match.group(1)
                attributes_str = match.group(2)
                # 正则匹配单个属性
                attr_pattern = r'(\w+)\s*=\s*"([^"]*)"'
                attributes = dict(re.findall(attr_pattern, attributes_str))
                if "gitee_name" in attributes:
                    return attributes["gitee_name"]
                if "name" in attributes:
                    return attributes["name"]
        return None

    def write_result(self, target_path_set: set, target_set: set):
        target_set.update(set(self._build_targets))
        print(f"{self.__class__.__name__} 增加 build_targets : {self._build_targets}")
