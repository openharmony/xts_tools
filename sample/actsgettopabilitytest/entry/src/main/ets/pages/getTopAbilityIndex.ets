/**
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import hilog from '@ohos.hilog';
import { BusinessError, commonEventManager } from '@kit.BasicServicesKit';
import { common } from '@kit.AbilityKit';
import abilityManager from "@ohos.app.ability.abilityManager"


const TAG: string = 'getTopAbilityIndex-Page ';

@Entry
@Component
struct getTopAbilityIndex {
  @State callbackResult: string = 'callbackResult';
  @State promiseResult: string = 'promiseResult';

  aboutToAppear() {
    hilog.info(0x0000, TAG, '%{public}s', 'getTopAbilityIndex aboutToAppear');
  }

  onPageShow(): void {
    hilog.info(0x0000, TAG, '%{public}s', 'getTopAbilityIndex onPageShow');
  }

  build() {
    Row() {
      Column() {
        Text("getTopAbilityIndex")
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        Button('getTopAbility,Callback方式')
          .margin({top: 10})
          .id('SUB_Ability_AbilityRuntime_GetTopAbility_0100')
          .onClick(() => {
            let TAG = 'SUB_Ability_AbilityRuntime_GetTopAbility_0100_button';
            abilityManager.getTopAbility((err: BusinessError, data) => {
              if (err) {
                hilog.info(0x0000, TAG, "[%{public}s] getTopAbility fail, err.code: %{public}s, err.message: %{public}s", TAG, JSON.stringify(err.code), JSON.stringify(err.message));
              }
              hilog.info(0x0000, TAG, "[%{public}s] getTopAbility callback, data: %{public}s", TAG, JSON.stringify(data));
              this.callbackResult = `callbackResult. bundleName: ${data.bundleName}\nabilityName: ${data.abilityName}`;
              let options: commonEventManager.CommonEventPublishData = {
                code: 1,
                parameters: {
                  'result': this.callbackResult
                }
              };
              commonEventManager.publish('getTopAbility_event', options, (err: BusinessError) => {
                if (err) {
                  hilog.info(0x0000, TAG, "[%{public}s] PublishCallBack err: %{public}s", TAG, JSON.stringify(err));
                } else {
                  hilog.info(0x0000, TAG, "[%{public}s] Publish success", TAG);
                }
              });
            });
          })
        Text(this.callbackResult)

        Button('getTopAbility,Promise方式')
          .margin({top: 10})
          .id('SUB_Ability_AbilityRuntime_GetTopAbility_0200')
          .onClick(() => {
            let TAG = 'SUB_Ability_AbilityRuntime_GetTopAbility_0200_button';
            abilityManager.getTopAbility()
              .then((data) => {
                hilog.info(0x0000, TAG, "[%{public}s] getTopAbility promise, data: %{public}s", TAG, JSON.stringify(data));
                this.promiseResult = `promiseResult. bundleName: ${data.bundleName}\nabilityName: ${data.abilityName}`;
                let options: commonEventManager.CommonEventPublishData = {
                  code: 1,
                  parameters: {
                    'result': this.promiseResult
                  }
                };
                commonEventManager.publish('getTopAbility_event', options, (err: BusinessError) => {
                  if (err) {
                    hilog.info(0x0000, TAG, "[%{public}s] PublishCallBack err: %{public}s", TAG, JSON.stringify(err));
                  } else {
                    hilog.info(0x0000, TAG, "[%{public}s] Publish success", TAG);
                  }
                });
              })
              .catch((err: BusinessError) => {
                hilog.info(0x0000, TAG, "[%{public}s] getTopAbility fail, err.code: %{public}s, err.message: %{public}s", TAG, JSON.stringify(err.code), JSON.stringify(err.message));
              })
          })
        Text(this.promiseResult)

      }
      .width('100%')
    }
    .height('100%')
  }
}