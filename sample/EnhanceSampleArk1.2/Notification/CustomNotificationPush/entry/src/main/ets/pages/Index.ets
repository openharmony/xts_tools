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
import { CustomStyles } from '@kit.ArkUI';

import {
  Resource,
  TextAttribute,
  TextAlign,
  ColumnAttribute,
  Color,
  Entry,
  Component,
  // getUIContext,
  State,
  $r,
  Builder,
  Row,
  Text,
  Blank,
  Checkbox,
  CommonMethod,
  Column,
  Toggle,
  ToggleType,
  ForEach,
  Margin,
  Padding,
  Context,
} from '@kit.ArkUI';

import { notificationFilter, ContentCallBackType } from '../feature/NotificationFilterUtil';
import { UIContext } from '@ohos.arkui.UIContext';

interface checkBoxesMsg {
  text: Resource,
  enable: boolean,
  contentType: ContentCallBackType
}

function listTitleStyle(this: TextAttribute): this {
    this.textAlign(TextAlign.Start);
    this.fontWeight(500);
    this.fontSize(22);
    this.fontFamily('HarmonyHeiTi-Medium');
    this.opacity(1);
    return this;
}

function cardStyle(this: ColumnAttribute): this {
    this.backgroundColor(Color.White);
    this.borderRadius(24);
    this.width('100%');
    this.margin({ top: 0 } as Margin);
    this.padding(15);
    return this;
}

@Entry
@Component
struct Index {
  context: Context | undefined = this.getUIContext().getHostContext();
  @State isNotificationOn: boolean = false;
  @State isStaticSubscribeEnable: boolean = false;
  @State checkBoxes: checkBoxesMsg[] = [
    {
      text: $r('app.string.basic_notification'),
      enable: false,
      contentType: ContentCallBackType.CALLBACK_NOTIFICATION_CONTENT_BASIC_TEXT
    } as checkBoxesMsg,
    {
      text: $r('app.string.long_text_notification'),
      enable: false,
      contentType: ContentCallBackType.CALLBACK_NOTIFICATION_CONTENT_LONG_TEXT
    } as checkBoxesMsg,
    {
      text: $r('app.string.multiline_notification'),
      enable: false,
      contentType: ContentCallBackType.CALLBACK_NOTIFICATION_CONTENT_MULTILINE
    } as checkBoxesMsg,
    {
      text: $r('app.string.picture_notification'),
      enable: false,
      contentType: ContentCallBackType.CALLBACK_NOTIFICATION_CONTENT_PICTURE
    } as checkBoxesMsg]

  @Builder TitleBar(title: Resource) {
    Row() {
      Text(title)
        .fontWeight(700)
        .fontSize(24)
        .margin({ left: 12 } as Margin)
    }
    .width('100%')
    .height(56)
    .backgroundColor($r('app.color.title_bar_background'))

  }

  @Builder viewCheckBox(checkBox: checkBoxesMsg, index: number) {
    Row() {
      Text(checkBox.text)
        .fontSize(16)
        .margin({ left: 36 } as Margin);
      Blank();
      Checkbox({
        name: this.context?.resourceManager?.getStringSync(checkBox.text.id),
      })
        .select(checkBox.enable)
        .margin({ right: 20 } as Margin)
        .height(20)
        .width(20)
        .borderRadius(4)
        .id('checkbox' + index)
        // .selectedColor(0x007DFF)  // TODO: 未排查是否有影响
        .selectedColor("0x007DFF")
        .onChange((value: boolean) => {
          // console.log(`复选框 ${index} 状态变化:`, value);
          notificationFilter.setContentTypeDisable(checkBox.contentType, value);
        });
    }.width('100%')
    .height(48)
    .margin({ top: 0 } as Margin);
  }

  toggleStyle: CustomStyles = (instance: CommonMethod): void => {
    instance.width(36);
    instance.height(20);
    instance.margin({ right: 12 } as Margin);
  };

  build() {
    Column() {
      this.TitleBar($r('app.string.EntryAbility_label'))

      Column() {
        Row() {
          Text($r('app.string.notification_filter_text'))
            .listTitleStyle()
          Blank()
          Toggle({ type: ToggleType.Switch, isOn: this.isNotificationOn })
            // .applyStyles(this.toggleStyle)
            .selectedColor(0x007DFF)
            .id('toggle')
            .onChange((value: boolean) => {
              // console.log('Toggle变化，新值:', value);
              this.isNotificationOn = value;
              // console.log('通知过滤状态:', value ? '开启' : '关闭');
              notificationFilter.setNotificationEnableFilter(value);
            })
        }
        .height(48)
        .width('100%');

        if (this.isNotificationOn) {
          // console.log('显示复选框列表，isNotificationOn:', this.isNotificationOn);
          ForEach(this.checkBoxes, (item: checkBoxesMsg, index: number) => {
            this.viewCheckBox(item, index);
          }, (item: checkBoxesMsg) => item.toString());
        }/* else {
          console.log('隐藏复选框列表，isNotificationOn:', this.isNotificationOn);
        }*/
      }
      .cardStyle()
    }.width('100%')
    .height('100%')
    .backgroundColor($r('app.color.background_light_gray'))
    .padding({ left: 20, right: 20 } as Padding)
  }
}
