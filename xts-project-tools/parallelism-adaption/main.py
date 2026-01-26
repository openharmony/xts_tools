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
import sys
import logging
from logging import Logger
from adaption_util import search_for_test_suite, check_adaptable, adapt_worker


def setup_logging(log_dir):
    logger = logging.getLogger('xts_logger')
    logger.setLevel(logging.DEBUG)
    formatter = logging.Formatter('[%(levelname)s] %(message)s')

    ch = logging.StreamHandler()
    ch.setFormatter(formatter)
    logger.addHandler(ch)

    log_path = os.path.join(log_dir, 'xts-adaption.log')
    fh = logging.FileHandler(log_path, 'w')
    fh.setFormatter(formatter)
    logger.addHandler(fh)

    return logger


def log_suites(logger: Logger, suite_type: str, suites = []):
  logger.info(suite_type + ':')
  for suite in suites:
    logger.info(f'  {suite}')


def log_result(
  logger: Logger,
  adapted_suites = [],
  failed_suites = [],
  unsupported_suites = []
):
  log_suites(logger, 'Adapted', adapted_suites)
  logger.info('')
  log_suites(logger, 'Failed', failed_suites)
  logger.info('')
  log_suites(logger, 'Unsupported', unsupported_suites)
  total_suites = len(unsupported_suites) + len(adapted_suites) + len(failed_suites)
  logger.info('')
  logger.info(f'[SUMMARY] Total suites: {total_suites}, '
              f'adapted: {len(adapted_suites)}, '
              f'failed: {len(failed_suites)}, '
              f'unsupported: {len(unsupported_suites)}.')


def main(xts_root: str):
  logger = setup_logging(os.path.join(os.path.dirname(__file__), 'log'))
  test_suites = search_for_test_suite(xts_root)
  adapted_suites, failed_suites, unsupported_suites = [], [], []
  for suite in test_suites:
    if check_adaptable(suite):
      if adapt_worker(suite) == 0:
        adapted_suites.append(suite)
      else:
        failed_suites.append(suite)
    else:
      unsupported_suites.append(suite)

  log_result(logger, adapted_suites, failed_suites, unsupported_suites)


if __name__ == '__main__':
  assert len(sys.argv) == 2, 'Usage: python3 ./main.py /path/to/xts_acts'
  main(sys.argv[1])
