'use static'
/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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
  Entry,
  Component,
  Column,
  $r,
  Scroll,
  Button,
  FlexAlign,
  ButtonAttribute,
  ClickEvent,
  Alignment,
  Margin
} from '@kit.ArkUI';

import router from '@ohos.router'
import { IndexTitleBar } from './component/IndexTitleBar'

@Entry
@Component
struct Index {
  build() {
    Column() {
      IndexTitleBar({ textName: $r('app.string.index') })
      Scroll() {
        Column() {
          Button($r('app.string.data_share_ext_ability_page'))
            .fancy(() => {
              this.getUIContext().getRouter().pushUrl({
                url: 'pages/DataShareExtAbilityPage'
              })
            })

          Button($r('app.string.ability_context_page'))
            .fancy(() => {
              this.getUIContext().getRouter().pushUrl({
                url: 'pages/AbilityContextPage'
              })
            })

          Button($r('app.string.service_extension_contextPage'))
            .fancy(() => {
              this.getUIContext().getRouter().pushUrl({
                url: 'pages/ServiceExtContextPage'
              })
            })

          Button($r('app.string.bundle_page'))
            .fancy(() => {
              this.getUIContext().getRouter().pushUrl({
                url: 'pages/BundlePage'
              })
            })

          Button($r('app.string.ability_access_ctrl_page'))
            .fancy(() => {
              this.getUIContext().getRouter().pushUrl({
                url: 'pages/AbilityAccessCtrlPage'
              })
            })

          Button($r('app.string.data_share_helper_page'))
            .fancy(() => {
              this.getUIContext().getRouter().pushUrl({
                url: 'pages/DataShareHelperPage'
              })
            })

          Button($r('app.string.window_page'))
            .fancy(() => {
              this.getUIContext().getRouter().pushUrl({
                url: 'pages/WindowPage'
              })
            })
        }
        .width('100%')
        .justifyContent(FlexAlign.Center)
      }
      .width('100%')
      .height('90%')
    }
  }
}

function fancy(this: ButtonAttribute, click: (event?: ClickEvent) => void): this {
    this.width('60%');
    this.height(40);
    this.align(Alignment.Center);
    this.margin({ top: 30 } as Margin);
    this.onClick(click);
    return this;
}