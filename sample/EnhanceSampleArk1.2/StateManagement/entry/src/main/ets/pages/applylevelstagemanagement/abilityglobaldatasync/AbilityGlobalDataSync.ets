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
  LocalStorage,
  StorageLink,
  Entry,
  Component,
  State,
  Resource,
  LocalStorageLink,
  Column,
  AppStorage,
  $r,
} from '@kit.ArkUI';

import { AbilityGlobalDataSyncCode } from './AbilityGlobalDataSyncCode';
import { CodeView } from '../../../commoncomponents/CodeView';
import { TitleBarDark } from '../../../commoncomponents/TitleBarDark';
import { TitleBar } from '../../../commoncomponents/TitleBar';

let storage: LocalStorage = new LocalStorage();

const __get_local_storage__ = (): LocalStorage => storage;
@Entry({ storage: "__get_local_storage__" })
@Component
struct AbilityGlobalDataSync {
  @State title: Resource = $r('app.string.ability_storage_ui');
  @LocalStorageLink('currentModelStatus') currentModelStatus: boolean = true;
  build() {
    Column() {
      if (this.currentModelStatus) {
        TitleBarDark({ title: this.title })
      } else {
        TitleBar({ title: this.title })
      }
      // TODO Exception
      // CodeView({ title: this.title, isShowTitle: false }) {
        AbilityGlobalDataSyncCode()
      // }
    }
    .width('100%')
    .height('100%')
    .backgroundColor(this.currentModelStatus ? $r('app.color.nightnode_color') : $r('app.color.background_shallow_grey'))
  }

  aboutToDisappear(): void {
    AppStorage.setOrCreate('sideBarShow', false);
  }
}