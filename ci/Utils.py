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
import re
import json
from enum import Enum

HOME = os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.dirname(os.path.abspath(__file__))))))


class ChangeFileEntity:
    def __init__(self, name, path):
        self.name = name
        self.path = path
        self.add = []
        self.modified = []
        self.delete = []
        self._already_match_utils = False

    def addAddPaths(self, add_list):
        self.add += list(map(lambda x: os.path.join(self.path, x), add_list))
        self.add.sort()

    def addModifiedPaths(self, modified_list):
        self.modified += list(map(lambda x: os.path.join(self.path, x), modified_list))
        self.modified.sort()

    def addRenamePathsto(self, rename_list):
        for list in rename_list:
            self.add += [os.path.join(self.path, list[1])]
            self.delete += [os.path.join(self.path, list[0])]
            self.add.sort()
            self.delete.sort()

    def addDeletePaths(self, delete_list):
        self.delete += list(map(lambda x: os.path.join(self.path, x), delete_list))
        self.delete.sort()

    def isEmpty(self):
        if self.add:
            return False
        if self.modified:
            return False
        if self.delete:
            return False
        return True

    def get_already_match_utils(self):
        return self._already_match_utils

    def set_already_match_utils(self, already_match_utils):
        self._already_match_utils = already_match_utils

    def __str__(self):
        add_str = '\n  '.join(self.add) if self.add else 'None'
        modified_str = '\n  '.join(self.modified) if self.modified else 'None'
        delete_str = '\n  '.join(self.delete) if self.delete else 'None'

        return (f"ChangeFileEntity(\n"
                f"  name: {self.name},\n"
                f"  path: {self.path},\n"
                f"  add: [\n    {add_str}\n  ],\n"
                f"  modified: [\n    {modified_str}\n  ],\n"
                f"  delete: [\n    {delete_str}\n  ]\n"
                f")")


class MatchConfig:
    MACTH_CONFIG_PATH = os.path.join(HOME, "test", "xts", "tools", "config", "ci_match_config.json")
    exception_path = {}
    all_com_path = {}
    skip_judge_build_path = {}
    temple_list = []
    acts_All_template_ex_list = []
    xts_path_list = []

    WHITE_LIST_PATH = os.path.join(HOME, "test", "xts", "tools", "config", "ci_target_white_list.json")
    white_list_repo = {}
    
    # 逃生通道
    ESCAPE_PATH = os.path.join(HOME, "test", "xts", "tools", "config", "ci_escape.json")
    escape_list = []

    @classmethod
    def initialization(cls):
        if cls.exception_path == {}:
            print("MatchConfig 开始初始化")
            if not os.path.exists(cls.MACTH_CONFIG_PATH):
                print(f"{cls.MACTH_CONFIG_PATH} 不存在,读取配置文件异常")
            with open(cls.MACTH_CONFIG_PATH, 'r') as file:
                rules_data = json.load(file)
                cls.exception_path = rules_data['exception_path']
                cls.all_com_path = rules_data['all_com_path']
                cls.skip_judge_build_path = rules_data['skip_judge_build_path']
                cls.temple_list = rules_data['temple_list']
                cls.acts_All_template_ex_list = rules_data['acts_All_template_ex']
                cls.xts_path_list = rules_data['xts_path_list']
        print("MatchConfig 已完成初始化")

    @classmethod
    def get_exception_path(cls):
        if cls.exception_path == {}:
            cls.initialization()
        return cls.exception_path

    @classmethod
    def get_all_com_path(cls):
        if cls.all_com_path == {}:
            cls.initialization()
        return cls.all_com_path

    @classmethod
    def get_skip_judge_build_path(cls):
        if cls.skip_judge_build_path == {}:
            cls.initialization()
        return cls.skip_judge_build_path

    @classmethod
    def get_temple_list(cls):
        if cls.temple_list == []:
            cls.initialization()
        return cls.temple_list

    @classmethod
    def get_acts_All_template_ex_list(cls):
        if cls.acts_All_template_ex_list == []:
            cls.initialization()
        return cls.acts_All_template_ex_list

    @classmethod
    def get_xts_path_list(cls):
        if cls.xts_path_list == []:
            cls.initialization()
        return cls.xts_path_list

    @classmethod
    def initialization_white_list(cls):
        if cls.white_list_repo == {}:
            print("白名单开始初始化")
            if not os.path.exists(cls.WHITE_LIST_PATH):
                print(f"{cls.WHITE_LIST_PATH} 不存在,读取配置文件异常")
            with open(cls.WHITE_LIST_PATH, 'r') as file:
                white_file = json.load(file)
                white_repos = white_file["repo_list"]
                for white_repo in white_repos:
                    cls.white_list_repo[white_repo["path"]] = white_repo
        print("白名单已完成初始化")

    @classmethod
    def get_white_list_repo(cls):
        if cls.white_list_repo == {}:
            cls.initialization_white_list()
        return cls.white_list_repo
    
    @classmethod
    def initialization_escape_list(cls):
        if cls.escape_list == []:
            print("逃生仓列表 开始初始化")
            if not os.path.exists(cls.ESCAPE_PATH):
                print(f"{cls.ESCAPE_PATH} 不存在,无逃生仓")
                return
            with open(cls.ESCAPE_PATH, 'r') as file:
                escape_map = json.load(file)
                cls.escape_list = escape_map.keys()
        print("逃生仓列表 已完成初始化")
    
    @classmethod
    def get_escape_list(cls):
        if cls.escape_list == []:
            cls.initialization_escape_list()
        return cls.escape_list


class XTSTargetUtils:

    @staticmethod
    def get_current_Build(xts_root_dir, current_dir):
        while PathUtils.is_parent_path(xts_root_dir, current_dir):
            # 当前目录是否包含需跳过的keywords
            if PathUtils.isMatchRules(current_dir, MatchConfig.get_skip_judge_build_path()):
                current_dir = os.path.dirname(current_dir)
                continue
            # 检查当前目录下是否存在BUILD.gn文件
            build_gn_path = os.path.join(current_dir, 'BUILD.gn')
            if os.path.exists(build_gn_path):
                return build_gn_path
                # 如果没有找到，向上一层目录移动
            current_dir = os.path.dirname(current_dir)
        # xts仓最外层均有BUILD.gn文件
        return current_dir

    # 路径获取target
    @staticmethod
    def getTargetfromPath(xts_root_dir, path) -> list:
        if path == xts_root_dir:
            if path.endswith("acts"):
                return MatchConfig.get_acts_All_template_ex_list()
            root_target = PathUtils.get_root_target(xts_root_dir)
            return [root_target]
        build_files = XTSTargetUtils.getBuildList(xts_root_dir, path)
        targets = []
        for file in build_files:
            targets += XTSTargetUtils.getTargetFromBuild(file)
        return targets

    @staticmethod
    def getBuildList(xts_root_dir, current_dir):
        if PathUtils.isMatchRules(current_dir, MatchConfig.get_skip_judge_build_path()):
            return
        # 检查当前目录下是否存在BUILD.gn文件
        build_gn_path = os.path.join(current_dir, 'BUILD.gn')
        if os.path.exists(build_gn_path):
            return [build_gn_path]
        # 如果没有找到，获取子目录全部Build.gn目录
        dirs = []
        print(f"aaa{current_dir}")
        items = os.listdir(current_dir)
        for item in items:
            # 构建完整的路径
            full_path = os.path.join(current_dir, item)
            # 检查这个路径是否是目录
            if os.path.isdir(full_path):
                dirs += XTSTargetUtils.getBuildList(xts_root_dir, full_path)
        return dirs

    @staticmethod
    def getTargetFromBuild(build_File) -> list:
        pattern = re.compile(r'(\b(?:' + '|'.join(
            re.escape(word) for word in MatchConfig.get_temple_list()) + r')\b)\("([^"]*)"\)')
        with open(build_File, 'r', encoding='utf-8') as file:
            content = file.read()
        matches = pattern.findall(content)
        targets = [match[1] for match in matches]
        relative_path = os.path.relpath(os.path.dirname(build_File), HOME)
        if len(targets) > 1:
            deps = XTSTargetUtils.getDepsinBuild(content)
            # 编译本gn中未被依赖的目标
            targets = [item for item in targets if item not in deps]
        return [f"{relative_path}:{item}" for item in targets]

    @staticmethod
    def getDepsinBuild(build):
        # 定义正则表达式模式来匹配deps数组
        pattern = re.compile(r'deps\s*=\s*\[\s*(?P<deps>.*?)\s*\]', re.DOTALL)
        # pattern = r'\s*deps\s*=\s*<deps>'
        # 搜索文本中的匹配项
        matches = pattern.findall(build)
        all_deps = []

        for match in matches:
            # 分割字符串并去除双引号和空格
            deps_list = [dep.strip('\n').strip().strip('"').lstrip(':') for dep in match.split(',')]
            all_deps.extend(deps_list)

        return all_deps

    @staticmethod
    def getPathsByBundle(bundle, test_home) -> list:
        matching_files = []
        # 遍历根目录及其子目录
        for root, dirs, files in os.walk(test_home):
            if "lite" in root:
                continue
            if PathUtils.isMatchRules(root, MatchConfig.get_exception_path()):
                continue
            for file in files:
                if file == 'BUILD.gn':
                    file_path = os.path.join(root, file)
                    # 读取文件内容
                    with open(file_path, 'r', encoding='utf-8') as f:
                        content = f.read()
                        # 检查是否包含bundle
                        part_name = f'part_name = "{bundle}"'
                        if part_name in content:
                            matching_files.append(root)
        return matching_files


class PathUtils:

    # 路径列表简化
    @staticmethod
    def removeSubandDumpPath(path_list: list) -> list:
        # 排序，确保父目录在子目录之前,减少运算
        path_list.sort()
        # 存储最小集
        minimal_paths_set = set()
        # 记录已存在的父目录的全部未添加编译的子目录
        parent_dirs = {}

        for path in path_list:
            # 检查当前路径或其父路径是否已经在最小集中
            isinclude = False
            for m_path in minimal_paths_set:
                if PathUtils.is_parent_path(m_path, path):
                    isinclude = True
                    break
            # 添加逻辑
            if not isinclude:
                PathUtils.addPathClean(path, minimal_paths_set, parent_dirs)

        return list(minimal_paths_set)

    @staticmethod
    def addPathClean(path, minimal_paths_set, parent_dirs):
        # 检查当前路径的首层父目录是否在最小集中
        parent_path = os.path.dirname(path)
        if parent_path in parent_dirs:
            # 在-原list修改
            subdirs = parent_dirs[parent_path]
        else:
            # 不在-记录父目录及本目录
            subdirs = [os.path.join(parent_path, d) for d in os.listdir(parent_path) if
                       os.path.isdir(os.path.join(parent_path, d))]
            parent_dirs[parent_path] = subdirs
        subdirs.remove(path)
        minimal_paths_set.add(path)
        # 检查是否替换为添加其直接父目录
        if len(subdirs) == 0:
            del parent_dirs[parent_path]
            # minimal_paths_sets删除parent_path子目录
            for d in os.listdir(parent_path):
                p = os.path.join(parent_path, d)
                if os.path.isdir(p) and p in minimal_paths_set:
                    minimal_paths_set.remove(os.path.join(parent_path, d))
            PathUtils.addPathClean(parent_path, minimal_paths_set, parent_dirs)

    @staticmethod
    def get_current_exist(root_path, path) -> str:
        current_dir = path
        while PathUtils.is_parent_path(root_path, current_dir):
            if os.path.exists(current_dir):
                return current_dir
            current_dir = os.path.dirname(current_dir)
        # 根目录必然存在
        return root_path

    @staticmethod
    def is_parent_path(parent_path, child_path):
        # 获取公共路径
        common_path = os.path.commonpath([parent_path, child_path])
        return common_path == parent_path

    @staticmethod
    def get_root_target(xts_root_dir):
        xts_suite = os.path.basename(xts_root_dir)
        # relative_path = os.path.relpath(xts_root_dir, HOME)
        target = f"xts_{xts_suite}"
        return target

    @staticmethod
    def isMatchRules(file, rules):
        string_rules = rules["string_rules"]
        re_rules = rules["re_rules"]
        for rule in string_rules:
            if rule in file:
                return True
        for rule in re_rules:
            if re.compile(rule).search(file):
                return True
        return False

    @staticmethod
    def isTargetContains(targetFiles, file) -> bool:
        for f in targetFiles:
            if PathUtils.is_parent_path(f, file):
                return True
        return False
