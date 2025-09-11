'use static'
/*
* Copyright (c) 2023 Hunan OpenValley Digital Industry Development Co., Ltd.
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
  $r,
  Blank,
  ClickEvent,
  Column,
  Component,
  Entry,
  Image,
  ImageFit,
  Margin,
  Padding,
  Row,
  State,
  Text,
  TextInput,
  StorageLink
} from '@kit.ArkUI';
import emitter from '@ohos.events.emitter';
import { getString } from 'common';
import { Constant } from 'capabilities';

@Entry
@Component
export struct AddKeyValueView {
  @State value: string = ''
  @State title: string = '';
  // @State flag: string = '';
  @StorageLink('selectedLabel') flag: string = '';

  aboutToAppear() {
    // let tem: string = (this.getUIContext().getRouter().getParams() as Record<string, object>)['title'] as string;
    // if (!tem) {
    //   return;
    // }
    // this.flag = tem;
    let regex: RegExp = new RegExp('.*(?=\\(|（)');
    let matchArr: RegExpMatchArray | null = this.flag.match(regex);
    if (matchArr !== null) {
      this.title = `${getString($r('app.string.add'), this.getUIContext())}${matchArr[0]}`;
    }
  }

  build() {
    Column() {
      Row() {
        Row() {
          Image($r("app.media.ic_public_add"))
            .height(24.0)
            .aspectRatio(1.0)
            .objectFit(ImageFit.Contain)
        }
        .height('100%')
        .aspectRatio(1.0)
        .padding({ left: 24.0 } as Padding)
        .onClick((event: ClickEvent) => {
          this.getUIContext().getRouter().back();
        })

        Text(this.title)
          .fontColor($r('app.color.text_color_primary'))
          .fontSize(20.0)
          .margin({ left: 24.0 } as Margin)

        Blank()

        Row() {
          Image($r("app.media.contact"))
            .height(24.0)
            .aspectRatio(1.0)
            .objectFit(ImageFit.Contain)
        }
        .id('add_confirm')
        .height('100%')
        .aspectRatio(1.0)
        .padding({ right: 24.0 } as Padding)
        .onClick((e: ClickEvent) => {
          let eventId = Constant.EMITTER_ID_DEFAULT;
          const uIContext = this.getUIContext();
          if (this.flag == getString($r('app.string.hash_set'), uIContext)){
            eventId = Constant.EMITTER_ID_HASH_SET;
          }
          if (this.flag == getString($r('app.string.light_weight_set'), uIContext)){
            eventId = Constant.EMITTER_ID_LIGHT_WEIGHT_SET;
          }
          if (this.flag == getString($r('app.string.tree_set'), uIContext)){
            eventId = Constant.EMITTER_ID_TREE_SET;
          }
          let event: emitter.InnerEvent = {
            eventId: eventId,
            priority: emitter.EventPriority.HIGH
          };
          let eventData: emitter.EventData = {
            data: { 'value': this.value } as Record<string, object>
          };
          emitter.emit(event, eventData);
          this.getUIContext().getRouter().back();
        })
      }
      .width('100%')
      .height(56.0)

      Row() {
        Text('Value')
          .margin({ left: 19.0 } as Margin)
          .fontSize(16.0)
          .fontColor($r('app.color.text_color_primary'))
        Column() {
          TextInput({ placeholder: $r('app.string.input_value') })
            .id('add_value')
            .height(48.0)
            .fontSize(16.0)
            .backgroundColor($r('sys.color.ohos_id_color_background_transparent'))
            .onChange((value: string): void => {
              this.value = value;
            })
        }
        .layoutWeight(1.0)
        .margin({ left: 52.0, right: 16.0 } as Margin)
      }
      .height(64.0)
      .width('100%')
      .borderRadius(16.0)
      .backgroundColor($r('app.color.bg_white'))
      .margin({ top: 12.0 } as Margin)
    }
    .height('100%')
    .backgroundColor($r('sys.color.ohos_id_color_sub_background'))
    .padding({ left: 12.0, right: 12.0 } as Padding)
  }
}