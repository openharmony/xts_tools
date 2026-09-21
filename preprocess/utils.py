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
import re
import json
from pathlib import Path

CODE_ROOT = Path(__file__).resolve().parents[4]
HVIGOR_PROJ_FILES = {'build-profile.json5', 'BUILD.gn', 'Test.json'}


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


def is_hvigor_project(prj_dir: Path) -> bool:
    """Returns True if the directory is a valid hvigor project, False otherwise."""
    if not prj_dir.is_dir():
        return False
    if not (prj_dir / 'hvigor').is_dir():
        return False
    return all((prj_dir / f).is_file() for f in HVIGOR_PROJ_FILES)


def is_api_update_done() -> tuple[bool, str, str]:
    """
    Checks if api_full_version update is completed.

    Returns:
        tuple[bool, str, str]: (is_done, local_ver, sdk_ver)
        is_done:
            - True if local_ver == sdk_ver or versions not found.
            - False if local_ver != sdk_ver (update in progress).
        local_ver: local config api_full_version from config.json
        sdk_ver: build/version.gni api_full_version
    """
    local_ver = get_local_api_full_version()
    sdk_ver = get_sdk_api_full_version()
    if not local_ver or not sdk_ver or local_ver == sdk_ver:
        return True, local_ver, sdk_ver
    return False, local_ver, sdk_ver
