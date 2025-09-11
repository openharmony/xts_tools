'use static'
/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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

import {
  Resource,
  $r,
  UIContext,
} from '@kit.ArkUI';

import { getString } from 'common';
import common from '@ohos.app.ability.common';
import util from '@ohos.util';

export let lruBuffer: util.LRUCache<string, string> = new util.LRUCache<string, string>();

export function initLRUCache(uIContext: UIContext): string {
  lruBuffer = new util.LRUCache<string, string>();
  return getString($r('app.string.create_lru_cache'), uIContext);
}

export function getCapacity(): string {
  return `capacity = ${lruBuffer.getCapacity()}`;
}

export function updateCapacity(): string {
  lruBuffer.updateCapacity(100.0);
  return `update capacity success,capacity=${lruBuffer.getCapacity()}`;
}

export function getCacheString(): string {
  return lruBuffer.toString();
}

export function clear(uIContext: UIContext): string {
  lruBuffer.clear();
  return getString($r('app.string.clear'), uIContext);
}

export function putKeyValue(uIContext: UIContext): string {
  lruBuffer.put(randomString(3.0), randomString(5.0));
  return getString($r('app.string.put_success'), uIContext);
}

export function operationLog(): string {
  lruBuffer.createDefault('10');
  lruBuffer.get('10');
  return `getCreateCount=${lruBuffer.getCreateCount()}\n`
    + `getMissCount=${lruBuffer.getMissCount()}\n`
    + `getRemovalCount=${lruBuffer.getRemovalCount()}\n`
    + `getMatchCount=${lruBuffer.getMatchCount()}\n`
    + `getPutCount=${lruBuffer.getPutCount()}\n`;
}

export function randomString(length: number): string {
  length = length || 32.0;
  let str = 'abcdefhijkmnprstwxyz123456789';
  let maxLength: number = str.length;
  let resultString = '';
  for (let i: number = 0.0; i < length; i++) {
    resultString += str.charAt(Math.floor(Math.random() * maxLength));
  }
  return resultString;
}

export function getAllKeyValues(): string {
  let result = '';
  let keyArr: string[] = lruBuffer.keys();
  let valueArr: string[] = lruBuffer.values();
  keyArr.forEach((key: string, index: number) => {
    result += `key: ${key}, value: ${valueArr[index as int]}\n`;
  })
  return result;
}