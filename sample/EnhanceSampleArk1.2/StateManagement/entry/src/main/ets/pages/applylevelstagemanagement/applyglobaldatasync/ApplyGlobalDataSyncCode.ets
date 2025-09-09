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
  StorageLink,
  Column,
  Row,
  Text,
  Toggle,
  ToggleType,
  Color,
  AppStorage,
  FlexAlign,
  TextAlign,
  Slider,
  SliderStyle,
  SliderChangeMode,
  Button,
  ButtonType,
  ColumnOptions,
  $r,
  $rawfile,
  ClickEvent,
  Margin,
} from '@kit.ArkUI';

import common from '@ohos.app.ability.common';
import { ViewCodeText } from '../../../commoncomponents/ViewCodeText';
import { startSpecifiedAbility } from '../../../utils/StartAbilityUtils';

@Component
export struct ApplyGlobalDataSyncCode {
  @StorageLink('contentFontSize') contentFontSize: number = 18.0;
  @StorageLink('currentModelStatus') currentModelStatus: boolean = true;
  private minFontSize: number = 10.0;
  private CONTEXT: common.UIAbilityContext = this.getUIContext().getHostContext() as common.UIAbilityContext;

  build() {
    Column({ space: 10.0 }as ColumnOptions) {
      ViewCodeText({ webSrc: $rawfile('ApplyGlobalDataSyncCode.ets.html') })
      Row() {
        Text($r('app.string.nightmode'))
          .fontSize(this.contentFontSize)
          .fontColor(this.currentModelStatus ? $r('app.color.color_white') : $r('app.color.tips_font_color'))
        Toggle({ type: ToggleType.Switch, isOn: this.currentModelStatus })
          .id('nightModeSwitch')
          .selectedColor(Color.Blue)
          .switchPointColor(Color.White)
          .onChange((isOn: boolean) => {
            this.currentModelStatus = isOn;
            AppStorage.set<boolean>('currentModelStatus', this.currentModelStatus);
          })
      }.justifyContent(FlexAlign.SpaceAround)
      .width('70%')
      .border({ radius: 50.0, color: Color.Grey, width: $r('app.float.border_width') })

      Text($r('app.string.nightmode_text'))
        .fontSize(this.contentFontSize)
        .fontColor(this.currentModelStatus ? $r('app.color.color_white') : $r('app.color.tips_font_color'))
        .textAlign(TextAlign.Center)
      Column() {
        Text($r('app.string.fontSize_text'))
          .fontSize(this.contentFontSize)
          .fontColor(this.currentModelStatus ? $r('app.color.color_white') : $r('app.color.tips_font_color'))
          .width('100%')
          .textAlign(TextAlign.Center)
        Row() {
          Text(`${this.minFontSize}`)
            .fontColor(this.currentModelStatus ? $r('app.color.color_white') : $r('app.color.tips_font_color'))
            .fontSize($r('app.float.tips_font_size'))
          Slider({
            value: this.contentFontSize,
            min: this.minFontSize,
            max: 30.0,
            style: SliderStyle.OutSet
          })
            .showTips(true)
            .onChange((value: number, mode: SliderChangeMode) => {
              this.contentFontSize = value;
              AppStorage.set<number>('contentFontSize', this.contentFontSize);
            })
          Text(this.contentFontSize.toFixed(0.0))
            .fontColor(this.currentModelStatus ? $r('app.color.color_white') : $r('app.color.tips_font_color'))
            .fontSize($r('app.float.tips_font_size'))
        }
        .width('80%')
      }.margin({ top: 50.0 }as Margin)

      Text($r('app.string.fontSize_singlesync_textone'))
        .fontSize(this.contentFontSize)
        .fontColor(this.currentModelStatus ? $r('app.color.color_white') : $r('app.color.tips_font_color'))
        .width('100%')
        .textAlign(TextAlign.Center)
      Button('') {
        Text($r('app.string.enter_abilityone'))
          .fontColor(this.currentModelStatus ? $r('app.color.color_white') : $r('app.color.button_text_color'))
          .fontSize(this.contentFontSize)
          .width('60%')
          .textAlign(TextAlign.Center)
      }
      .id('enterAbilityOne')
      .type(ButtonType.Capsule)
      .backgroundColor($r('app.color.button_background_color'))
      .padding($r('app.float.page_padding'))
      .onClick((event:ClickEvent) => {
        startSpecifiedAbility(this.CONTEXT, 'StoragePropAbility');
      })

      Button('') {
        Text($r('app.string.enter_abilitytwo'))
          .fontColor(this.currentModelStatus ? $r('app.color.color_white') : $r('app.color.button_text_color'))
          .fontSize(this.contentFontSize)
          .width('60%')
          .textAlign(TextAlign.Center)
      }
      .id('enterAbilityTwo')
      .type(ButtonType.Capsule)
      .backgroundColor($r('app.color.button_background_color'))
      .padding($r('app.float.page_padding'))
      .onClick((event:ClickEvent) => {
        startSpecifiedAbility(this.CONTEXT, 'StorageLinkAbility');
      })
    }.padding($r('app.float.page_padding'))
  }
}