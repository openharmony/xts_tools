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
  Text,
  Color,
  TextAlign,
  Row,
  RowOptions,
  TextInput,
  InputType,
  FontStyle,
  FontWeight,
  EnterKeyType,
  Button,
  ButtonType,
  BarState,
  Alignment,
  ResourceStr,
  ColumnOptions,
  $r,
  AlertDialogParamWithConfirm,
  ButtonOptions
} from '@kit.ArkUI';

import util from '@ohos.util';
import { ScopeNumber } from '../../model/ScopeNumber';
import { TempView } from './scopehelper/TempView';
import { SleepView } from './scopehelper/SleepView';

const AGE_MIN: number = 16.0;
const AGE_MAX: number = 62.0;

// @Preview
@Component
export struct ScopeHelper {
  @State age: number = 0.0;
  @State tempMorning: number = 0.0;
  @State tempNoon: number = 1.0;
  @State tempNight: number = 2.0;
  @State shortTime: number = 0.0;
  @State longTime: number = 0.0;

  build() {
    Scroll() {
      Column({ space: 12.0 } as ColumnOptions) {
        Text($r('app.string.judge_age'))
          .fontSize(20.0)
          .fontColor(Color.White)
          .backgroundColor(Color.Gray)
          .textAlign(TextAlign.Start)
        Row({ space: 5.0 } as RowOptions) {
          TextInput({ placeholder: $r('app.string.age_placeholder') })
            .key('inputAge')
            .height('100%')
            .layoutWeight(6.0)
            .type(InputType.Number)
            .fontSize(24.0)
            .fontStyle(FontStyle.Italic)
            .maxLength(20.0)
            .fontWeight(FontWeight.Bold)
            .placeholderFont({ size: 24.0, weight: FontWeight.Normal })
            .enterKeyType(EnterKeyType.Go)
            .onChange((value: string) => {
              this.age = Number(value);
            })

          Button({} as ButtonOptions) {
            Text($r('app.string.age_analyse'))
              .fontColor(Color.White)
              .fontSize(16.0)
          }
          .key('ageAnalysis')
          .layoutWeight(4.0)
          .height(40.0)
          .type(ButtonType.Capsule)
          .onClick(() => {
            this.ageRange();
          })
        }
        .height(50.0)
        TempView()
        SleepView()
      }
      .width('100%')
      .padding(16.0)
    }
    .scrollBar(BarState.Off)
    .align(Alignment.Start)
  }

  dialog(title: ResourceStr, message: ResourceStr, value: ResourceStr) {
    this.getUIContext().showAlertDialog(
      {
        title: title,
        message: message,
        confirm: {
          value: value,
          action: () => {
          }
        },
      } as AlertDialogParamWithConfirm
    );
  }

  ageRange() {
    let tempLower = new ScopeNumber(AGE_MIN);
    let tempUpper = new ScopeNumber(AGE_MAX);
    let range = new util.ScopeHelper<ScopeNumber>(tempLower, tempUpper);
    let ageTemp = new ScopeNumber(this.age);
    if (range.contains(ageTemp)) {
      this.dialog($r('app.string.age'), $r('app.string.age_message_confirm'), $r('app.string.determine'));
    } else {
      this.dialog($r('app.string.age'), $r('app.string.age_message_not_confirm'), $r('app.string.determine'));
    }
  }
}