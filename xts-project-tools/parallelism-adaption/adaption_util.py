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

import os
import re
import logging
import textwrap
from typing import List, Dict
import pyjson5
import json
import shutil

logger = logging.getLogger('xts_logger')


def search_for_test_suite(path: str) -> List[str]:
  results = []
  target_filename = 'Test.json'

  if not os.path.isdir(path):
    return results

  try:
    items = os.listdir(path)
  except PermissionError:
    return results

  if target_filename in items:
    results.append(path)
    return results

  for item in items:
    full_path = os.path.join(path, item)
    if os.path.isdir(full_path):
      results.extend(search_for_test_suite(full_path))

  return results


def get_target_files(proj_path: str):
  return {
    'oh_package_conf': os.path.join(proj_path, 'oh-package.json5'),
    'entry_build_profile_conf': os.path.join(proj_path, 'entry', 'build-profile.json5'),
    'test_ability_temp': os.path.join(proj_path, 'entry', 'src', 'ohosTest', 'ets', 'testability', 'TestAbility.ets'),
  }


def check_adaptable(proj_path: str) -> bool:
  conf_map = get_target_files(proj_path)
  for conf_path in conf_map.values():
    if not os.path.isfile(conf_path):
      return False
  return True


def get_copyright():
  return textwrap.dedent('''\
    /*
     * Copyright (C) 2026 Huawei Device Co., Ltd.
     * Licensed under the Apache License, Version 2.0 (the "License");
     * you may not use this file except in compliance with the License.
     * You may obtain a copy of the License at
     *
     *     http://www.apache.org/licenses/LICENSE-2.0
     *
     * Unless required by applicable law or agreed to in writing, software
     * distributed under the License is distributed on an "AS IS" BASIS,
     * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
     * See the License for the specific language governing permissions and
     * limitations under the License.
     */
  ''')


def bump_hypium_version(conf_path: str):
  try:
    with open(conf_path, 'r', encoding = 'utf-8') as fh:
      conf: Dict = pyjson5.load(fh)

    if 'devDependencies' not in conf or \
      not isinstance(conf.get('devDependencies'), Dict):
      conf['devDependencies'] = {}

    dev_deps = conf['devDependencies']
    cur_ver = dev_deps.get('@ohos/hypium', '')

    if not cur_ver:
      dev_deps['@ohos/hypium'] = '1.0.19'
    else:
      pat = re.compile(r'^(\d+\.\d+)\.(\d+)')
      match = pat.search(dev_deps.get('@ohos/hypium', ''))
      if match:
        major = float(match.group(1))
        minor = int(match.group(2))
        if major > 1.0 or (major == 1.0 and minor >= 19):
          return 0
      dev_deps['@ohos/hypium'] = '1.0.19'

    with open(conf_path, 'w', encoding = 'utf-8') as fh:
      fh.write(get_copyright())
      json.dump(conf, fh, indent = 2, ensure_ascii = False)
      fh.write('')
    return 0

  except Exception as e:
    logger.error('Bump hypium version failed.')
    logger.error(e)
    return -255


def merge_two_maps(source: Dict, update: Dict):
  for key, value in update.items():
    if isinstance(value, Dict):
      node = source.setdefault(key, {})
      merge_two_maps(node, value)
    elif isinstance(value, List):
      node = source.setdefault(key, [])
      for val in value:
        if val not in node:
          node.append(val)
    else:
      source[key] = value


def add_worker_conf(conf_path: str):
  try:
    with open(conf_path, 'r', encoding = 'utf-8') as fh:
      conf: Dict = pyjson5.load(fh)
    if 'targets' not in conf or \
      not isinstance(conf.get('targets'), List):
      conf['targets'] = []
    
    worker_conf = {
      'buildOption': {
        'sourceOption': {
          'workers': [
            './src/ohosTest/ets/worker/Worker.ets'
          ]
        }
      }
    }

    merged = False
    targets = conf['targets']
    for tgt in targets:
      if 'ohosTest' == tgt.get('name', ''):
        origin_conf = tgt.setdefault('config', {})
        merge_two_maps(origin_conf, worker_conf)
        merged = True
        break

    if not merged:
      targets.append({
        'name': 'ohosTest',
        'config': worker_conf,
      })

    with open(conf_path, 'w', encoding = 'utf-8') as fh:
      fh.write(get_copyright())
      json.dump(conf, fh, indent = 2, ensure_ascii = False)
      fh.write('')
    return 0

  except Exception as e:
    logger.error('Add worker config failed.')
    logger.error(e)
    return -255


def add_template(dest_file: str, src_file: str):
  try:
    tgt_dir = os.path.dirname(dest_file)
    if not os.path.exists(tgt_dir):
      logger.info(f'Making dir: {tgt_dir}')
      os.mkdir(tgt_dir)

    if not os.path.isdir(tgt_dir):
      raise NotADirectoryError

    logger.info(f'Copying {src_file} to {dest_file}.')
    shutil.copy2(src_file, dest_file)
    return 0

  except Exception as e:
    logger.error(f'Add template file: {src_file} failed.')
    logger.error(e)
    return -255


def adapt_worker(proj_path: str):
  try:
    tgt_files = get_target_files(proj_path)
    assert bump_hypium_version(tgt_files['oh_package_conf']) == 0, 'Step 0'
    assert add_worker_conf(tgt_files['entry_build_profile_conf']) == 0, 'Step 1'
    worker_path = os.path.join(proj_path, 'entry', 'src', 'ohosTest', 'ets', 'worker', 'Worker.ets')
    res_path = os.path.join(os.path.dirname(__file__), 'resource')
    assert add_template(worker_path, os.path.join(res_path, 'Worker.ets')) == 0, 'Step 2'
    assert add_template(
      tgt_files['test_ability_temp'], os.path.join(res_path, 'TestAbility.ets')) == 0, 'Step 3'
    return 0

  except Exception as e:
    logger.error(f'Adaption failed. {e}')
    return -255
