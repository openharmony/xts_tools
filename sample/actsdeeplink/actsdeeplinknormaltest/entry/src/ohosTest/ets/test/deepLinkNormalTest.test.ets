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

import { hilog } from '@kit.PerformanceAnalysisKit';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import { BusinessError, commonEventManager } from '@kit.BasicServicesKit';
import { common } from '@kit.AbilityKit';

let TAG = 'RunTimeTest';
let uiAbilityContext: common.UIAbilityContext;

function sleep(ms: number) {
  return new Promise<string>(resolve => setTimeout(resolve, ms));
}

export default function deepLinkNormalTest() {
  describe('deepLinkNormalTest', () => {
    beforeAll(() => {
      uiAbilityContext = AppStorage.get<Context>('abilityContext') as common.UIAbilityContext;
    })
    beforeEach(() => {

    })
    afterEach(() => {

    })
    afterAll(() => {

    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_deeplink_1100
     * @tc.name    SUB_Ability_AbilityRuntime_deeplink_1100
     * @tc.desc    The three-party app calls UIAbilityContext.startAbility to implicitly start the three-party app, only configuring the action, and the action contains special characters
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_deeplink_1100', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_deeplink_1100';
      let commonEventSubscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: ["onCreate_event"]
      };
      let subscriber : commonEventManager.CommonEventSubscriber;
      await commonEventManager.createSubscriber(commonEventSubscribeInfo)
        .then((commonEventSubscriber: commonEventManager.CommonEventSubscriber) => {
          subscriber = commonEventSubscriber;
          hilog.info(0x0000, TAG, "[%{public}s] createSubscriber succeed", TAG);
          commonEventManager.subscribe(subscriber, (err: BusinessError, commonEventData: commonEventManager.CommonEventPublishData) => {
            hilog.info(0x0000, TAG, "[%{public}s] subscribe callback. Gained commonEventData: %{public}s", TAG, JSON.stringify(commonEventData));
            try {
              expect(JSON.stringify(commonEventData.parameters?.action)).assertEqual(JSON.stringify('-~!@#$ %^&*'));
            } catch {
            }
            commonEventManager.unsubscribe(commonEventSubscriber, (err, data) => {
              hilog.info(0x0000, TAG, "[%{public}s] unsubscribe callback. err: %{public}s, data: %{public}s", TAG, JSON.stringify(err), JSON.stringify(data));
              done();
            });
          })
          let want: Want = {
            action: '-~!@#$ %^&*'
          };
          uiAbilityContext.startAbility(want)
            .then(() => {
              hilog.info(0x0000, TAG, "[%{public}s] Successfully started Ability", TAG);
            })
            .catch((error: BusinessError) => {
              hilog.info(0x0000, TAG, "[%{public}s] Start Ability error: %{public}s", TAG, JSON.stringify(error));
            })
        })
    })

  })
}