'use static'
/**
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
  Resource,
  State,
  Row,
  Text,
  FontWeight,
  Alignment,
  Blank,
  Image,
  VerticalAlign,
  TouchEvent,
  TouchType,
  Margin,
  Padding,
  $r,
  StorageLink,
  NavPathStack,
  AppStorage
} from '@kit.ArkUI';

@Component
export struct MainItem {
  @State isTouched: boolean = false;
  @StorageLink('selectedLabel') selectedLabel: string = '';
  @StorageLink('selectedSecondLabel') selectedSecondLabel: string = '';
  private title: string | Resource = '';
  pageStack: NavPathStack = AppStorage.get<NavPathStack>('PathStack') as NavPathStack;
  private isSecond: boolean = false;


  build() {
    Row() {
      Text(this.title)
        .fontSize(16.0)
        .lineHeight(22.0)
        .fontWeight(FontWeight.Medium)
        .fontFamily('HarmonyHeiTi')
        .fontColor($r('sys.color.ohos_id_color_text_primary'))
        .align(Alignment.Start)
        .margin({ left: 16.0 } as Margin)

      Blank()

      Image($r('app.media.ic_arrow'))
        .width(12.0)
        .height(24.0)
        .margin({ left: 4.0 } as Margin)
        .fillColor($r('sys.color.ohos_id_color_fourth'))
    }
    .alignItems(VerticalAlign.Center)
    .width('100%')
    .height(56.0)
    .borderRadius(20.0)
    .padding({ left: 8.0, right: 8.0 } as Padding)
    .backgroundColor(this.isTouched ? $r('app.color.itemActivated') : $r('app.color.itemInactivated'))
    .onTouch((event: TouchEvent) => {
      if (event.type === TouchType.Down) {
        this.isTouched = true;
      } else if (event.type === TouchType.Up) {
        this.isTouched = false;
      }
    })
    .onClick(() => {
      if (this.isSecond == false) {
        this.selectedLabel = this.title as string
        this.pageStack.pushPathByName('Capabilities', new Object(), () => {})
      } else {
        this.selectedSecondLabel = this.title as string
        this.pageStack.pushPathByName('Util', new Object(), () => {})
      }
    })
  }
}