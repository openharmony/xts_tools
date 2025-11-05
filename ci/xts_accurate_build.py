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
import shutil, json
import subprocess
from typing import List, Dict
from Utils import XTSLogger

def calc_final_targets(out_path: str, gn_path: str, targets: List[str], env: Dict | None = None):
    """
    Retrive xts accurate build targes from GN dependency tree.

    Args:
        out_path: The output dir of GN gen (abspath required).
        gn_path: The GN executable path (abspath required).
        targets: Original targets for xts accurate build.
        env: Environment dict.

    Returns:
        New xts accurate build target list; None on error.
    """
    cmd_list = [
        gn_path,
        "desc",
        out_path,
        "//test/xts/acts:xts_acts",
        "deps",
        "--tree"
    ]

    logger = XTSLogger()
    # keep non-acts targets
    _targets, final_tgts = set(targets), set()
    for tgt in _targets:
        if not tgt.startswith("test/xts/acts"):
            final_tgts.add(tgt)
            logger.info(f"Keep non-acts target: '{tgt}'")
    _targets.difference_update(final_tgts)

    try:
        proc = subprocess.Popen(
            cmd_list,
            stdout = subprocess.PIPE,
            stderr = subprocess.PIPE,
            env = env
        )

        logger.info("Start picking xts build targets from dep tree, "
                    "this would take a short while...")

        with io.TextIOWrapper(proc.stdout, encoding = "utf-8") as stream:
            for ln in stream:
                ln = ln.strip()
                if ln.startswith("//test/xts/acts"):
                    ln = ln[2:]
                    if ln in _targets:
                        final_tgts.add(ln)
                        _targets.remove(ln)
                        logger.logging_phase = "TARGET PICK"
                        logger.info(f"Pick target: '{ln}'")
                else:
                    logger.logging_phase = "GN DESC"
                    logger.info(ln)

        rc = proc.wait()
        if rc != 0:
            err_msg = proc.stderr.read().decode("utf-8")
            logger.error(f"command '{str.join(' ', cmd_list)}' exited with code: {rc}")
            logger.error(f"Error Message: {err_msg}")
            raise Exception("GN command returned unexpectedly.")
    except Exception as e:
        logger.error(e)
        logger.error("Something went wrong "
                     "while calculating xts final build targets, "
                     "fall back to the original build targets")
        final_tgts = None
    finally:
        logger.logging_phase = None
        if final_tgts is not None:
            final_tgts = list(final_tgts)
            logger.info(f"Pick done, build targets: {final_tgts}")
            logger.info(f"Discarded targets: {list(_targets)}")
        return final_tgts


def parse_args(args: List[str]):
    focus_set = {
        "--abi-type", "--device-type", 
        "--product-name", "--build-target", "--export-para"
    }
    ret, _args, shift = {"targets": [], "env": {}}, [], False
    for idx, arg in enumerate(args):
        if shift:
            shift = False
            continue
        if arg in focus_set:
            shift = True
            if arg == "--build-target":
                ret.get("targets").append(args[idx + 1])
                continue
            elif arg == "--export-para":
                env_arg = args[idx + 1].split(':')
                ret.get("env")[env_arg[0]] = env_arg[1]
            else:
                ret[arg[2:]] = args[idx + 1]
            _args.extend([arg, args[idx + 1]])
            continue
        _args.append(arg)
    return ret, _args


def xts_accurate_build(code_base: str, args: List[str]):
    """
    Execute xts accurate build.

    Args:
        code_base: abspath of ohos source code.
        out_path: GN build output abspath.
        args: _CMD to run, as in subprocess.run(_CMD).
    
    Returns:
        0 on success, otherwise on failure.
    """
    os.chdir(code_base)
    logger = XTSLogger()

    # gn gen
    args.append("--build-only-gn")
    logger.info(">>> Compile command: {}".format(str.join(' ', args)))
    rc = subprocess.run(args).returncode
    if (rc != 0):
        return rc

    # gn desc
    args.pop()
    arg_dict, args = parse_args(args)
    gn_path = os.path.join(code_base, "prebuilts/build-tools/linux-x86/bin/gn")
    targets = arg_dict.get("targets", [])

    out_path = os.path.join(code_base, "out")
    if arg_dict.get("abi-type") is not None:
        out_path = os.path.join(out_path, arg_dict.get("abi-type"), arg_dict.get("device-type"))
    else:
        out_path = os.path.join(out_path, arg_dict.get("product-name"))

    # backup ninja context.
    ninja_ctx = [
        os.path.join(out_path, "build.ninja"),
        os.path.join(out_path, "build.ninja.d"),
        os.path.join(out_path, "build.ninja.stamp")
    ]

    for ctx in ninja_ctx:
        shutil.copy2(ctx, f"{ctx}.bkp")

    env = os.environ.copy()
    env.update(arg_dict.get("env", {}))
    logger.debug(json.dumps(env, indent = 2, sort_keys = False))
    _tgts = calc_final_targets(out_path, gn_path, targets, env)

    if _tgts is None:
        for tgt in targets:
            args.extend(["--build-target", tgt])
    elif len(_tgts) > 1 or not \
        (len(_tgts) == 1 and _tgts[0] == "deploy_testtools"):
        for tgt in _tgts:
            args.extend(["--build-target", tgt])
    else:
        logger.info("XTS accurate target list is empty, skip building.")
        return 0

    # restore ninja context.
    for ctx in ninja_ctx:
        os.remove(ctx)
        os.rename(f"{ctx}.bkp", ctx)
        os.utime(ctx)

    # ninja
    args.append("--fast-rebuild")
    logger.info(">>> Compile command: {}".format(str.join(' ', args)))
    return subprocess.run(args).returncode
