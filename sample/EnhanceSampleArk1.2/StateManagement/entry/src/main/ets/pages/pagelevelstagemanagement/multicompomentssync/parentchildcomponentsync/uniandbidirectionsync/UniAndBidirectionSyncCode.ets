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
  Column,
  Text,
  TextAlign,
  Button,
  ButtonType,
  Color,
  ColumnOptions,
  ClickEvent,
  $r,
  $rawfile,
} from '@kit.ArkUI';

import { ChildCompLink } from './ComponentLink';
import { ChildCompProp } from './ComponentProp';
import { ViewCodeText } from '../../../../../commoncomponents/ViewCodeText';
import { Circle,} from '@ohos.arkui.component';

export enum COLOR_DATA {
  GREY = '#eebebeba',
  BLUE = '#4A90E2',
  PINK = '#8DF8BEBE',
  RED = '#FFF30823',
}

@Component
export struct UniAndBidirectionSyncCode {
  @State circleColor: string = COLOR_DATA.GREY;

  build() {
    Column({ space: 10.0 }as ColumnOptions) {
      Column({ space: 10.0 }as ColumnOptions) {
        ViewCodeText({ webSrc: $rawfile('UniAndBidirectionSyncCode.ets.html') })
        Text($r('app.string.parent_component'))
          .fontSize($r('app.float.tips_font_size'))
          .width('100%')
          .textAlign(TextAlign.Start)
          .margin(10.0)
        Text($r('app.string.uni_and_bidirection_sync_tips'))
          .fontColor($r('app.color.tips_font_color'))
          .fontSize($r('app.float.tips_font_size'))
          .width('100%')
          .textAlign(TextAlign.Center)
        Circle()
          .size({ width: $r('app.float.circle_size'), height: $r('app.float.circle_size') })
          .fill(this.circleColor)
        Button('') {
          Text($r('app.string.uni_and_bidirection_sync_btn'))
            .fontColor($r('app.color.button_text_color'))
            .fontSize($r('app.float.button_text_size'))
            .width('100%')
            .textAlign(TextAlign.Center)
        }
        .id('pinkColorBtn')
        .height($r('app.float.button_height'))
        .type(ButtonType.Capsule)
        .backgroundColor($r('app.color.button_background_color'))
        .onClick((event:ClickEvent) => {
          this.circleColor = COLOR_DATA.PINK;
        })
      }
      ChildCompProp({ circleColor: this.circleColor })
      ChildCompLink({ circleColor: this.circleColor })
    }
    .padding(10.0)
    .border({ radius: $r('app.float.component_radius'), color: Color.Grey, width: $r('app.float.border_width') })
  }
}