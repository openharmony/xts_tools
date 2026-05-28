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
import sys
from abc import ABC, abstractmethod

from Utils import ChangeFileEntity, XTSTargetUtils, PathUtils, MatchConfig, HOME


class Ci_Manager(ABC):

    @abstractmethod
    def get_targets_from_change(self, change_list: list):
        pass

    def write_result(self, target_path_set: set, target_set: set):
        print(f"{self.__class__.__name__} append build_targets : {self._build_targets}")
        print(f"{self.__class__.__name__} append build_paths : {self._build_paths}")

        xts_root_target = PathUtils.get_root_target(self._xts_root_dir)
        if xts_root_target in target_set:
            print("compile full testsuites")
            return
        if xts_root_target in self._build_targets:
            target_set.add(xts_root_target)
            target_path_set.clear()
            print("compile full testsuites")
            return

        target_set.update(set(self._build_targets))
        target_path_set.update(set(self._build_paths))


class ComponentManager(Ci_Manager):

    def __init__(self, xts_root_dir, code_root_dir):
        self._xts_root_dir = xts_root_dir
        self._code_root_dir = code_root_dir
        self._build_paths = []
        self._build_targets = []
        self._ieyes_xts_cfg_file = os.path.join(self._code_root_dir, 'ieyes_xts.json')
        self._ieyes_xts_map = {}

    def get_targets_from_change(self, change_list):
        if not os.path.exists(self._ieyes_xts_cfg_file):
            return 0
        with open(self._ieyes_xts_cfg_file, 'r') as f:
            self._ieyes_xts_map = json.load(f)
        for changeFileEntity in change_list:
            if changeFileEntity.path not in MatchConfig.get_xts_path_list():
                ret = self.getTargetsPaths(changeFileEntity)
                if ret == 1:
                    continue
        return 0

    def getTargetsPaths(self, change_file_entity: ChangeFileEntity):
        # 获取部件名
        try:
            bundle_name = self.getBundleName(change_file_entity.path)
        except Exception as e:
            print("warning: Get bundle_name failed from cmoponent repository {}".format(change_file_entity.name))
            return 1
        print(f"{self.__class__.__name__} append bundle_name : {bundle_name}")
        # 部件名(partname)获取paths
        paths = XTSTargetUtils.getPathsByBundle([bundle_name], self._xts_root_dir, self._ieyes_xts_map)
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
            if changeFileEntity.path in self._xts_root_dir:
                # 只有当前编译的xts仓修改参与计算
                ret = self.getTargetsPaths(changeFileEntity)
                if ret == 1:
                    print("warning: failed to parse modification of repository {}".format(self.__class__.__name__))
                    return 1
        if self._need_all:
            self._build_targets += PathUtils.get_all_build_target(self._xts_root_dir)
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
    def __init__(self, xts_root_dir, code_root_dir, suite_type):
        self._xts_root_dir = xts_root_dir
        self._code_root_dir = code_root_dir
        self._build_paths = []
        self._build_targets = []
        self.full_impact_flag = "FULL_IMPACT"
        self.full_impact_flag_totally = "FULL_IMPACT_TOTALLY"
        self._suite_type = suite_type
        self._suite_name = XTSTargetUtils.get_suite_name(xts_root_dir)

    def get_targets_from_change(self, change_list):
        for chg_file_entity in change_list:
            if chg_file_entity.path not in MatchConfig.get_xts_path_list():
                ret = self.get_targets_and_paths(chg_file_entity)
                if ret == 1:
                    return 1
        return 0

    def get_targets_and_paths(self, chg_file_entity):
        white_list = MatchConfig.get_white_list_repo()
        if chg_file_entity.path not in white_list:
            return 0
        chg_file_entity.set_already_match_utils(True)
        whitelist_item = white_list.get(chg_file_entity.path)
        subdirs = whitelist_item.get("subdirectory")
        if subdirs:
            self.get_targets_and_paths_from_subdirs(chg_file_entity, subdirs)
        else:
            self.get_targets_and_paths_by_cfg(
                whitelist_item.get("suite_type"), whitelist_item.get("add_bundle"), whitelist_item.get("add_target"))
        return 0

    def get_targets_and_paths_from_subdirs(self, chg_file_entity, subdirs):
        chg_files = chg_file_entity.add + chg_file_entity.modified + chg_file_entity.delete
        for dir in subdirs:
            matched = False
            for file in chg_files:
                if file.startswith(dir):
                    matched = True
                    break
            if not matched:
                continue

            config = subdirs.get(dir)
            self.get_targets_and_paths_by_cfg(config.get("suite_type"), config.get("add_bundle"), config.get("add_target"))

    def _check_conflict_targets(self, suite_targets):
        targets = set(suite_targets)
        x_flags = {self.full_impact_flag, self.full_impact_flag_totally}
        if set(x_flags) & targets and len(targets) != 1:
            print(f'[ERROR] These flags are exclusive: {x_flags}, '
                  f'when set, do make sure the flag is the only target in the configuration.')
            sys.exit(1)

    def get_targets_and_paths_by_cfg(self, suite_type, add_bundle, add_target):
        if suite_type and not list(set(suite_type) & set(self._suite_type)):
            return
        targets = []
        suite_targets = add_target.get(self._suite_name) if add_target else None
        if suite_targets:
            self._check_conflict_targets(suite_targets)
            if self.full_impact_flag in suite_targets:
                targets = PathUtils.get_all_build_target(self._xts_root_dir, 0)
            elif self.full_impact_flag_totally in suite_targets:
                targets = PathUtils.get_all_build_target(self._xts_root_dir, 1)
            else:
                targets += XTSTargetUtils.filter_suite_targets(self._suite_name, suite_targets)
        if add_bundle:
            paths = XTSTargetUtils.getPathsByBundle(add_bundle, self._xts_root_dir)
            if paths:
                self._build_paths += paths
        if targets:
            self._build_targets += targets


class GetInterfaceData(Ci_Manager):
    def __init__(self, xts_root_dir, code_root_dir, suite_type):
        self._xts_root_dir = xts_root_dir
        self._code_root_dir = code_root_dir
        self._build_paths = []
        self._build_targets = []
        self.sum_change_list_path = []
        self.bundle_name_list = []
        self.match_path_list = []
        self.no_match_path_list = []
        self._suite_type = suite_type
        self._suite_name = XTSTargetUtils.get_suite_name(xts_root_dir)

    # 截取路径
    def get_first_levels_path(self, path, num):
        normalized_path = os.path.normpath(path)
        parts = normalized_path.split(os.sep)
        return os.sep.join(parts[:num])

    def path_error(self, path_list):
        if len(path_list) > 0:
            print('[ERROR] Failed to obtain interface file ownership, Please config in test/xts/tools/config/ci_api_part_name.json')
            for path in path_list:
                print("[ERROR] Cannot match path {}".format(path))
            sys.exit(1)

    def get_targets_from_change(self, change_list):
        for store in change_list:
            if store.path in MatchConfig.get_interface_path_list() and "hap_static" in self._suite_type:
                self._build_targets = ["xts_{}".format(os.path.basename(self._xts_root_dir))]
                return

        # 处理三个 interface 仓
        self.append_bundles_and_targets(change_list,
                                        MatchConfig.get_interface_path_list()[0],
                                        MatchConfig.get_interface_json_js_data())
        self.append_bundles_and_targets(change_list,
                                        MatchConfig.get_interface_path_list()[1],
                                        MatchConfig.get_interface_json_c_data())
        self.append_bundles_and_targets(change_list,
                                        MatchConfig.get_interface_path_list()[2],
                                        MatchConfig.get_interface_json_driver_interface_data())
        self.append_extra_from_driver_interface(change_list, MatchConfig.get_interface_path_list()[2])

        # 筛选出未匹配路径
        for path in self.sum_change_list_path:
            if path not in self.match_path_list:
                self.no_match_path_list.append(path)

        self.bundle_name_list = list(set(self.bundle_name_list))
        self._build_targets = list(set(self._build_targets))
        print('INTERFACE_BUNDLE_NAME = ', self.bundle_name_list)

        # 抛出未匹配到 bundle_name 的路径
        self.path_error(self.no_match_path_list)

        # 根据bundle_name 查找对应 build_paths
        self._build_paths = XTSTargetUtils.getPathsByBundle(self.bundle_name_list, self._xts_root_dir)

    def _check_config_integrity(self, path, bundle_name, build_targets):
        if not bundle_name and not build_targets:
            print(f'[WARN] Interface file {path} has neither bundle_name nor '
                  f'build_targets configured for the current suite ({self._suite_name})')

    # 接口仓统一处理逻辑
    def append_bundles_and_targets(self, change_list, interface_path, interface_configs):
        for chg in change_list:
            if chg.path != interface_path:
                continue
            for path in chg.add + chg.modified + chg.delete:
                self.sum_change_list_path.append(path)
                for conf in interface_configs:
                    # 路径 && 目录均不匹配
                    if path != conf.get('path') and not \
                        PathUtils.is_parent_path(conf.get('path'), path):
                        continue

                    self.match_path_list.append(path)
                    chg.set_already_match_utils(True)

                    bundle_names = conf.get('bundle_name', [])
                    build_targets = XTSTargetUtils.filter_suite_targets(self._suite_name,
                                                                        conf.get('build_targets', {}).get(self._suite_name, []))
                    self._check_config_integrity(path, bundle_names, build_targets)

                    self.bundle_name_list += bundle_names
                    self._build_targets += build_targets

    # driver_interface 仓额外处理逻辑
    def append_extra_from_driver_interface(self, change_list, interface_path):
        add_bundle_json_path = []
        for chg in change_list:
            # 获取 change_list driver_interface 仓数据
            if chg.path != interface_path:
                continue

            # 查看新增目录下是否有 bundle.json
            for path in chg.add:
                if os.path.basename(path) == 'bundle.json':
                    try:
                        # 发现 bundle.json 后进去文件寻找 bundle_name
                        with open(os.path.abspath(__file__).split('/test/')[0] + '/' + path, 'r') as d:
                            for k, v in json.load(d).items():
                                if k == 'component':
                                    add_bundle_json_path.append([path, v['name']])
                    except FileNotFoundError:
                        print("error: The repository drivers/interface has a new directory and no bundle.json is found under the directory, Please add bundle.json")
                        sys.exit(1)

            # 处理新增目录下其他文件
            for path in chg.add:
                if path in self.match_path_list:
                    continue
                for path_name in add_bundle_json_path:
                    if self.get_first_levels_path(path, 3) == self.get_first_levels_path(path_name[0], 3):
                        self.match_path_list.append(path)
                        chg.set_already_match_utils(True)
                        self.bundle_name_list.append(path_name[1])
