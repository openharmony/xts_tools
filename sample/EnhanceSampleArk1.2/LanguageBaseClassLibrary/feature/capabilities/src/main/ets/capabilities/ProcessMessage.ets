'use static'
/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
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
  Column,
  Button,
  Text,
  Color,
  ButtonType,
  AppStorage,
  FlexAlign,
  HorizontalAlign,
  $r,
  ButtonOptions
} from '@kit.ArkUI';

import { common, Want } from '@kit.AbilityKit';
import { BusinessError } from '@ohos.base';
import { logger } from 'common';

@Component
export struct ProcessMessage {

  build() {
    Column() {
      Button({} as ButtonOptions) {
        Text($r('app.string.process'))
          .fontSize(16.0)
          .fontColor(Color.White)
      }
      .width('100%')
      .height(50.0)
      .type(ButtonType.Capsule)
      .onClick(() => {
        let context: common.UIAbilityContext | undefined = AppStorage.get<common.UIAbilityContext>('context');
        let want: Want = {
          bundleName: "com.samples.process_message",
          abilityName: "EntryAbility",
        };
        if(context){
          context.startAbility(want,  (err: BusinessError | null, data: undefined) => {
            if (err && err.code) {
              logger.error('StartAbility', `Failed to startAbility. Code: ${err.code}, message: ${err.message}`);
            }
          });
        }
      })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
  }
}