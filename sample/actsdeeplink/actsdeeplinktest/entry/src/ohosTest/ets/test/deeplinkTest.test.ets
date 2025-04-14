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
import { common } from '@kit.AbilityKit';
import { BusinessError, commonEventManager } from '@kit.BasicServicesKit';

let TAG = 'RunTimeTest';
let uiAbilityContext: common.UIAbilityContext;

function sleep(ms: number) {
  return new Promise<string>(resolve => setTimeout(resolve, ms));
}

export default function deeplinkTest() {
  describe('deeplinkTest', () => {
    beforeAll(() => {
      uiAbilityContext = AppStorage.get<Context>('abilityContext') as common.UIAbilityContext;
    })

    beforeEach(() => {

    })

    afterEach(async () => {
      await sleep(2000);
    })

    afterAll(() => {

    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_deeplink_0100
     * @tc.name    SUB_Ability_AbilityRuntime_deeplink_0100
     * @tc.desc    The system app calls UIAbilityContext.startAbility to implicitly start the three-party app, only configuring the action, and the action contains special characters
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_deeplink_0100', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_deeplink_0100';
      let commonEventSubscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: ["onCreate_event"]
      };
      let subscriber : commonEventManager.CommonEventSubscriber;
      await commonEventManager.createSubscriber(commonEventSubscribeInfo)
        .then((commonEventSubscriber: commonEventManager.CommonEventSubscriber) => {
          subscriber = commonEventSubscriber;
          hilog.info(0x0000, TAG, "[%{public}s] createSubscriber succeed", TAG);
          commonEventManager.subscribe(subscriber, (err: BusinessError, commonEventData: commonEventManager.CommonEventPublishData) => {
            hilog.info(0x0000, TAG, "[%{public}s] subscribe callback. subscriber: %{public}s", TAG, JSON.stringify(subscriber));
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

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_deeplink_0200
     * @tc.name    SUB_Ability_AbilityRuntime_deeplink_0200
     * @tc.desc    The system app calls UIAbilityContext.startAbility to implicitly start the three-party app, only configuring the entities, and the entities contains special characters
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_deeplink_0200', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_deeplink_0200';
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
              expect(JSON.stringify(commonEventData.parameters?.entities)).assertEqual(JSON.stringify(['-~!@#$ %^&*']));
            } catch {
            }
            commonEventManager.unsubscribe(commonEventSubscriber, (err, data) => {
              hilog.info(0x0000, TAG, "[%{public}s] unsubscribe callback. err: %{public}s, data: %{public}s", TAG, JSON.stringify(err), JSON.stringify(data));
              done();
            });
          })
          let want: Want = {
            entities: ['-~!@#$ %^&*']
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

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_deeplink_0300
     * @tc.name    SUB_Ability_AbilityRuntime_deeplink_0300
     * @tc.desc    The system app calls UIAbilityContext.startAbility to implicitly start the three-party app, configuring the scheme as special characters, and the host as normal string.
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_deeplink_0300', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_deeplink_0300';
      let commonEventSubscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: ["onCreate_event"]
      };
      let subscriber : commonEventManager.CommonEventSubscriber;
      await commonEventManager.createSubscriber(commonEventSubscribeInfo)
        .then(async (commonEventSubscriber: commonEventManager.CommonEventSubscriber) => {
          subscriber = commonEventSubscriber;
          hilog.info(0x0000, TAG, "[%{public}s] createSubscriber succeed", TAG);
          commonEventManager.subscribe(subscriber, (err: BusinessError, commonEventData: commonEventManager.CommonEventPublishData) => {
            hilog.info(0x0000, TAG, "[%{public}s] subscribe callback. Gained commonEventData: %{public}s", TAG, JSON.stringify(commonEventData));
            try {
              expect().assertFail();
            } catch {
            }
          })
          await sleep(700);
          commonEventManager.unsubscribe(commonEventSubscriber, (err, data) => {
            hilog.info(0x0000, TAG, "[%{public}s] unsubscribe callback. err: %{public}s, data: %{public}s", TAG, JSON.stringify(err), JSON.stringify(data));
            // done();
          });
          let want: Want = {
            uri: "-~!@#$ %^&*://example.com"
          };
          let errObject = {} as BusinessError;
          uiAbilityContext.startAbility(want)
            .then(() => {
              hilog.info(0x0000, TAG, "[%{public}s] Successfully started Ability", TAG);
            })
            .catch((error: BusinessError) => {
              hilog.info(0x0000, TAG, "[%{public}s] Start Ability error: %{public}s", TAG, JSON.stringify(error));
              errObject = error;
            })
          await sleep(700);
          expect(errObject.code).assertEqual(16000019);
          done();
        })
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_deeplink_0400
     * @tc.name    SUB_Ability_AbilityRuntime_deeplink_0400
     * @tc.desc    The system app calls UIAbilityContext.startAbility to implicitly start the three-party app, configuring the scheme with the ohos prefix, and the host as normal string.
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_deeplink_0400', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_deeplink_0400';
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
              hilog.info(0x0000, TAG, "[%{public}s] commonEventData.parameters?.uri: %{public}s", TAG, JSON.stringify(commonEventData.parameters?.uri));
              expect(JSON.stringify(commonEventData.parameters?.uri)).assertEqual(JSON.stringify('ohosability://example.com'));
            } catch {
            }
            commonEventManager.unsubscribe(commonEventSubscriber, (err, data) => {
              hilog.info(0x0000, TAG, "[%{public}s] unsubscribe callback. err: %{public}s, data: %{public}s", TAG, JSON.stringify(err), JSON.stringify(data));
              done();
            });
          })
          let want: Want = {
            uri: "ohosability://example.com"
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

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_deeplink_0500
     * @tc.name    SUB_Ability_AbilityRuntime_deeplink_0500
     * @tc.desc    The system app calls UIAbilityContext.startAbility to implicitly start the three-party app, configuring the host as special characters, and the scheme as normal string.
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_deeplink_0500', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_deeplink_0500';
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
              expect(JSON.stringify(commonEventData.parameters?.uri)).assertEqual(JSON.stringify('example://-~!@#$ %^&*'));
            } catch {
            }
            commonEventManager.unsubscribe(commonEventSubscriber, (err, data) => {
              hilog.info(0x0000, TAG, "[%{public}s] unsubscribe callback. err: %{public}s, data: %{public}s", TAG, JSON.stringify(err), JSON.stringify(data));
              done();
            });
          })
          let want: Want = {
            uri: "example://-~!@#$ %^&*"
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

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_deeplink_0600
     * @tc.name    SUB_Ability_AbilityRuntime_deeplink_0600
     * @tc.desc    The system app calls UIAbilityContext.startAbility to implicitly start the three-party app, configuring the port as special characters, and others as normal string.
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_deeplink_0600', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_deeplink_0600';
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
              expect(JSON.stringify(commonEventData.parameters?.uri)).assertEqual(JSON.stringify('example://example.com:-~!@#$ %^&*'));
            } catch {
            }
            commonEventManager.unsubscribe(commonEventSubscriber, (err, data) => {
              hilog.info(0x0000, TAG, "[%{public}s] unsubscribe callback. err: %{public}s, data: %{public}s", TAG, JSON.stringify(err), JSON.stringify(data));
              done();
            });
          })
          let want: Want = {
            uri: "example://example.com:-~!@#$ %^&*"
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

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_deeplink_0700
     * @tc.name    SUB_Ability_AbilityRuntime_deeplink_0700
     * @tc.desc    The system app calls UIAbilityContext.startAbility to implicitly start the three-party app, configuring the pathStartWith as special characters, and others as normal string.
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_deeplink_0700', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_deeplink_0700';
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
              expect(JSON.stringify(commonEventData.parameters?.uri)).assertEqual(JSON.stringify('example://example.com:port1/-~!@#$ %^&*'));
            } catch {
            }
            commonEventManager.unsubscribe(commonEventSubscriber, (err, data) => {
              hilog.info(0x0000, TAG, "[%{public}s] unsubscribe callback. err: %{public}s, data: %{public}s", TAG, JSON.stringify(err), JSON.stringify(data));
              done();
            });
          })
          let want: Want = {
            uri: "example://example.com:port1/-~!@#$ %^&*"
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

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_deeplink_0800
     * @tc.name    SUB_Ability_AbilityRuntime_deeplink_0800
     * @tc.desc    The system app calls UIAbilityContext.startAbility to implicitly start the three-party app, configuring the path as special characters, and others as normal string.
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_deeplink_0800', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_deeplink_0800';
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
              expect(JSON.stringify(commonEventData.parameters?.uri)).assertEqual(JSON.stringify('example://example.com:port2/-~!@#$ %^&*'));
            } catch {
            }
            commonEventManager.unsubscribe(commonEventSubscriber, (err, data) => {
              hilog.info(0x0000, TAG, "[%{public}s] unsubscribe callback. err: %{public}s, data: %{public}s", TAG, JSON.stringify(err), JSON.stringify(data));
              done();
            });
          })
          let want: Want = {
            uri: "example://example.com:port2/-~!@#$ %^&*"
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

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_deeplink_1000
     * @tc.name    SUB_Ability_AbilityRuntime_deeplink_1000
     * @tc.desc    The system app calls UIAbilityContext.startAbility to implicitly start the three-party app, configuring the path as special characters, and others as normal string.
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_deeplink_1000', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_deeplink_1000';
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
              expect(JSON.stringify(commonEventData.parameters?.type)).assertEqual(JSON.stringify('-~!@#$ %^&*'));
            } catch {
            }
            commonEventManager.unsubscribe(commonEventSubscriber, (err, data) => {
              hilog.info(0x0000, TAG, "[%{public}s] unsubscribe callback. err: %{public}s, data: %{public}s", TAG, JSON.stringify(err), JSON.stringify(data));
              done();
            });
          })
          let want: Want = {
            type: "-~!@#$ %^&*"
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