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
from pathlib import Path, PurePath
from functools import partial
from concurrent.futures import ProcessPoolExecutor

PATTERN = re.compile(r'(([\'"])compileSdkVersion\2)\s*:[^,]*(.*)$', re.MULTILINE)
CODE_ROOT = Path(__file__).resolve().parents[4]
CHANGE_INFO_FILE = CODE_ROOT / "change_info.json"
NON_TC_REPOS = {'tools', 'device_attest', 'device_attest_lite'}


def get_local_api_version() -> str | None:
    """Reads api_full_version from test/xts/tools/config/config.json."""
    config_file = CODE_ROOT / "test/xts/tools/config/config.json"
    if not config_file.exists():
        return None
    try:
        data = json.loads(config_file.read_text(encoding='utf-8'))
        return data.get("api_full_version")
    except Exception as e:
        print(f"warning: Failed to read config.json: {e}")
        return None


def get_sdk_api_version() -> str | None:
    """Reads api_full_version from build/version.gni."""
    version_gni = CODE_ROOT / "build/version.gni"
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


def is_tc_only_commit(change_info_file: str | Path = CHANGE_INFO_FILE) -> bool:
    """
    Checks if the commit contains changes restricted strictly to test-case repos under test/xts/
    (excluding non-testcase repos: tools, device_attest, device_attest_lite).
    """
    change_path = Path(change_info_file)
    if not change_path.exists():
        return False
    try:
        data = json.loads(change_path.read_text(encoding='utf-8'))
        if not data:
            return False
        for repo_path in data:
            p = PurePath(repo_path)
            is_tc_repo = (
                p.parts[:2] == ('test', 'xts') and
                len(p.parts) >= 3 and
                p.parts[2] not in NON_TC_REPOS
            )
            if not is_tc_repo:
                return False
        return True
    except Exception as e:
        print(f"warning: Failed to parse change_info_file for commit type: {e}")
        return False


def should_bump_compile_sdk_version(change_info_file: str | Path = CHANGE_INFO_FILE) -> tuple[bool, str | None, str | None]:
    """
    Checks if compileSdkVersion should be bumped and static version checks skipped (NTCOC / Full Build during API update).

    Returns:
        tuple[bool, str | None, str | None]: (should_bump, local_ver, sdk_ver)
            should_bump: True if local_ver != sdk_ver AND commit is NOT a TCOC.
                         False if local_ver == sdk_ver OR commit is a TCOC.
            local_ver: local config api_full_version from config.json
            sdk_ver: build/version.gni api_full_version
    """
    local_ver = get_local_api_version()
    sdk_ver = get_sdk_api_version()
    if not local_ver or not sdk_ver or local_ver == sdk_ver:
        return False, local_ver, sdk_ver
    should_bump = not is_tc_only_commit(change_info_file)
    return should_bump, local_ver, sdk_ver


def process_file(config_file_path: str, target_version: str) -> tuple[int, bool]:
    """
    Process a single build-profile.json5 file.

    Returns:
        tuple[int, bool]: (rc, modified)
            rc: 0 on success, 1 on error
            modified: True if file content was updated, False otherwise
    """
    try:
        file_path = Path(config_file_path)
        content = file_path.read_text(encoding='utf-8')
        new_content, count = PATTERN.subn(r'\1: "' + target_version + r'"\3', content)
        if count > 0 and new_content != content:
            file_path.write_text(new_content, encoding='utf-8')
            return 0, True  # Success, modified
        return 0, False     # Success, unmodified
    except Exception as e:
        print(f"[WARN] Failed to process {config_file_path}: {e}")
        return 1, False     # Error, unmodified


def bump_compile_sdk_version(xts_suite_dir: str | Path, target_version: str) -> int:
    """
    Batch updates compileSdkVersion in all build-profile.json5 files under xts_suite_dir.

    Returns:
        int: Number of files successfully updated.
    """
    suite_path = Path(xts_suite_dir)
    if not suite_path.exists():
        return 0

    json5_files = list(set(str(p.resolve()) for p in suite_path.rglob("build-profile.json5")))

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
        print(f"[XTS PREPROCESS] Preprocessed {updated_count}/{total_files} build-profile.json5 files under '{suite_path}' -> compileSdkVersion: {target_version} ({error_count} errors)")
    else:
        print(f"[XTS PREPROCESS] Preprocessed {updated_count}/{total_files} build-profile.json5 files under '{suite_path}' -> compileSdkVersion: {target_version}")

    return updated_count


if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: python3 bump_compile_sdk_version.py <xts_root_dir> <target_version>")
        sys.exit(1)
    bump_compile_sdk_version(sys.argv[1], sys.argv[2])
