#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
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
#

from __future__ import annotations
import os
import re
import sys
import json
from pathlib import Path
from functools import partial
from concurrent.futures import ProcessPoolExecutor

PATTERN = re.compile(r'(([\'"])compileSdkVersion\2)\s*:[^,]*(.*)$', re.MULTILINE)


def get_local_api_version(code_root_dir: str | Path) -> str | None:
    config_file = Path(code_root_dir) / "test/xts/tools/config/config.json"
    if not config_file.exists():
        return None
    try:
        data = json.loads(config_file.read_text(encoding='utf-8'))
        return data.get("api_full_version")
    except Exception as e:
        print(f"warning: Failed to read config.json: {e}")
        return None


def get_sdk_api_version(code_root_dir: str | Path) -> str | None:
    version_gni = Path(code_root_dir) / "build/version.gni"
    if not version_gni.exists():
        return None
    try:
        content = version_gni.read_text(encoding='utf-8')
        match = re.search(r'api_full_version\s*=\s*"([^"]+)"', content)
        if match:
            return match.group(1)
    except Exception as e:
        print(f"warning: Failed to read version.gni: {e}")
    return None


def process_file(file_path_str: str, target_version: str) -> tuple[int, bool]:
    """
    Process a single build-profile.json5 file.

    Returns:
        tuple[int, bool]: (rc, was_modified)
            rc: 0 on success, 1 on error (following standard POSIX return conventions)
            was_modified: True if file content was updated, False otherwise
    """
    try:
        file_path = Path(file_path_str)
        content = file_path.read_text(encoding='utf-8')
        new_content, count = PATTERN.subn(r'\1: "' + target_version + r'"\3', content)
        if count > 0 and new_content != content:
            file_path.write_text(new_content, encoding='utf-8')
            return 0, True  # Success, modified
        return 0, False     # Success, unmodified
    except Exception as e:
        print(f"[WARN] Failed to process {file_path_str}: {e}")
        return 1, False     # Error, unmodified


def update_compile_sdk_version(xts_root_dir: str | Path, target_version: str) -> int:
    root_path = Path(xts_root_dir)
    if not root_path.exists():
        return 0

    json5_files = list(set(str(p.resolve()) for p in root_path.rglob("build-profile.json5")))

    total_files = len(json5_files)
    if total_files == 0:
        return 0

    workers = min(os.cpu_count() or 4, total_files)
    chunksize = max(1, total_files // (workers * 4))

    worker_fn = partial(process_file, target_version=target_version)

    with ProcessPoolExecutor(max_workers=workers) as executor:
        results = list(executor.map(worker_fn, json5_files, chunksize=chunksize))
        updated_count = sum(1 for rc, was_modified in results if rc == 0 and was_modified)
        error_count = sum(1 for rc, _ in results if rc != 0)

    if error_count > 0:
        print(f"[XTS CI] Preprocessed {updated_count}/{total_files} build-profile.json5 files under '{root_path}' -> compileSdkVersion: {target_version} ({error_count} errors)")
    else:
        print(f"[XTS CI] Preprocessed {updated_count}/{total_files} build-profile.json5 files under '{root_path}' -> compileSdkVersion: {target_version}")
    
    return updated_count


if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: python3 update_compile_sdk_version.py <xts_root_dir> <target_version>")
        sys.exit(1)
    update_compile_sdk_version(sys.argv[1], sys.argv[2])
