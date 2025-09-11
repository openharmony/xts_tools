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
  Color,
  TextAlign,
  Button,
  ButtonType,
  HorizontalAlign,
  FlexAlign,
  ResourceStr,
  $r,
  Padding,
  Margin,
  ClickEvent,
  ColumnOptions,
  UIContext,
  AlertDialogParamWithConfirm,
  ButtonOptions
} from '@kit.ArkUI';

import util from '@ohos.util';
import { getString } from 'common';
import { InputItem } from './InputItem';
import { ScopeNumber } from '../../../model/ScopeNumber';

const ZERO: number = 0.0;
const TEMPERATURE_MIN: number = 36.0;
const TEMPERATURE_MAX: number = 37.2;

@Component
export struct TempView {
  @State tempMorning: number = ZERO;
  @State tempNoon: number = ZERO;
  @State tempNight: number = ZERO;

  build() {
    Column({ space: 12.0 }as ColumnOptions) {
      Text($r('app.string.judge_temp'))
        .fontSize(20.0)
        .fontColor(Color.White)
        .backgroundColor(Color.Gray)
        .textAlign(TextAlign.Start)
        .margin({ top: 2.0 } as Margin)
      InputItem({
        textValue: $r('app.string.temp_morning'),
        placeHolder: $r('app.string.morning_placeholder'),
        value: this.tempMorning
      })
      InputItem({
        textValue: $r('app.string.temp_noon'),
        placeHolder: $r('app.string.noon_placeholder'),
        value: this.tempNoon
      })
      InputItem({
        textValue: $r('app.string.temp_night'),
        placeHolder: $r('app.string.night_placeholder'),
        value: this.tempNight
      })
      Button({} as ButtonOptions) {
        Text($r('app.string.temp_analyse'))
          .fontColor(Color.White)
          .fontSize(16.0)
      }
      .key('temperatureAnalysis')
      .type(ButtonType.Capsule)
      .width('100%')
      .height(45.0)
      .backgroundColor(0x317aff)
      .onClick((e: ClickEvent) => {
        this.tempRange();
      })
    }
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Start)
    .width('100%')
  }

  alertDialog(title: ResourceStr, message: ResourceStr, value: ResourceStr) {
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

  tempRange() {
    if (this.tempMorning <= ZERO || this.tempNoon <= ZERO || this.tempNight <= ZERO) {
      this.getUIContext().getPromptAction().showToast({ message: $r("app.string.scope_temp_tips") });
      return;
    }
    let arrLength: number = 3.0;
    let arr: Array<number> = new Array<number>(this.tempMorning, this.tempNoon, this.tempNight).sort();
    let max = new ScopeNumber(arr[2]);
    let min = new ScopeNumber(arr[0]);
    let tempLower = new ScopeNumber(TEMPERATURE_MIN);
    let tempUpper = new ScopeNumber(TEMPERATURE_MAX);
    let standardRange =  new util.ScopeHelper<ScopeNumber>(tempLower, tempUpper);
    if (standardRange.contains(min) && standardRange.contains(max)) {
      this.alertDialog($r('app.string.temperature'), getString($r('app.string.temp_min'), this.getUIContext())
        + min + getString($r('app.string.temp_max'), this.getUIContext()) + max
        + getString($r('app.string.temp_normal_range'), this.getUIContext()), $r('app.string.determine'));
    } else {
      this.alertDialog($r('app.string.temperature'), $r('app.string.temp_message_abnormal'), $r('app.string.determine'));
    }
  }
}