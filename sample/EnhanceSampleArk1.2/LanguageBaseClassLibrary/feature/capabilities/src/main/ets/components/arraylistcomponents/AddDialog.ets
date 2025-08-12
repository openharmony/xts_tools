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
  State,
  CustomDialogController,
  Column,
  Text,
  Color,
  FontWeight,
  Row,
  TextInput,
  InputType,
  Button,
  Divider,
  $r,
  Padding,
  Margin,
  ClickEvent,
  ButtonOptions
} from '@kit.ArkUI';

import promptAction from '@ohos.promptAction';
import { Information } from '../../model/Information';
import { logger } from 'common';

const TAG: string = 'AddDialog';

@CustomDialog
export struct AddDialog {
  // @State
  writeInformation: Information = new Information('', Number.NaN, '')
  private saveData: (information: Information) => void = () => {
  };
  private controller?: CustomDialogController;

  build() {
    Column() {
      Text($r('app.string.contact_information'))
        .fontSize(24.0)
        .fontColor(Color.Black)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 12.0 } as Margin)
      Row() {
        Text($r('app.string.contact_name'))
          .width(65.0)
          .fontSize(20.0)
          .fontColor(Color.Black)
          .fontWeight(FontWeight.Medium)
          .margin({ left: 10.0 } as Margin)

        TextInput({ placeholder: $r('app.string.input_name'), text: this.writeInformation.name })
          .key('inputPhone')
          .layoutWeight(1.0)
          .type(InputType.Normal)
          .placeholderColor(Color.Gray)
          .fontSize(19.0)
          .maxLength(11.0)
          .margin({ right: 10.0 } as Margin)
          .onChange((value: string):void => {
            this.writeInformation.name = value;
            logger.info(TAG, ` this.writeInformation.name = ${value}`);
          })
      }
      .margin({ top: 12.0 }as Margin)

      Row() {
        Text($r('app.string.contact_age'))
          .width(65.0)
          .fontSize(20.0)
          .fontColor(Color.Black)
          .fontWeight(FontWeight.Medium)
          .margin({ left: 10.0 } as Margin)

        TextInput({ placeholder: $r('app.string.input_age') })
          .key('inputPhone')
          .layoutWeight(1.0)
          .type(InputType.Number)
          .placeholderColor(Color.Gray)
          .fontSize(19.0)
          .maxLength(11.0)
          .margin({ right: 10.0 } as Margin)
          .onChange((value: string):void => {
            this.writeInformation.age = Number(value);
          })
      }
      .margin({ top: 12.0 }as Margin)

      Row() {
        Text($r('app.string.contact_phone'))
          .width(65.0)
          .fontSize(20.0)
          .fontColor(Color.Black)
          .fontWeight(FontWeight.Medium)
          .margin({ left: 10.0 } as Margin)

        TextInput({ placeholder: $r('app.string.input_phone'), text: this.writeInformation.phone })
          .key('inputPhone')
          .layoutWeight(1.0)
          .type(InputType.Number)
          .placeholderColor(Color.Gray)
          .fontSize(19.0)
          .maxLength(11.0)
          .margin({ right: 10.0 } as Margin)
          .onChange((value: string) :void=> {
            this.writeInformation.phone = value;
          })
      }
      .margin({ top: 12.0 }as Margin)

      Row() {
        Button({} as ButtonOptions) {
          Text($r("app.string.button_confirm"))
            .key('confirm')
            .fontColor(Color.Blue)
            .fontSize(17.0)
        }
        .layoutWeight(7.0)
        .backgroundColor(Color.White)
        .margin(5.0)
        .onClick((e: ClickEvent):void => {
          this.addInformation();
        })

        Divider()
          .height(30.0)
          .vertical(true)
          .strokeWidth(2.0)
          .color('#999999')

        Button({} as ButtonOptions) {
          Text($r('app.string.button_cancel'))
            .fontColor(Color.Red)
            .fontSize(17.0)
        }
        .margin(5.0)
        .layoutWeight(7.0)
        .backgroundColor(Color.White)
        .onClick((e: ClickEvent) => {
          this.controller?.close();
        })
      }
      .margin({ top: 12.0 } as Margin)
    }
    .padding(12.0 )
  }

  addInformation() {
    if (this.writeInformation.name === '') {
      //todo
      this.getUIContext().getPromptAction().showToast({ message: $r('app.string.name_null') });
      return;
    }
    if (this.writeInformation.age < 1.0 || Number.isNaN(this.writeInformation.age)) {
      this.getUIContext().getPromptAction().showToast({ message: $r('app.string.age_null') });
      return;
    }
    if (this.writeInformation.phone === '') {
      this.getUIContext().getPromptAction().showToast({ message: $r('app.string.phone_null') });
      return;
    }
    if (this.writeInformation.name !== '' && this.writeInformation.phone !== '' && this.writeInformation.age > 0.0) {
      this.saveData(this.writeInformation);
    }
    this.controller?.close();
  }
}