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
  LocalStorageLink,
  Column,
  Row,
  Text,
  Toggle,
  ToggleType,
  Color,
  FlexAlign,
  TextAlign,
  Slider,
  SliderStyle,
  SliderChangeMode,
  Button,
  ButtonType,
  Divider,
  ColumnOptions,
  $r,
  $rawfile,
  Margin,
  ClickEvent,
} from '@kit.ArkUI';

import router from '@ohos.router';
import common from '@ohos.app.ability.common';
import { ViewCodeText } from '../../../commoncomponents/ViewCodeText';
import { startSpecifiedAbility } from '../../../utils/StartAbilityUtils';
import { Context, UIContext } from '@ohos.arkui.UIContext';

@Component
export struct AbilityGlobalDataSyncCode {
  private minFontSize: number = 10.0;

  @LocalStorageLink('contentFontSize') contentFontSize: number = 18.0;

  @LocalStorageLink('currentModelStatus') currentModelStatus: boolean = true;
  private CONTEXT: common.UIAbilityContext = this.getUIContext().getHostContext() as common.UIAbilityContext;

  build() {
    Column({ space: 10.0 }as ColumnOptions) {
      ViewCodeText({ webSrc: $rawfile('AbilityGlobalDataSyncCode.ets.html') })
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
          })
      }.justifyContent(FlexAlign.SpaceAround)
      .width('70%')
      .border({ radius: 50.0, color: Color.Grey, width: $r('app.float.border_width') })

      Text($r('app.string.ability_storage_nightmodelsync'))
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
            min: 10.0,
            max: 30.0,
            style: SliderStyle.OutSet
          })
            .showTips(true)
            .onChange((value: number, mode: SliderChangeMode) => {
              this.contentFontSize = value;
            })
          Text(this.contentFontSize.toFixed(0.0))
            .fontColor(this.currentModelStatus ? $r('app.color.color_white') : $r('app.color.tips_font_color'))
            .fontSize($r('app.float.tips_font_size'))
        }
        .width('80%')
      }.margin({ top: 50.0 }as Margin)

      Text($r('app.string.ability_storage_fontsizesync'))
        .fontSize(this.contentFontSize)
        .fontColor(this.currentModelStatus ? $r('app.color.color_white') : $r('app.color.tips_font_color'))
        .width('100%')
        .textAlign(TextAlign.Center)
      Button('') {
        Text($r('app.string.enter_pageone'))
          .fontColor(this.currentModelStatus ? $r('app.color.color_white') : $r('app.color.button_text_color'))
          .fontSize(this.contentFontSize)
          .width('60%')
          .textAlign(TextAlign.Center)
      }
      .id('enterPageOne')
      .type(ButtonType.Capsule)
      .backgroundColor($r('app.color.button_background_color'))
      .padding($r('app.float.page_padding'))
      .onClick((event:ClickEvent) => {
        this.getUIContext().getRouter().pushUrl(
          { url: 'pages/applylevelstagemanagement/abilityglobaldatasync/LocalStoragePropPage' });
      })

      Button('') {
        Text($r('app.string.enter_pagetwo'))
          .fontColor(this.currentModelStatus ? $r('app.color.color_white') : $r('app.color.button_text_color'))
          .fontSize(this.contentFontSize)
          .width('60%')
          .textAlign(TextAlign.Center)
      }
      .id('enterPageTwo')
      .type(ButtonType.Capsule)
      .backgroundColor($r('app.color.button_background_color'))
      .padding($r('app.float.page_padding'))
      .onClick((event:ClickEvent) => {
        this.getUIContext().getRouter().pushUrl({ url: 'pages/applylevelstagemanagement/abilityglobaldatasync/LocalStorageLinkPage' });
      })

      Divider().width('100%').strokeWidth(1.0)
      Button('') {
        Text($r('app.string.enter_ability_outofsync'))
          .fontColor(this.currentModelStatus ? $r('app.color.color_white') : $r('app.color.button_text_color'))
          .fontSize(this.contentFontSize)
          .width('60%')
          .textAlign(TextAlign.Center)
      }
      .id('enterOutOfAbility')
      .type(ButtonType.Capsule)
      .backgroundColor($r('app.color.button_background_color'))
      .padding($r('app.float.page_padding'))
      .onClick((event:ClickEvent) => {
        startSpecifiedAbility(this.CONTEXT,'OutOfSyncAbility');
      })
    }
    .width('100%')
    .padding(10.0)
  }
}