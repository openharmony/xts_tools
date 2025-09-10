'use static'
/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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
  Column,
  $r,
  Scroll,
  Button,
  ButtonAttribute,
  ClickEvent,
  Alignment,
  Margin,
  Padding
} from '@kit.ArkUI';
import  common  from '@ohos.app.ability.common'
import { PublicTitleBar } from './component/PublicTitleBar'
import ServiceExContextController from '../feature/ServiceExtContextController'

@Entry
@Component
struct ServiceExContextPage {
  private serviceExContext?: ServiceExContextController = undefined;
  aboutToAppear(){
    try {
      const uiContext = this.getUIContext();
      if (uiContext) {
        const context = uiContext.getHostContext() as common.UIAbilityContext;
        this.serviceExContext = new ServiceExContextController(context, uiContext)
      } else {
        console.error('UIContext is undefined')
      }
    } catch (err) {
      console.error('Failed to initialize controller:', err)
    }
  }
  build() {
    Column() {
      PublicTitleBar({ textName: $r("app.string.service_extension_contextPage") })
      Scroll() {
        Column() {
          Button($r("app.string.start_ability"))
            .fancy(() => {
              this.serviceExContext?.startAbility();
            })
          Button($r("app.string.start_service_extension_ability"))
            .fancy(() => {
              this.serviceExContext?.startServiceExtensionAbility();
            })
          Button($r("app.string.start_service_extension_ability_with_account"))
            .fancy(() => {
              this.serviceExContext?.startServiceExtensionAbilityWithAccount();
            })
          Button($r("app.string.stop_service_extension_ability"))
            .fancy(() => {
              this.serviceExContext?.stopServiceExtensionAbility();
            })
          Button($r("app.string.stop_service_extension_ability_with_account"))
            .fancy(() => {
              this.serviceExContext?.stopServiceExtensionAbilityWithAccount();
            })
          Button($r("app.string.terminate_self"))
            .fancy(() => {
              this.serviceExContext?.terminateSelf();
            })
          Button($r("app.string.connect_ability"))
            .fancy(() => {
              this.serviceExContext?.connectAbility();
            })
          Button($r("app.string.connect_ability_with_account"))
            .fancy(() => {
              this.serviceExContext?.connectAbilityWithAccount();
            })
          Button($r("app.string.disconnect_ability"))
            .fancy(() => {
              this.serviceExContext?.disconnectAbility();
            })
          Button($r("app.string.start_ability_with_account"))
            .fancy(() => {
              this.serviceExContext?.startAbilityWithAccount();
            })
        }
        .width('100%')
      }
      .layoutWeight(1)
      .width('100%')
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F1F3F5')
    .padding({ left: '3%', right: '3%' } as Padding)
  }
}

function fancy(this: ButtonAttribute, click: (event?: ClickEvent) => void): this {
  this.width('60%');
  this.height(40);
  this.align(Alignment.Center);
  this.margin({ top: 30 } as Margin);
  this.onClick(click);
  return this;
}