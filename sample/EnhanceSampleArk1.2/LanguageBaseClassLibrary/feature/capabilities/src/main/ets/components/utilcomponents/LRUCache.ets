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
  Component,
  State,
  Scroll,
  Column,
  Text,
  Color,
  BarState,
  Alignment,
  CustomDialogController,
  $r,
  Padding,
  Margin,
  ClickEvent,
} from '@kit.ArkUI';

import { ActionSheetDialog } from './lrucache/ActionSheetDialog';
import { GridOperation } from '../GridOperation';
import {
  clear,
  getCapacity,
  getAllKeyValues,
  getCacheString,
  initLRUCache,
  lruBuffer,
  operationLog,
  putKeyValue,
  updateCapacity
} from '../../util/LRUCacheUtil';

@Component
export struct LRUCache {
  @State resultText: string = '';
  @State actionSheets: Array<string> = [''];
  private isGet: boolean = true;

  build() {
    Scroll() {
      Column() {
        Scroll() {
          Text(this.resultText)
            .width('100%')
            .fontSize(16.0)
        }
        .width('90%')
        .height(240.0)
        .margin({ top: 10.0 } as Margin)
        .border({ width: 1.0, color: Color.Gray, radius: 15.0 })
        .scrollBar(BarState.Off)
        .padding(15.0)

        GridOperation({ operationRes: $r('app.strarray.lru_cache_operations'), doOperation: this.doOperation })
      }
      .width('100%')
      .padding(16.0)
    }
    .scrollBar(BarState.Off)
    .align(Alignment.Start)
  }

  action (key: string)  {
    if (this.isGet) {
      if (lruBuffer.contains(key)) {
        let value: string = lruBuffer.get(key) as string;
        this.resultText = `key = ${key},  value=${value}`;
      } else {
        this.resultText = `the key:${key} is not found`;
      }
    } else {
      lruBuffer.remove(key);
      this.resultText = `key:${key} is removed\n`;
    }
  }
  private actionDialogController: CustomDialogController = new CustomDialogController({
    builder: ActionSheetDialog({
      title: 'Click the key',
      sheets: this.actionSheets,
      action: this.action
    }),
    autoCancel: true
  });
  doOperation  (index: number)  {
    if (index !== 0.0 && lruBuffer === null) {
      this.resultText = 'Click the first button and then operate';
      return;
    }
    const uIContext = this.getUIContext()
    switch (index as int) {
      case 0:
        this.resultText = initLRUCache(uIContext);
        break;
      case 1:
        this.resultText = getCapacity();
        break;
      case 2:
        this.resultText = updateCapacity();
        break;
      case 3:
        this.resultText = getCacheString();
        break;
      case 4:
        this.resultText = putKeyValue(uIContext);
        break;
      case 5:
        this.isGet = true;
        this.actionSheets = lruBuffer.keys() as string[];
        this.actionDialogController.open();
        break;
      case 6:
        this.resultText = getAllKeyValues();
        break;
      case 7:
        this.isGet = false;
        this.actionSheets = lruBuffer.keys() as string[];
        this.actionDialogController.open();
        break;
      case 8:
        this.resultText = clear(uIContext);
        break;
      case 9:
        this.resultText = operationLog();
      default:
        break;
    }
  }
}