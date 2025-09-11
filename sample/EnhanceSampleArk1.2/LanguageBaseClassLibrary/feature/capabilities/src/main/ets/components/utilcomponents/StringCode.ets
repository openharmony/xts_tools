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
  // Preview,
  Component,
  State,
  Scroll,
  Column,
  Row,
  Text,
  TextAlign,
  Button,
  FontWeight,
  Color,
  Divider,
  BarState,
  Alignment,
  $r,
  Padding,
  Margin,
  ClickEvent,
  ColumnOptions,
  ButtonOptions
} from '@kit.ArkUI';

import util from '@ohos.util';
import { getString } from 'common';
import { SpecInput } from './stringcode/SpecInput';

// @Preview
@Component
export struct StringCode {
  @State specStrInput_f: string = '';
  @State specStrInput_s: string = '';
  @State specStrInput_d: string = '';
  @State specStrInput_i: string = '';
  @State resen: string = '';
  @State resdec: string = '';
  @State read: string = '';
  @State write: string = '';
  private resArray: Uint8Array = new Uint8Array(0);

  build() {
    Scroll() {
      Column({ space: 12.0 } as ColumnOptions) {
        Row() {
          Text($r('app.string.SpecString'))
            .fontSize(15.0)
            .textAlign(TextAlign.Start)
          Text($r('app.string.SpecString_info'))
            .fontSize(15.0)
            .textAlign(TextAlign.Start)
        }

        SpecInput({ result_str: $r('app.string.result_f'), specStrInput: this.specStrInput_f })
        SpecInput({ result_str: $r('app.string.result_i'), specStrInput: this.specStrInput_i })
        SpecInput({ result_str: $r('app.string.result_d'), specStrInput: this.specStrInput_d })
        SpecInput({ result_str: $r('app.string.result_s'), specStrInput: this.specStrInput_s })
        Button({} as ButtonOptions) {
          Text($r('app.string.SpecFormOutput'))
            .fontSize(15.0)
            .fontWeight(FontWeight.Bold)
            .fontColor(Color.White)
        }
        .id('specFormatOutput')
        .width('100%')
        .height(40.0)
        .onClick((e:ClickEvent):void => {
          this.specStrInput_f = util.format("%f", "OpenHarmony 3.0")
          this.specStrInput_i = util.format("%i", "OpenHarmony 3.0")
          this.specStrInput_d = util.format("%d", "OpenHarmony 3.0")
          this.specStrInput_s = util.format("%s", "OpenHarmony 3.0")
        })

        Divider()
          .strokeWidth(4.0)
          .color($r('sys.color.ohos_id_color_floating_button_shadow_end'))

        Row() {
          Text($r('app.string.SpecString'))
            .fontSize(15.0)
            .textAlign(TextAlign.Start)
          Text($r('app.string.StringCodec_info'))
            .fontSize(15.0)
            .margin({ left: 5.0 }as Margin)
            .textAlign(TextAlign.Start)
        }

        Row() {
          Text($r('app.string.result'))
            .width('20%')
            .height(30.0)
            .fontSize(15.0)
            .textAlign(TextAlign.Start)
          Text(this.resen)
            .height(60.0)
            .fontSize(15.0)
            .layoutWeight(1.0)
            .maxLines(2.0)
            .textAlign(TextAlign.Start)
            .border({ width: 2.0, radius: 5.0, color: $r('app.color.text_color') })
        }
        .margin({ top: 20.0 } as Margin)
        .width('100%')

        Row() {
          Text($r('app.string.read'))
            .width('20%')
            .fontSize(15.0)
            .textAlign(TextAlign.Start)
          Text(this.read)
            .id('read')
            .width('30%')
            .fontSize(15.0)
            .height(30.0)
            .textAlign(TextAlign.Start)
            .border({ width: 2.0, radius: 5.0, color: $r('app.color.text_color') })
          Text($r('app.string.write'))
            .width('20%')
            .fontSize(15.0)
            .textAlign(TextAlign.Center)
          Text(this.write)
            .id('write')
            .width('30%')
            .fontSize(15.0)
            .height(30.0)
            .textAlign(TextAlign.Start)
            .border({ width: 2.0, radius: 5.0, color: $r('app.color.text_color') })
        }
        .width('100%')

        Button({} as ButtonOptions) {
          Text($r('app.string.Text_encoder'))
            .fontColor(Color.White)
            .fontSize(15.0)
            .fontWeight(FontWeight.Bold)
        }
        .id('textEncoder')
        .width('100%')
        .height(40.0)
        .onClick((event: ClickEvent):void => {
          this.textEncode();
        })

        Row() {
          Text($r('app.string.result'))
            .width('20%')
            .height(30.0)
            .fontSize(15.0)
            .textAlign(TextAlign.Start)
            .fontColor(Color.Black)
          Text(this.resdec)
            .id('decRes')
            .width('80%')
            .height(60.0)
            .fontSize(15.0)
            .textAlign(TextAlign.Start)
            .maxLines(2.0)
            .border({ width: 2.0, radius: 5.0, color: $r('app.color.text_color') })
        }
        .margin({ top: 20.0 } as Margin)
        .width(300.0)

        Button({} as ButtonOptions) {
          Text($r('app.string.Text_decoder'))
            .fontColor(Color.White)
            .fontSize(15.0)
            .fontWeight(FontWeight.Bold)
        }
        .id('textDecoder')
        .width('100%')
        .height(40.0)
        .margin({ bottom: 50.0 }as Margin)
        .onClick((event: ClickEvent):void => {
          this.textDecode();
        })
      }
      .width('100%')
      .padding(16.0)
    }
    .scrollBar(BarState.Off)
    .align(Alignment.Start)
  }

  textEncode() {
    let textEncoder = new util.TextEncoder();
    let buffer = new ArrayBuffer(100.0);
    this.resArray = new Uint8Array(buffer);
    this.resArray = textEncoder.encodeInto(getString($r('app.string.message'), this.getUIContext()));
    let resArratNum = textEncoder.encodeIntoUint8Array(getString($r('app.string.message'), this.getUIContext()),
      this.resArray);
    this.resen = this.resArray.toString();
    this.read = JSON.stringify(resArratNum?.read??0);
    this.write = JSON.stringify(resArratNum?.written??0);
  }

  textDecode() {
    let textDecoder = util.TextDecoder.create('utf-8', { ignoreBOM: true });
    if (this.resArray === undefined) {
      return;
    }
    this.resdec = textDecoder.decodeToString(this.resArray, { stream: false });
  }
}