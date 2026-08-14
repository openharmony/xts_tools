#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Copyright (c) 2026 Huawei Device Co., Ltd.
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
"""

from __future__ import annotations
import os
import re
import sys
import json
from pathlib import Path, PurePath
from functools import partial
from concurrent.futures import ProcessPoolExecutor

PATTERN = re.compile(r'(^\s*([\'"]?)compileSdkVersion\2\s*:\s*([\'"])).*?\3', re.MULTILINE)
CODE_ROOT = Path(__file__).resolve().parents[4]
CHANGE_INFO_FILE = CODE_ROOT / "change_info.json"
print = partial(print, flush=True)

def get_local_api_full_version() -> str:
    """Reads api_full_version from test/xts/tools/config/config.json."""
    config_file = CODE_ROOT / "test/xts/tools/config/config.json"
    if not config_file.exists():
        return ''
    try:
        data = dict(json.loads(config_file.read_text(encoding='utf-8')))
        return data.get("api_full_version", '')
    except Exception as e:
        print(f"[XTS PREPROCESS] [WARN] Failed to read config.json: {e}")
        return ''


def get_sdk_api_full_version() -> str:
    """Reads api_full_version from build/version.gni."""
    version_gni = CODE_ROOT / "build/version.gni"
    if not version_gni.exists():
        return ''
    try:
        content = version_gni.read_text(encoding='utf-8')
        match = re.search(r'api_full_version\s*=\s*"([^"]+)"', content)
        if match:
            return match.group(1)
    except Exception as e:
        print(f"[XTS PREPROCESS] [WARN] Failed to read version.gni: {e}")
    return ''


def _check_tc_build_profile_changed(suite_path: Path, tc_repo_data: dict):
    """
    Checks if build-profile.json5 changed in hvigor test-case project.
    """
    change_types = dict(tc_repo_data.get('changed_file_list', {}))
    changes = list(change_types.get('added', [])) + \
              list(change_types.get('rename', [])) + \
              list(change_types.get('modified', []))

    for chg in changes:
        fpath = suite_path / str(chg)
        if fpath.is_file() and \
            fpath.name == 'build-profile.json5' and \
            'entry' not in fpath.parts and \
            PATTERN.search(fpath.read_text()):
            return True
    return False


def _tc_build_profile_changed(suite_path: Path, change_info_file: str | Path = CHANGE_INFO_FILE) -> bool:
    """
    Checks if the commit contains a/m changes to build-profile.json5 under suite_path.
    """
    change_path = Path(change_info_file)
    if not change_path.exists():
        print(f"[XTS PREPROCESS] No such config: change_info.json, consider full build.")
        return False
    try:
        data = dict(json.loads(change_path.read_text(encoding='utf-8')))
        if not data:
            print(f"[XTS PREPROCESS] [WARN] Empty change_info.json")
            return False

        suite_parts = suite_path.parts
        for repo in data:
            repo_parts = PurePath(repo).parts
            suite_match = len(suite_parts) >= len(repo_parts) and suite_parts[-len(repo_parts):] == repo_parts
            if suite_match and _check_tc_build_profile_changed(suite_path, data.get(repo, {})):
                return True
        return False
    except Exception as e:
        print(f"[XTS PREPROCESS] [WARN] Failed to parse change_info_file for commit type: {e}")
        return False


def should_bump_compile_sdk_version(suite_path: Path, change_info_file: str | Path = CHANGE_INFO_FILE) -> tuple[bool, str, str]:
    """
    Checks if compileSdkVersion should be bumped for current suite_path.

    Returns:
        tuple[bool, str, str]: (should_bump, local_ver, sdk_ver)
        should_bump:
            - True if local_ver != sdk_ver AND commit contains tc project level build-profile.json5.
            - False if local_ver == sdk_ver OR commit doesn't contain tc project level build-profile.json5.
        local_ver: local config api_full_version from config.json
        sdk_ver: build/version.gni api_full_version
    """
    local_ver = get_local_api_full_version()
    sdk_ver = get_sdk_api_full_version()
    if not local_ver or not sdk_ver or local_ver == sdk_ver:
        return False, local_ver, sdk_ver
    should_bump = not _tc_build_profile_changed(suite_path, change_info_file)
    return should_bump, local_ver, sdk_ver


def _process_file(config_file_path: str, target_version: str) -> tuple[int, bool]:
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
        new_content, count = PATTERN.subn(rf'\g<1>{target_version}\g<3>', content)
        if count > 0 and new_content != content:
            file_path.write_text(new_content, encoding='utf-8')
            return 0, True  # Success, modified
        return 0, False     # Success, unmodified
    except Exception as e:
        print(f"[XTS PREPROCESS] [WARN] Failed to process {config_file_path}: {e}")
        return 1, False     # Error, unmodified


def bump_compile_sdk_version(xts_suite_dir: str | Path) -> int:
    """
    Batch updates compileSdkVersion in all build-profile.json5 files under xts_suite_dir.

    Returns:
        int: Number of files successfully updated.
    """
    suite_path = Path(xts_suite_dir).resolve()
    if not suite_path.exists():
        print(f"[XTS PREPROCESS] [WARN] No such xts suite: {suite_path}")
        return 0

    should_bump, local_ver, sdk_ver = should_bump_compile_sdk_version(suite_path)
    if not should_bump:
        if local_ver and sdk_ver and local_ver != sdk_ver:
            print(f"[XTS PREPROCESS] API update wip ('{local_ver}' -> '{sdk_ver}'). "
                  f"Commit contains hvigor project build-profile.json5. Skipping preprocess.")
        else:
            print(f"[XTS PREPROCESS] API update completed ('{local_ver}' -> '{sdk_ver}'). Skipping preprocess.")
        return 0

    json5_files = list(set(str(p.resolve()) for p in suite_path.rglob("build-profile.json5")))

    total_files = len(json5_files)
    if total_files == 0:
        return 0

    print(f"[XTS PREPROCESS] API update wip ('{local_ver}' -> '{sdk_ver}'). Running preprocess on {suite_path}...")

    workers = min(os.cpu_count() or 4, total_files)
    chunksize = max(1, total_files // (workers * 4))
    worker_fn = partial(_process_file, target_version=sdk_ver)

    updated_count, error_count = 0, 0
    with ProcessPoolExecutor(max_workers=workers) as executor:
        results = list(executor.map(worker_fn, json5_files, chunksize=chunksize))
        for rc, modified in results:
            if rc == 0:
                if modified:
                    updated_count += 1
            else:
                error_count += 1

    if error_count > 0:
        print(f"[XTS PREPROCESS] Preprocessed {updated_count}/{total_files} build-profile.json5 files under {suite_path} -> compileSdkVersion: '{sdk_ver}' ({error_count} errors)")
    else:
        print(f"[XTS PREPROCESS] Preprocessed {updated_count}/{total_files} build-profile.json5 files under {suite_path} -> compileSdkVersion: '{sdk_ver}'")

    return updated_count


def main():
    if len(sys.argv) < 2:
        print("Usage: python3 bump_compile_sdk_version.py <xts_suite_dir>")
        return 1
    bump_compile_sdk_version(sys.argv[1])
    return 0


if __name__ == "__main__":
    sys.exit(main())
