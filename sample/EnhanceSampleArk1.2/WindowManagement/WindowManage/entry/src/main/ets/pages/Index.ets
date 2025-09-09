'use static'
/*
 * Copyright (c) 2022-2023 Huawei Device Co., Ltd.
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
  State,
  Column,
  Button,
  $r,
  getUIContext,
  FlexAlign,
  HorizontalAlign,
  ButtonAttribute,
  Length,
} from '@kit.ArkUI';

import router from '@ohos.router';

@Entry
@Component
struct Index {
  @State isChangeWindow: boolean = false

  onPageShow() {
    this.isChangeWindow = false
  }

  build() {
    Column() {
      Button($r("app.string.pages_text"))
        .standardButton(20, '80%')
        .margin({ top: 80 })
        .onClick(() => {
          getUIContext().getRouter().pushUrl({
            url: "pages/Video"
          })
          this.isChangeWindow = true
        })
      Button($r("app.string.get_properties_of_system_bar_page"))
        .standardButton(20, '80%')
        .onClick(() => {
          getUIContext().getRouter().pushUrl({
            url: "system_bar/pages/GetPropertiesOfSystemBar"
          })
        })
      Button($r("app.string.set_touchable_area_of_window_page"))
        .standardButton(20, '80%')
        .onClick(() => {
          getUIContext().getRouter().pushUrl({
            url: "touchable/pages/SetTouchableAreas"
          })
        })
    }
    .width('100%')
    .height('100%')
    .justifyContent(this.isChangeWindow ? FlexAlign.Start : FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .backgroundColor($r('app.color.light_gray'))
  }
}

function standardButton(this: ButtonAttribute, fontSize: number, value: Length): this {
    this.fontSize(fontSize);
    this.fontColor($r('app.color.dark_gray'));
    this.backgroundColor($r('app.color.white'));
    this.padding(15);
    this.margin({ top: 20 });
    this.width(value);
    return this;
}