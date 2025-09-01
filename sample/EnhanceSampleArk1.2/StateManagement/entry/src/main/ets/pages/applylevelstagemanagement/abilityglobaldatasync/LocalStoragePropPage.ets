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
  LocalStorage,
  Entry,
  Component,
  State,
  Resource,
  LocalStorageLink,
  Column,
  Text,
  TextAlign,
  Button,
  ButtonType,
  Row,
  Slider,
  SliderStyle,
  SliderChangeMode,
  AppStorage,
  $r,
  $rawfile,
  ColumnOptions,
  ClickEvent,
  Margin,
  StorageLink,

} from '@kit.ArkUI';

import { CodeView } from '../../../commoncomponents/CodeView';
import { ViewCodeText } from '../../../commoncomponents/ViewCodeText';
import { TitleBarDark } from '../../../commoncomponents/TitleBarDark';
import { TitleBar } from '../../../commoncomponents/TitleBar';

let storage: LocalStorage = new LocalStorage();

const __get_local_storage__ = (): LocalStorage => storage;
@Entry({ storage: "__get_local_storage__" })
@Component
struct StoragePropAbilityPage {
  @State title: Resource = $r('app.string.localStorage_pagetitleone');
  private minFontSize: number = 10.0;
  @StorageLink('currentModelStatus') currentModelStatus: boolean = true;
  @StorageLink('contentFontSize') contentFontSize: number = 18.0;
  build() {
    Column() {
      if (this.currentModelStatus) {
        TitleBarDark({ title: this.title })
      } else {
        TitleBar({ title: this.title })
      }
      CodeView({ title: this.title, isShowTitle: false }) {
        Column({ space: 20.0 }as ColumnOptions) {
          ViewCodeText({ webSrc: $rawfile('LocalStoragePropPage.ets.html') })
          Text($r('app.string.localStorage_both_data_binding'))
            .fontSize(this.contentFontSize)
            .fontColor(this.currentModelStatus ? $r('app.color.color_white') : $r('app.color.tips_font_color'))
            .width('100%')
            .textAlign(TextAlign.Center)
          Text($r('app.string.localStorage_single_data_binding'))
            .fontSize(this.contentFontSize)
            .fontColor(this.currentModelStatus ? $r('app.color.color_white') : $r('app.color.tips_font_color'))
            .width('100%')
            .textAlign(TextAlign.Center)
          Button('') {    //修改添加 ''
            Text(this.currentModelStatus ? $r('app.string.close_nightmode') : $r('app.string.start_nightmode'))
              .fontColor(this.currentModelStatus ? $r('app.color.color_white') : $r('app.color.button_text_color'))
              .fontSize(this.contentFontSize)
              .width('60%')
              .textAlign(TextAlign.Center)
          }
          .id('nightModeSwitchTwo')
          .padding($r('app.float.page_padding'))
          .type(ButtonType.Capsule)
          .backgroundColor($r('app.color.button_background_color'))
          .onClick((event:ClickEvent) => {
            this.currentModelStatus = !this.currentModelStatus;
          })

          Text($r('app.string.localStorage_nigntmode_both_binding'))
            .fontSize(this.contentFontSize)
            .fontColor(this.currentModelStatus ? $r('app.color.color_white') : $r('app.color.tips_font_color'))
            .width('100%')
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

          Text($r('app.string.localStorage_single_fontsize_binding'))
            .fontSize(this.contentFontSize)
            .fontColor(this.currentModelStatus ? $r('app.color.color_white') : $r('app.color.tips_font_color'))
            .width('100%')
            .textAlign(TextAlign.Center)
        }
        .padding($r('app.float.page_padding'))
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor(this.currentModelStatus ? $r('app.color.nightnode_color') : $r('app.color.background_shallow_grey'))
  }

  aboutToDisappear(): void {
    AppStorage.setOrCreate('sideBarShow', false);
  }
}