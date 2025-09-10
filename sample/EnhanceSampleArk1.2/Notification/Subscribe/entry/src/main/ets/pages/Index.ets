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
  Entry,
  Component,
  State,
  Builder,
  Text,
  TextAlign,
  Flex,
  FlexAlign,
  ItemAlign,
  FlexDirection,
  Column,
  $r,
  Row,
  Image,
  TextOverflow,
  WordBreak,
  Button,
  // getUIContext,
  Margin,
  Padding,
} from '@kit.ArkUI';

import promptAction from '@ohos.promptAction';
import notificationSubscribe from '@ohos.notificationSubscribe';
import notificationManager from '@ohos.notificationManager';
// import Base from '@ohos.base';
import { BusinessError } from '@ohos.base'
import image from '@ohos.multimedia.image';
// import { Level } from '@ohos/hypium';
import { UIContext } from '@ohos.arkui.UIContext';

@Entry
@Component
struct Subscribe {
  @State bundleName: string = '';
  @State pixelMap: image.PixelMap | undefined = undefined;

  //@State bundleNames: Array<string> = [];
  @State bundleNames: Array<string> = [] as Array<string>;
  @State notificationSubscribeContent: string = '';
  @State showSubscribeFlag: Boolean = false;
  @State notifications: string = 'content';

  @Builder
  overlayContent() {
    Text(this.bundleNames[0])
      .fontSize(20)
      .fontColor('#FFFFFF')
      .textAlign(TextAlign.Center)
  }

  build() {
    Flex() {
      Flex({
        justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center, direction: FlexDirection.Column
      }) {
        Column() {
          Text($r('app.string.notionContent'))
            .fontWeight('HarmonyHeiTi-Medium')
            .fontSize(40)
            .fontColor('#000000')
            .textAlign(TextAlign.Start)
            .lineHeight(82)
            .fontWeight(500)
            .padding({ bottom: 40, left: 24 } as Padding)
            .width('100%')
          if (this.showSubscribeFlag === true) {
            Column() {
              Row() {
                Image($r('app.media.notification'))
                  .width(96)
                  .height(96)
                  .margin({ right: 16 } as Margin)
                Column() {
                  Text($r('app.string.notificationTitle'))
                    .margin({ bottom: 8 } as Margin)
                    .fontFamily('HarmonyHeiTi-Medium')
                    .fontSize(32)
                    .fontColor('#182431')
                    .lineHeight(44)
                    .textAlign(TextAlign.Start)
                    .width('100%')
                    .fontWeight(500)
                  Text(this.notificationSubscribeContent)
                    .width('100%')
                    .opacity(0.8)
                    .fontFamily('HarmonyHeiTi')
                    .fontSize(18)
                    .fontColor('#182431')
                    .lineHeight(38)
                    .fontWeight(400)
                    .textAlign(TextAlign.Start)
                    .maxLines(1)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                    .wordBreak(WordBreak.BREAK_ALL)
                }
                .layoutWeight(1)
                .margin({ left: 20, bottom: 40 } as Margin)

              }

              Button($r('app.string.pullNotification'))
                .fontFamily('HarmonyHeiTi-Medium')
                .fontSize(32)
                .width('100%')
                .fontColor('#FFFFFF')
                .backgroundColor('#007DFF')
                .fontWeight(500)
                .height(80)
                .margin({ left: 24, right: 24 } as Margin)
                .onClick((): void => {
                  // 包信息
                  let bundle: notificationManager.BundleOption = {
                    bundle: 'com.samples.notificationpublish'
                  };
                  // 通知ID
                  let notificationId: int = 1;
                  // 按钮信息
                  let buttonOptions: notificationManager.ButtonOptions = {
                    buttonName: this.notifications,
                  }
                  notificationManager.triggerSystemLiveView(bundle, notificationId, buttonOptions).then((data) => {
                    this.getUIContext().getPromptAction().showToast({
                      message: $r('app.string.pullSuccess'),
                      duration: 2000,
                      bottom: 464
                    })
                  }).catch((error: Error) => {
                    console.error(`triggerSystemLiveView fail: ${JSON.stringify(error)}`);
                  });
                })
            }
            .backgroundColor('#FFFFFF')
            .borderRadius(16)
            .padding({ top: 32, bottom: 32, left: 24, right: 24 } as Padding)
          }
        }

        Row() {
          Button($r('app.string.subscribeNotification'))
            .fontFamily('HarmonyHeiTi-Medium')
            .fontSize(32)
            .width('100%')
            .fontColor('#FFFFFF')
            .padding({ top: 18, bottom: 18 } as Padding)
            .fontWeight(500)
            .backgroundColor('#007DFF')
            .height(80)
            .margin({ bottom: 48 } as Margin)
            .onClick((): void => {
              let subscribeCallback = (err: BusinessError<void>|null ,data: undefined) => {
                if (err) {
                  console.error(`subscribe failed, code is ${err.code}, message is ${err.message}`);
                } else {
                  this.getUIContext().getPromptAction().showToast({
                    message: $r('app.string.subscribeSuccess'),
                    duration: 2000,
                    bottom: 464
                  })
                }
              }
              let onConsumeCallback = (data: notificationSubscribe.SubscribeCallbackData) => {
                console.info('SubscribeCallbackData', JSON.stringify(data))
                // let icons: Array<image.PixelMap> | undefined = data.request?.content?.systemLiveView?.button?.icons || [];
                let icons: image.PixelMap[] | undefined = data.request?.content?.systemLiveView?.button?.icons || [] as image.PixelMap[];
                // let names = data.request?.content?.systemLiveView?.button?.names || [];
                let names: string[] | undefined = data.request?.content?.systemLiveView?.button?.names || [] as string[];
                //this.bundleNames[0] = names[0] || '';    yu
                this.bundleNames[0] = names![0]!;
                this.showSubscribeFlag = true;
                this.notificationSubscribeContent = 'content：' + this.bundleNames[0]
                this.pixelMap = icons?.pop()
              }
              let subscriber: notificationSubscribe.NotificationSubscriber = {
                onConsume: onConsumeCallback
              };
              notificationSubscribe.subscribe(subscriber, subscribeCallback);
            })
        }
        .padding({ left: 24, right: 24 } as Padding)
      }
      .padding({ left: 24, right: 24 } as Padding)
    }
    .backgroundColor('#F1F3F5')
    .width('100%')
    .height('100%')
  }
}
