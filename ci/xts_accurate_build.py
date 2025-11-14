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

import io
import os
import abc
import json
import shutil
import subprocess
from typing import List
from Utils import XTSLogger


class XtsAccurateBuild(abc.ABC):
    def __init__(self, code_base: str, args: List[str], root_target: str):
        self._code_base = code_base
        self._args = args
        self._logger = XTSLogger()
        self._out_path = os.path.join(code_base, "out")
        self._gn_path = os.path.join(code_base, "prebuilts/build-tools/linux-x86/bin/gn")
        self._root_target = root_target
        self._build_targets = set()
        self._env = os.environ.copy()

    @property
    def code_base(self):
        return self._code_base

    @property
    def args(self):
        return self._args

    @args.setter
    def args(self, value: List[str]):
        self._args = value

    @property
    def logger(self):
        return self._logger

    @property
    def out_path(self):
        return self._out_path

    @out_path.setter
    def out_path(self, value: str):
        self._out_path = value

    @property
    def gn_path(self):
        return self._gn_path

    @property
    def root_target(self):
        return self._root_target

    @root_target.setter
    def root_target(self, value: str):
        self._root_target = value

    @property
    def build_targets(self):
        return self._build_targets

    @property
    def env(self):
        return self._env

    @abc.abstractmethod
    def _process_args(self) -> None:
        """
        This would be called before self._calc_final_targets.
            In here, you are advised to:
            - justify self._args;
            - setup self._env, self._build_targets, self._gn_path, etc.
        """
        pass

    def _generate(self):
        args = [self._args[0], "--build-only-gn"]
        args.extend(self._args[1:])
        self._logger.info(">>> Compile command: {}".format(str.join(' ', args)))
        return subprocess.run(args).returncode

    @abc.abstractmethod
    def _calc_immuned_targets(self) -> set[str]:
        """
        Returns:
            A set of targets to keep. No? just provide an empty set.
        """
        pass

    @abc.abstractmethod
    def _pick_target(self, target: str) -> bool:
        """
        Tell if the target should be picked.
        """
        pass

    def _calc_final_targets(self):
        """
        Retrive xts accurate build targes from GN dependency tree.
        """
        _targets, final_tgts = self._build_targets.copy(), set()
        final_tgts = self._calc_immuned_targets()
        _targets.difference_update(final_tgts)

        if len(_targets) == 0:
            self._logger.info(f"Keep all targets, build targets: {list(final_tgts)}")
            return

        ninja_ctx = [
            os.path.join(self._out_path, "build.ninja"),
            os.path.join(self._out_path, "build.ninja.d"),
            os.path.join(self._out_path, "build.ninja.stamp")
        ]

        try:
            # backup ninja context.
            for ctx in ninja_ctx:
                shutil.copy2(ctx, f"{ctx}.bkp")

            cmd_list = [
                self._gn_path,
                "desc",
                self._out_path,
                self._root_target,
                "deps",
                "--tree"
            ]
            self._logger.debug(json.dumps(self._env, indent = 2, sort_keys = False))
            self._logger.info(">>> Execute command: {}".format(str.join(' ', cmd_list)))

            proc = subprocess.Popen(
                cmd_list,
                stdout = subprocess.PIPE,
                stderr = subprocess.PIPE,
                env = self._env
            )

            self._logger.info("Start picking xts build targets from dep tree, "
                              "this would take a short while...")

            with io.TextIOWrapper(proc.stdout, encoding = "utf-8") as stream:
                for ln in stream:
                    ln = ln.strip()
                    if self._pick_target(ln):
                        ln = ln[2:]
                        if ln in _targets:
                            final_tgts.add(ln)
                            _targets.remove(ln)
                            self._logger.logging_phase = "TARGET PICK"
                            self._logger.info(f"Pick target: '{ln}'")
                    else:
                        self._logger.logging_phase = "GN DESC"
                        self._logger.info(ln)

            rc = proc.wait()
            if rc != 0:
                err_msg = proc.stderr.read().decode("utf-8")
                self._logger.error(f"command '{str.join(' ', cmd_list)}' exited with code: {rc}")
                self._logger.error(f"Error Message: {err_msg}")
                raise Exception("GN command returned unexpectedly.")
        except Exception as e:
            self._logger.error(e)
            self._logger.error("Something went wrong "
                        "while calculating xts final build targets, "
                        "fall back to the original build targets")
            final_tgts = None
        finally:
            self._logger.logging_phase = None
            # restore ninja context.
            for ctx in ninja_ctx:
                os.remove(ctx)
                os.rename(f"{ctx}.bkp", ctx)
                os.utime(ctx)

            if final_tgts is not None:
                self._build_targets = final_tgts
                self._logger.info(f"Pick done, build targets: {list(self._build_targets)}")
                self._logger.info(f"Discarded targets: {list(_targets)}")

    @abc.abstractmethod
    def _ninja(self) -> int:
        pass

    def build(self):
        rc = self._generate()
        if rc != 0:
            return rc
        self._process_args()
        self._calc_final_targets()
        rc = self._ninja()
        return rc


class ActsBuildUtil():
    @staticmethod
    def calc_immuned_targets(ab: XtsAccurateBuild) -> set[str]:
        # reserve virtual or non-acts targets.
        immuned_set = {
            "test/xts/acts:xts_acts",
            "test/xts/dcts:xts_dcts",
            "test/xts/hats:xts_hats",
            "test/xts/hits:xts_hits",
            "test/xts/tools:xts_tools"
        }
        keep_tgts = set()
        for tgt in ab._build_targets:
            if tgt in immuned_set or not tgt.startswith("test/xts/acts"):
                keep_tgts.add(tgt)
                ab.logger.info(f"Keep target: '{tgt}'")
        return keep_tgts

    @staticmethod
    def pick_target(target: str) -> bool:
        return target.startswith("//test/xts/acts")

    @staticmethod
    def process_targets(ab: XtsAccurateBuild) -> List[str]:
        _args, shift = [], False
        for idx, arg in enumerate(ab.args):
            if shift:
                shift = False
                continue
            if arg == "--build-target":
                if ab.args[idx + 1] in ab.build_targets:
                    _args.extend([arg, ab.args[idx + 1]])
                shift = True
                continue
            else:
                _args.append(arg)
        return _args

    @staticmethod
    def exec_ninja(ab: XtsAccurateBuild):
        args = ActsBuildUtil.process_targets(ab)
        args = [args[0], "--fast-rebuild"] + args[1:]
        ab.logger.info(">>> Compile command: {}".format(str.join(' ', args)))
        return subprocess.run(args).returncode


class OpenSourceBuild(XtsAccurateBuild):
    def __init__(self, code_base: str, args: List[str]):
        super().__init__(code_base, args, "//test/xts/acts:xts_acts")

    def _process_args(self):
        prod_name = ""
        rtrim_idx, shift = -1, False

        for idx, arg in enumerate(self.args):
            if shift:
                shift = False
                continue
            if arg == "--build-target":
                self.build_targets.add(self.args[idx + 1])
                shift = True
            elif arg == "--product-name":
                prod_name = self.args[idx + 1]
                shift = True
            elif arg == "--prebuilts-sdk-gn-args":
                rtrim_idx = idx
                break

        self.out_path = os.path.join(self.out_path, prod_name)
        if rtrim_idx != -1:
            self.args = self.args[0:rtrim_idx]

    def _calc_immuned_targets(self) -> set[str]:
        return ActsBuildUtil.calc_immuned_targets(self)

    def _pick_target(self, target: str) -> bool:
        return ActsBuildUtil.pick_target(target)

    def _ninja(self):
        return ActsBuildUtil.exec_ninja(self)


class ProprietaryBuild(XtsAccurateBuild):
    def __init__(self, code_base, args):
        super().__init__(code_base, args, "//test/xts/acts:xts_acts")

    def _process_args(self):
        class Operator:
            NOOP = 0
            LOAD = 1
            SHIFT = 2
            SHIFT_LOAD = 3

        abi_type, device_type = "", ""
        args, op = [], Operator.LOAD

        for idx, arg in enumerate(self.args):
            if op == Operator.SHIFT or \
                op == Operator.SHIFT_LOAD:
                op = Operator.LOAD
                continue

            if arg == "--build-target":
                self.build_targets.add(self.args[idx + 1])
                op = Operator.SHIFT_LOAD
            elif arg == "--abi-type":
                abi_type = self.args[idx + 1]
                op = Operator.SHIFT_LOAD
            elif arg == "--device-type":
                device_type = self.args[idx + 1]
                op = Operator.SHIFT_LOAD
            elif arg == "--export-para":
                env_arg = self.args[idx + 1].split(':')
                self.env[env_arg[0]] = env_arg[1]
                op = Operator.SHIFT_LOAD
            elif arg == "--build-ohos-sdk":
                op = Operator.NOOP
            elif arg == "--gn-args" and self.args[idx + 1] == "sdk_build_arkts=true":
                op = Operator.SHIFT

            if op == Operator.LOAD:
                args.append(arg)
            elif op == Operator.SHIFT_LOAD:
                args.extend([arg, self.args[idx + 1]])

        self.out_path = os.path.join(self.out_path, abi_type, device_type)
        self.args = args

    def _calc_immuned_targets(self) -> set[str]:
        return ActsBuildUtil.calc_immuned_targets(self)

    def _pick_target(self, target: str) -> bool:
        return ActsBuildUtil.pick_target(target)

    def _ninja(self):
        return ActsBuildUtil.exec_ninja(self)


def xts_accurate_build(code_base: str, args: List[str], proprietary_build = False):
    """
    Execute xts accurate build.

    Args:
        code_base: abspath of ohos source code.
        args: _CMD to run, as in subprocess.run(_CMD).
        proprietary_build: build in proprietary mode.

    Returns:
        0 on success, otherwise on failure.
    """
    if proprietary_build:
        pb = ProprietaryBuild(code_base, args)
        return pb.build()
    else:
        ob = OpenSourceBuild(code_base, args)
        return ob.build()
