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
  CustomDialog,
  CustomDialogController,
  State,
  Column,
  Text,
  TextAlign,
  TextPicker,
  Row,
  Divider,
  Entry,
  Component,
  DialogAlignment,
  Image,
  ImageFit,
  Blank,
  TextInput,
  FlexAlign,
  Margin,
  Padding,
  $r,
  ClickEvent,
  StorageLink
} from '@kit.ArkUI';
import emitter from '@ohos.events.emitter';
import { Constant, Information } from 'capabilities';
import { getString } from 'common';

const MIN_AGE = 1;
const AGE_RANGE = 9;
const AGE_DEFAULT = 0;

const arr = Array<number>(AGE_RANGE)
  .fill(0)

@Component
@CustomDialog
export struct AgePickDialog {
  private controller?: CustomDialogController;
  private sure: (age: number) => void = () => {};
  @State select: number = AGE_DEFAULT;

  build() {
    Column() {
      Text($r('app.string.age'))
        .margin({ left: 24.0, top: 14.0 } as Margin)
        .width('100%')
        .fontColor($r('app.color.text_color_primary'))
        .fontSize(20.0)
        .textAlign(TextAlign.Start)

      Column() {
        TextPicker({ range: arr.map<string>(
            (_: number, i: number) => `${i + MIN_AGE}${getString($r('app.string.old'), this.getUIContext())}`
          ),
          selected: this.select
        })
          .onChange((value: string | string[], index: number | number[]): void => {
            if (typeof index === 'number') {
              this.select = index as number;
            }
          })
      }
      .width('100%')
      .height(238.0)

      Row() {
        Text($r('app.string.cancel'))
          .height('100%')
          .width('50%')
          .textAlign(TextAlign.Center)
          .fontSize(16.0)
          .fontColor($r('app.color.text_color_accent'))
          .onClick((e: ClickEvent) => {
            this.controller?.close();
          })
        Divider()
          .vertical(true)
          .height('100%')
        Text($r('app.string.sure'))
          .id('add_sure')
          .height('100%')
          .width('50%')
          .textAlign(TextAlign.Center)
          .fontSize(16.0)
          .fontColor($r('app.color.text_color_accent'))
          .onClick((e: ClickEvent) => {
            this.sure(this.select + MIN_AGE)
            this.controller?.close();
          })
      }
      .height(40.0)
    }
    .height(328.0)
    .margin({ left: 12.0, right: 12.0, bottom: 16.0 } as Margin)
    .borderRadius(24.0)
    .backgroundColor($r('app.color.bg_white'))
  }
}

@Entry
@Component
export struct AddInformationView {
  @State information: Information = new Information('', 0.0, '', true)
  private dialogController: CustomDialogController = new CustomDialogController({
    builder: AgePickDialog({ sure: (age: number) => {
      this.information.age = age;
    } }),
    customStyle: false,
    alignment: DialogAlignment.Bottom
  })
  // @State flag: string = '';
  @StorageLink('selectedLabel') flag: string = '';

  // aboutToAppear() {
    // let tem = this.getUIContext().getRouter().getParams()
    // console.log('wzr:' + `${tem}`)
    // let temp = JSON.stringify(tem)
    // console.log('wzr:' + temp)
    // this.getUIContext().getPromptAction().showToast({ message: this.flag, duration: 2000 })
    // let tem: string = this.getUIContext().getRouter().getParams()['title']
    // let tem: Model = (this.getUIContext().getRouter().getParams())
    // let tem: string = (this.getUIContext().getRouter().getParams() as Record<string, string>)['title'] as string;
    // if (!tem) {
    //   return;
    // }
    // this.flag = tem;
  // }

  build() {
    Column() {
      Row() {
        Row() {
          Image($r("app.media.ic_public_back"))
            .height(24.0)
            .aspectRatio(1.0)
            .objectFit(ImageFit.Contain)
        }
        .height('100%')
        .aspectRatio(1.0)
        .padding({ left: 24.0 } as Padding)
        .onClick((e: ClickEvent) => {
          this.getUIContext().getRouter().back();
        })

        Text($r('app.string.add_new_contact'))
          .fontColor($r('app.color.text_color_primary'))
          .fontSize(20.0)
          .margin({ left: 24.0 } as Margin)

        Blank()

        Row() {
          Image($r('app.media.ic_public_confirm'))
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
          if (this.flag == getString($r('app.string.deque'), uIContext)){
            eventId = Constant.EMITTER_ID_DEQUE;
          }
          if (this.flag == getString($r('app.string.linked_list'), uIContext)){
            eventId = Constant.EMITTER_ID_LINKED_LIST;
          }
          if (this.flag == getString($r('app.string.list'), uIContext)){
            eventId = Constant.EMITTER_ID_LIST;
          }
          if (this.flag == getString($r('app.string.queue'), uIContext)){
            eventId = Constant.EMITTER_ID_QUEUE;
          }
          if (this.flag == getString($r('app.string.stack'), uIContext)){
            eventId = Constant.EMITTER_ID_STACK;
          }
          let event: emitter.InnerEvent = {
            eventId: eventId,
            priority: emitter.EventPriority.HIGH
          };
          let eventData: emitter.EventData = {
            data: {
              'name': this.information.name,
              'age': this.information.age,
              'phone': this.information.phone,
              'clickAble': this.information.clickAble as boolean
            } as Record<string, object>
          };
          emitter.emit(event, eventData);
          uIContext.getRouter().back();
        })
      }
      .width('100%')
      .height(56.0)

      Row() {
        Image($r('app.media.ic_public_user'))
          .margin({ left: 19.0 } as Margin)
          .width(19.0)
          .aspectRatio(1.0)
        Text($r('app.string.names'))
          .margin({ left: 19.0 } as Margin)
          .fontSize(16.0)
          .fontColor($r('app.color.text_color_primary'))
        Column() {
          TextInput({ placeholder: $r('app.string.input_name') })
            .id('add_name')
            .height(48.0)
            .fontSize(16.0)
            .backgroundColor($r('sys.color.ohos_id_color_background_transparent'))
            .onChange((value: string):void => {
              this.information.name = value;
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

      Row() {
        Image($r('app.media.ic_age'))
          .margin({ left: 19.0 } as Margin)
          .width(19.0)
          .aspectRatio(1.0)
        Text($r('app.string.age'))
          .margin({ left: 19.0 } as Margin)
          .fontSize(16.0)
          .fontColor($r('app.color.text_color_primary'))
        Column() {
          Image($r('app.media.ic_public_spinner_down'))
            .height(24.0)
            .width(12.0)
        }
        .id('add_age')
        .justifyContent(FlexAlign.Center)
        .width(54.0)
        .height('100%')
        .onClick((e: ClickEvent) => {
          this.dialogController.open();
        })

        Column() {
          TextInput({
            text: this.information.age === 0.0 ? '' : `${this.information.age}`,
            placeholder: $r('app.string.please_choose')
          })
            .height(48.0)
            .fontSize(16.0)
            .focusable(false)
            .backgroundColor($r('sys.color.ohos_id_color_background_transparent'))
            .onClick((e: ClickEvent) => {
              this.dialogController.open();
            })
        }
        .layoutWeight(1.0)
        .margin({ right: 16.0 } as Margin)
      }
      .height(64.0)
      .width('100%')
      .borderRadius(16.0)
      .backgroundColor($r('app.color.bg_white'))
      .margin({ top: 12.0 } as Margin)

      Row() {
        Image($r('app.media.ic_public_phone'))
          .margin({ left: 19.0 } as Margin)
          .width(19.0)
          .aspectRatio(1.0)
        Text($r('app.string.contact_phone'))
          .margin({ left: 19.0 } as Margin)
          .fontSize(16.0)
          .fontColor($r('app.color.text_color_primary'))
        Column() {
          TextInput({ placeholder: $r('app.string.input_phone') })
            .id('add_phone')
            .height(48.0)
            .fontSize(16.0)
            .backgroundColor($r('sys.color.ohos_id_color_background_transparent'))
            .onChange((value: string):void => {
              this.information.phone = value;
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