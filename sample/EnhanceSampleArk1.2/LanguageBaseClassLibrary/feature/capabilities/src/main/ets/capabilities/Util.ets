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
  StorageLink,
  Builder,
  Column,
  Divider,
  $r,
  Padding,
  Margin,
  ClickEvent,
  NavDestination,
  Row,
  Text,
  FlexAlign,
  FontWeight
} from '@kit.ArkUI';
import { getString } from 'common';
import { LRUCache } from '../components/utilcomponents/LRUCache.ets';
import { Base64Helper } from '../components/utilcomponents/Base64Helper.ets';
import { RationalNumber } from '../components/utilcomponents/RationalNumber';
import { ScopeHelper } from '../components/utilcomponents/ScopeHelper.ets';
import { StringCode } from '../components/utilcomponents/StringCode.ets';
import { TypeCheck } from '../components/utilcomponents/TypeCheck.ets';

@Component
export struct Util {
  @StorageLink('selectedSecondLabel') selectedSecondLabel: string = '';

  @Builder
  UtilCapabilities() {
    const uIContext = this.getUIContext()
    if (this.selectedSecondLabel === getString($r('app.string.lru_cache'), uIContext)) {
      LRUCache()
    }
    if (this.selectedSecondLabel === getString($r('app.string.base64'), uIContext)) {
      Base64Helper()
    }
    if (this.selectedSecondLabel === getString($r('app.string.string_code'), uIContext)) {
      StringCode()
    }
    if (this.selectedSecondLabel === getString($r('app.string.rational_number'), uIContext)) {
      RationalNumber()
    }
    if (this.selectedSecondLabel === getString($r('app.string.type_check'), uIContext)) {
      TypeCheck()
    }
    if (this.selectedSecondLabel === getString($r('app.string.scope_helper'), uIContext)) {
      ScopeHelper()
    }
  }

  build() {
    NavDestination() {
      Divider()
        .strokeWidth('1px')
        .color($r('sys.color.ohos_id_color_list_separator'))

      Column() {
        this.UtilCapabilities()
      }
      .height('100%')
      .padding({ left: 12.0, right: 12.0 }as Padding)
      .backgroundColor($r('sys.color.ohos_id_color_sub_background'))
    }
    .title(() => {
      this.CustomTitle(this.selectedSecondLabel)
    }, {backgroundColor: $r("sys.color.ohos_id_color_sub_background")})
    .width('100%')
    .height('100%')
    .backgroundColor($r('sys.color.ohos_id_color_sub_background'))
  }

  @Builder
  CustomTitle(title: string) {
    Row() {
      Text(title)
        .fontColor($r('app.color.black'))
        .fontSize(16.0)
        .fontWeight(FontWeight.Bold)
    }
    .width('85%')
    .height(56.0)
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor($r("sys.color.ohos_id_color_sub_background"))
  }
}