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
  UIContext,
  $r,
  Padding,
  Margin,
  ClickEvent,
  ColumnOptions,
  AlertDialogParamWithConfirm,
  ButtonOptions
} from '@kit.ArkUI';

import promptAction from '@ohos.promptAction';
import util from '@ohos.util';
import { getString } from 'common';
import { InputItem } from './InputItem';
import { ScopeNumber } from '../../../model/ScopeNumber';

const ZERO: number = 0.0;
const SLEEP_TIME_SHORT: number = 7.0;
const SLEEP_TIME_LONG: number = 10.0;

@Component
export struct SleepView {
  @State shortTime: number = ZERO;
  @State longTime: number = ZERO;

  build() {
    Column({ space: 12.0 }as ColumnOptions) {
      Text($r('app.string.judge_sleep'))
        .fontSize(20.0)
        .fontColor(Color.White)
        .backgroundColor(Color.Gray)
        .textAlign(TextAlign.Start)
        .margin({ top: 2.0 } as Margin)

      InputItem({
        textValue: $r('app.string.short_sleep'),
        placeHolder: $r('app.string.enter_sleep_time'),
        value: this.shortTime
      })
      InputItem({
        textValue: $r('app.string.long_sleep'),
        placeHolder: $r('app.string.enter_sleep_time'),
        value: this.longTime
      })

      Text($r('app.string.sleep_time'))
        .fontSize(18.0)
        .fontColor(Color.Red)

      Button({} as ButtonOptions) {
        Text($r('app.string.sleep_analyse'))
          .fontColor(Color.White)
          .fontSize(16.0)
          .textAlign(TextAlign.Center)
      }
      .key('sleepAnalysis')
      .type(ButtonType.Capsule)
      .width('100%')
      .height(45.0)
      .margin({ top: 10.0, bottom: 10.0 } as Margin)
      .backgroundColor(0x317aff)
      .onClick((e: ClickEvent) => {
        this.sleepRange();
      })
    }
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Start)
    .width('100%')
  }

  sleepRange() {
    if (this.shortTime <= ZERO || this.longTime <= ZERO) {
      this.getUIContext().getPromptAction().showToast({ message: $r("app.string.scope_sleep_tips") });
      return;
    }
    if (this.longTime <= this.shortTime) {
      this.getUIContext().getPromptAction().showToast({ message: $r("app.string.scope_sleep_tips_less") });
      return;
    }
    let timeLower = new ScopeNumber(SLEEP_TIME_SHORT);
    let timeUpper = new ScopeNumber(SLEEP_TIME_LONG);
    let timeRange = new util.ScopeHelper<ScopeNumber>(timeLower, timeUpper);
    let yTimeLower = new ScopeNumber(this.shortTime);
    let yTimeUpper = new ScopeNumber(this.longTime);
    let yTimeRange = new util.ScopeHelper<ScopeNumber>(yTimeLower, yTimeUpper);
    let message = getString($r("app.string.scope_expand"), this.getUIContext());
    try {
      message += `${timeRange.expand(yTimeRange)}`;
    } catch(e) {
      message += getString($r('app.string.empty'), this.getUIContext());
    }
    message += getString($r("app.string.scope_intersect"), this.getUIContext());
    try {
      message += `${timeRange.intersect(yTimeRange)}`;
    } catch(e) {
      message += getString($r('app.string.empty'), this.getUIContext());
    }
    this.getUIContext().showAlertDialog(
      {
        title: $r('app.string.sleep_analyse'),
        message: message,
        confirm: {
          value: $r('app.string.determine'),
          action: () => {
          }
        },
      } as AlertDialogParamWithConfirm
    );
  }
}