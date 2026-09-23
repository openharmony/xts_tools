#!/usr/bin/env python3
# Copyright (c) 2026 Huawei Device Co., Ltd.
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

import os
import subprocess
import sys


def find_source_root():
    cur = os.path.dirname(os.path.abspath(__file__))
    for _ in range(10):
        if os.path.isfile(os.path.join(cur, "build.sh")) and \
                os.path.isdir(os.path.join(cur, "developtools", "ace_js2bundle", "ace-loader")):
            return cur
        cur = os.path.dirname(cur)
    return None


def _find_node_bin(prebuilts_dir, entries):
    current_link = os.path.join(prebuilts_dir, "current")
    if os.path.islink(current_link):
        node_bin = os.path.join(current_link, "bin", "node")
        if os.path.isfile(node_bin):
            return os.path.join(current_link, "bin")
    for entry in entries:
        if entry == "current":
            continue
        node_bin = os.path.join(prebuilts_dir, entry, "bin", "node")
        if os.path.isfile(node_bin):
            return os.path.join(prebuilts_dir, entry, "bin")
    return None


def find_nodejs():
    cur = os.path.dirname(os.path.abspath(__file__))
    for _ in range(10):
        prebuilts = os.path.join(cur, "prebuilts", "build-tools", "common", "nodejs")
        if os.path.isdir(prebuilts):
            entries = sorted(os.listdir(prebuilts), reverse=True)
            result = _find_node_bin(prebuilts, entries)
            if result:
                return result
        cur = os.path.dirname(cur)
    return None


def _npm_env(nodejs_bin):
    env = os.environ.copy()
    if nodejs_bin:
        env["PATH"] = nodejs_bin + os.pathsep + env.get("PATH", "")
    return env


def build_ace_loader(source_root):
    ace_loader_dir = os.path.join(
        source_root, "developtools", "ace_js2bundle", "ace-loader"
    )
    lib_lite_dir = os.path.join(ace_loader_dir, "lib", "lite")
    if os.path.isdir(lib_lite_dir):
        print("[pre_build] ace-loader lib already exists, skipping npm build.")
        return True

    nodejs_bin = find_nodejs()
    env = _npm_env(nodejs_bin)

    node_modules_dir = os.path.join(ace_loader_dir, "node_modules")
    if not os.path.isdir(node_modules_dir):
        print("[pre_build] node_modules missing, running npm install...")
        result = subprocess.run(
            ["npm", "install"],
            cwd=ace_loader_dir,
            env=env,
        )
        if result.returncode != 0:
            print("[pre_build] npm install failed")
            return False

    print("[pre_build] running npm run build...")
    result = subprocess.run(
        ["npm", "run", "build"],
        cwd=ace_loader_dir,
        env=env,
    )
    if result.returncode != 0:
        print("[pre_build] npm run build failed")
        return False

    if not os.path.isdir(lib_lite_dir):
        print("[pre_build] lib/lite not produced after build")
        return False

    print("[pre_build] ace-loader build completed.")
    return True


def main():
    stamp_file = sys.argv[1] if len(sys.argv) > 1 else None
    source_root = find_source_root()
    if not source_root:
        print("[pre_build] ERROR: could not find source root")
        sys.exit(1)
    if not build_ace_loader(source_root):
        print("[pre_build] ERROR: ace-loader build failed")
        sys.exit(1)
    if stamp_file:
        os.makedirs(os.path.dirname(stamp_file), exist_ok=True)
        with open(stamp_file, "w") as f:
            f.write("done")


if __name__ == "__main__":
    main()
