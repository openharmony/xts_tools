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


HOME = os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.dirname(os.path.abspath(__file__))))))

MACTH_CONFIG = os.path.join(HOME,"test", "xts", "tools", "config", "ci_match_config.json")

class ChangeFileEntity:
    def __init__(self, name, path):
        self.name = name
        self.path = path
        self.add = []
        self.modified = []
        self.delete = []


    def addAddPaths (self, add_list):
        self.add += list(map(lambda x: os.path.join(self.path,x), add_list))
        self.add.sort()

    def addModifiedPaths (self, modified_list):
        self.modified += list(map(lambda x: os.path.join(self.path,x), modified_list))
        self.modified.sort()

    def addRenamePathsto (self, rename_list):
        for list in rename_list:
            self.add += [os.path.join(self.path,list[1])]
            self.delete += [os.path.join(self.path, list[0])]
            self.add.sort()
            self.delete.sort()

    def addDeletePaths (self, delete_list):
        self.delete += list(map(lambda x: os.path.join(self.path,x), delete_list))
        self.delete.sort()

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

    exception_path = {}
    all_com_path = {}
    skip_judge_build_path = {}
    temple_list = []
    acts_All_template_ex_list = []

    @classmethod
    def initialization(cls, config_path):
        if cls.exception_path == {} :
            print("MatchConfig 开始初始化")
            if not os.path.exists(config_path):
                print(f"{config_path} 不存在,读取配置文件异常")
            with open(config_path, 'r') as file:
                rules_data = json.load(file)
                cls.exception_path = rules_data['exception_path']
                cls.all_com_path = rules_data['all_com_path']
                cls.skip_judge_build_path = rules_data['skip_judge_build_path']
                cls.temple_list = rules_data['temple_list']
                cls.acts_All_template_ex_list = rules_data['acts_All_template_ex']
        print("MatchConfig 已完成初始化")

    @classmethod
    def get_exception_path(cls, config_path):
        if cls.exception_path == {}:
            cls.initialization(config_path)
        return cls.exception_path

    @classmethod
    def get_all_com_path(cls, config_path):
        if cls.all_com_path == {}:
            cls.initialization(config_path)
        return cls.all_com_path

    @classmethod
    def get_skip_judge_build_path(cls, config_path):
        if cls.skip_judge_build_path == {}:
            cls.initialization(config_path)
        return cls.skip_judge_build_path

    @classmethod
    def get_temple_list(cls, config_path):
        if cls.temple_list == []:
            cls.initialization(config_path)
        return cls.temple_list

    @classmethod
    def get_acts_All_template_ex_list(cls, config_path):
        if cls.acts_All_template_ex_list == []:
            cls.initialization(config_path)
        return cls.acts_All_template_ex_list

class ComponentUtils:
    
    def __init__(self, xts_root_dir, code_root_dir):
        self._xts_root_dir = xts_root_dir
        self._code_root_dir = code_root_dir
        self.target_paths = []
    
    def addTargstsPaths(changeFileEntity: ChangeFileEntity) -> list:
        # 获取部件名
        bundle_name = BundleTargetUtils.getBundleName(changeFileEntity.path)
        # 部件名(partname)获取paths
        paths = XTSTargetUtils.getPathsByBundle(bundle_name, xts_root_dir)
        self.target_paths += paths

        return 0

    
    def getBundleName(path) -> str:
        with open(os.path.join(HOME, path, "bundle.json"), 'r') as file:
            data = json.load(file)
        bundle_name = data['component']['name']
        return bundle_name


class XTSUtils:

    def __init__(self, xts_root_dir, code_root_dir):
        self._xts_root_dir = xts_root_dir
        self._code_root_dir = code_root_dir
        self._build_paths = []
        self._need_all = False


    # 获取path接口
    def getTargstsPaths(self, changeFileEntity: ChangeFileEntity):
        # 修改和新增
        for file in changeFileEntity.add + changeFileEntity.modified:
            # file转为绝对路径
            file = os.path.join(self._code_root_dir, file)
            # 筛选掉例外的目录
            if PathUtils.isMatchRules(file, MatchConfig.get_exception_path(MACTH_CONFIG)):
                continue
            # 当前文件路径或父已存在,跳过
            if PathUtils.isTargetContains(self._build_paths, file):
                continue
            # 当前file对应BUILD.gn路径
            build_File = XTSTargetUtils.get_current_Build(self._xts_root_dir, file)
            # 计算到根目录或指定目录,直接编译全量
            if (os.path.dirname(build_File) == self._xts_root_dir or 
                PathUtils.isMatchRules(file, MatchConfig.get_all_com_path(MACTH_CONFIG))):
                self._need_all = True
            else:
                self._build_paths.append(os.path.dirname(build_File))
        # 删除
        for file in changeFileEntity.delete:
            # file转为绝对路径
            file = os.path.join(self._code_root_dir, file)
            # 筛选掉例外的目录
            if PathUtils.isMatchRules(file, MatchConfig.get_exception_path(MACTH_CONFIG)):
                continue
            # 当前文件路径或父已存在,跳过
            if PathUtils.isTargetContains(self._build_paths, file):
                continue
            # 当前存在的最外层路径
            exist_path = PathUtils.get_current_exist(self._xts_root_dir, os.path.dirname(file))
            build_File = XTSTargetUtils.get_current_Build(self._xts_root_dir, exist_path)
            # 计算到根目录或指定目录,直接编译全量
            if (os.path.dirname(build_File) == self._xts_root_dir or 
                PathUtils.isMatchRules(file, MatchConfig.get_all_com_path(MACTH_CONFIG))):
                self._need_all = True
            else:
                self._build_paths.append(os.path.dirname(build_File))
        return 0

class XTSTargetUtils:

    @staticmethod
    def get_current_Build(xts_root_dir, current_dir):
        while PathUtils.is_parent_path(xts_root_dir, current_dir):
            # 当前目录是否包含需跳过的keywords
            if PathUtils.isMatchRules(current_dir, MatchConfig.get_skip_judge_build_path(MACTH_CONFIG)):
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
                return MatchConfig.get_acts_All_template_ex_list(MACTH_CONFIG)
            xts_suite = os.path.basename(xts_root_dir)
            relative_path = os.path.relpath(xts_root_dir, HOME)
            return [f"{relative_path}:xts_{xts_suite}"]
        build_file = XTSTargetUtils.get_current_Build(xts_root_dir, path)
        targets = XTSTargetUtils.getTargetFromBuild(build_file)
        if targets == None: 
            return XTSTargetUtils.getTargetfromPath(xts_root_dir, os.path.dirname(os.path.dirname(build_file)))
        return targets

    @staticmethod
    def getTargetFromBuild(build_File) -> list:
        pattern = re.compile(r'(\b(?:' + '|'.join(re.escape(word) for word in MatchConfig.get_temple_list(MACTH_CONFIG)) + r')\b)\("([^"]*)"\)')
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
        matching_files = {}
        # 遍历根目录及其子目录
        for root, dirs, files in os.walk(test_home):
            if "lite" in root:
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
            for m_path in minimal_paths_set:
                if PathUtils.is_parent_path(m_path, path):
                    break
            # 添加逻辑
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
            subdirs = [os.path.join(parent_path, d)for d in os.listdir(parent_path) if os.path.isdir(os.path.join(parent_path, d))]
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
    def get_current_exist(root_path,path) -> str:
        current_dir = path
        while PathUtils.is_parent_path(root_path,current_dir):
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