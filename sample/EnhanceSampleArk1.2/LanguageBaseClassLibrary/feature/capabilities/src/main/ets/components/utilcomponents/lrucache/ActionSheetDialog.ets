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
  CustomDialog,
  CustomDialogController,
  Column,
  Text,
  Color,
  TextAlign,
  List,
  ForEach,
  ListItem,
  Row,
  $r,
  Padding,
  Margin,
  ClickEvent,

} from '@kit.ArkUI';

@CustomDialog
export struct ActionSheetDialog {
  private controller?: CustomDialogController;
  private title: string = '';
  private sheets: Array<string> = new Array<string>();
  private action: (key: string) => void = () => {};

  build() {
    Column() {
      Text(this.title)
        .width('100%')
        .fontSize(18.0)
        .fontColor(Color.Black)
        .textAlign(TextAlign.Center)
        .margin({ top: 10.0, bottom: 10.0 } as Margin)
      List() {
        ForEach(this.sheets, (item: string) => {
          ListItem() {
            Row() {
              Text('key:')
                .fontSize(18.0)
                .fontColor(Color.Gray)
              Text(item)
                .fontSize(18.0)
                .fontColor(Color.Gray)
            }
            .key('getValueOfTheKey')
            .width('100%')
            .margin(10.0)
          }
          .width('100%')
          .onClick((e: ClickEvent) => {
            this.controller?.close();
            this.action(item);
          })
        })
      }
      .width('100%')
      .margin({ bottom: 56.0 } as Margin)
      .divider({ strokeWidth: 1.0, color: Color.Gray, startMargin: 5.0, endMargin: 5.0 })
    }
    .width('80%')
  }
}