/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
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
import { afterEach, beforeAll, beforeEach, describe, expect, it } from '@ohos/hypium';
import { BusinessError, commonEventManager, systemParameterEnhance } from '@kit.BasicServicesKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { router } from '@kit.ArkUI';
import { bundleManager, common, Context, Want } from '@kit.AbilityKit';


function sleep(time: number) {
  return new Promise<void>((resolve) => setTimeout(resolve, time))
}

export let flag: number = 0

export default function AbilityRuntime3_Test() {
  describe('ACTS_EmbeddedUIExtension_Test3', () => {
    const TAG: string = 'EmbeddedUIExtension';
    const TEST_SUITE_NAME: string = 'StartAbilityForResult_Test';
    let context: common.UIAbilityContext
    beforeAll(() => {
      context = AppStorage.get<Context>('abilityContext') as common.UIAbilityContext
    })
    beforeEach(() => {
      try {
        let info: string = systemParameterEnhance.getSync('persist.sys.abilityms.multi_process_model');
        console.log('canshuhuoqu', JSON.stringify(info));
        expect(info).assertEqual('true')
      } catch (e) {
        console.log('getSync unexpected error: ' + e);
      }
    })
    afterEach(() => {

    })

    /**
     * @tc.number SUB_Ability_AbilityRuntime_UIEXtension_EmbeddedUIExtension_1600
     * @tc.name SUB_Ability_AbilityRuntime_UIEXtension_EmbeddedUIExtension_1600
     * @tc.desc Verify that UIAbilityconetxt calls requestModalUIExtension specifies that the app can start EmbeddedUIExtension
     * @tc.size MediumTest
     * @tc.type Function
     * @tc.level Level 3
     */
    it('SUB_Ability_AbilityRuntime_UIEXtension_EmbeddedUIExtension_1600', 0, async (done: Function) => {
      const TEST_SUITE_NAME = 'UIEXtension_EmbeddedUIExtension_1600'
      let commonEventSubscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: ['EmbeddedAbility_same_Default']
      }
      await commonEventManager.createSubscriber(commonEventSubscribeInfo).then(async (subscribe) => {
        hilog.info(0x0000, 'testTag', '%{public}s', `createSubscribe OK`);
        commonEventManager.subscribe(subscribe, async (err, commonEventData: commonEventManager.CommonEventData) => {
          hilog.info(0x0000, TAG, '%{public}s',
            `${TEST_SUITE_NAME} subscribe successful,result: ${JSON.stringify(commonEventData)}`);
          if (commonEventData.event == 'EmbeddedAbility_same_Default') {
            try {
              expect(commonEventData.parameters?.data).assertEqual('onCreate');
              hilog.info(0x0000, TAG, '%{public}s', 'onCreat success')
              await sleep(2000);
              commonEventManager.unsubscribe(subscribe, (err, data) => {
                hilog.info(0x0000, TAG, '%{public}s', 'unsubscribe OK')
              });
              done();
            } catch (error) {
              hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME} start fail : ${error}`);
              expect().assertFail();
              done();
            }
          }
        })
        let want: Want = {
          deviceId: '',
          bundleName: 'com.example.act_embeddeduiextension',
          abilityName: 'TestAbility',
          moduleName: 'entry_test',
          parameters: {
            'bundleName': 'com.example.act_embeddeduiextension',
            'ability.want.params.uiExtensionType': 'embeddedUI'
          }
        }
        await sleep(1000)
        try {
          context.requestModalUIExtension(want)
            .then(() => {
              // 执行正常业务
              console.info('requestModalUIExtension succeed');
            })
            .catch((err: BusinessError) => {
              // 处理业务逻辑错误
              console.error(`requestModalUIExtension failed, code is ${err.code}, message is ${err.message}`);
              expect().assertFail();
              done();
            });
        } catch (err) {
          // 处理入参错误异常
          let code = (err as BusinessError).code;
          let message = (err as BusinessError).message;
          console.error(`requestModalUIExtension failed, code is ${code}, message is ${message}`);
          expect().assertFail();
          done();
        }
        router.pushUrl({
          url: 'testability/pages/SameDft'
        })
      })
    })

    /**
     * @tc.number SUB_Ability_AbilityRuntime_UIEXtension_EmbeddedUIExtension_0700
     * @tc.name SUB_Ability_AbilityRuntime_UIEXtension_EmbeddedUIExtension_0700
     * @tc.desc Verify that the EmbeddedUIExtension session call startAbility can start UIAbility for the current application
     * @tc.size MediumTest
     * @tc.type Function
     * @tc.level Level 3
     */
    it('SUB_Ability_AbilityRuntime_UIEXtension_EmbeddedUIExtension_0700', 0, async (done: Function) => {
      const TEST_SUITE_NAME = 'UIEXtension_EmbeddedUIExtension_0700'
      let commonEventSubscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: ['extensionStart']
      }
      await commonEventManager.createSubscriber(commonEventSubscribeInfo).then(async (subscribe) => {
        hilog.info(0x0000, 'testTag', '%{public}s', `createSubscribe OK`);
        commonEventManager.subscribe(subscribe, async (err, commonEventData: commonEventManager.CommonEventData) => {
          hilog.info(0x0000, TAG, '%{public}s',
            `${TEST_SUITE_NAME} subscribe successful,result: ${JSON.stringify(commonEventData)}`);
          if (commonEventData.event == 'extensionStart') {
            try {
              expect('111').assertEqual(commonEventData.parameters?.data);
              hilog.info(0x0000, TAG, '%{public}s', `ability:success`)
              await sleep(2000);
              commonEventManager.unsubscribe(subscribe, (err, data) => {
                hilog.info(0x0000, TAG, '%{public}s', 'unsubscribe OK')
              });
              done();
            } catch (error) {
              hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME} start fail : ${error}`);
              expect().assertFail();
              done();
            }
          }
        })
      })
      await sleep(2000)
      try {
        router.pushUrl({
          url: 'testability/pages/StartAbility7'
        })
      } catch (error) {
        hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME} router fail : ${error}`);
      }
    })

    /**
     * @tc.number SUB_Ability_AbilityRuntime_UIEXtension_EmbeddedUIExtension_0100
     * @tc.name SUB_Ability_AbilityRuntime_UIEXtension_EmbeddedUIExtension_0100
     * @tc.desc Verify that the host app falls back to the backgroundEmbeddedUIExtension callback onBackground
     * @tc.size MediumTest
     * @tc.type Function
     * @tc.level Level 3
     */
    it('SUB_Ability_AbilityRuntime_UIEXtension_EmbeddedUIExtension_0100', 0, async (done: Function) => {
      const TEST_SUITE_NAME = 'UIEXtension_EmbeddedUIExtension_0100'
      let commonEventSubscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: ['EmbeddedAbility_same_Type']
      }
      await commonEventManager.createSubscriber(commonEventSubscribeInfo).then(async (subscribe) => {
        hilog.info(0x0000, 'testTag', '%{public}s', `createSubscribe OK`);
        commonEventManager.subscribe(subscribe, async (err, commonEventData: commonEventManager.CommonEventData) => {
          hilog.info(0x0000, TAG, '%{public}s',
            `${TEST_SUITE_NAME} subscribe successful,result: ${JSON.stringify(commonEventData)}`);
          if (commonEventData.event == 'EmbeddedAbility_same_Type') {
            try {
              expect(commonEventData.parameters?.data).assertEqual('onBackground');
              hilog.info(0x0000, TAG, '%{public}s', 'onBackgroundCallBack success')
              commonEventManager.unsubscribe(subscribe, (err, data) => {
                hilog.info(0x0000, TAG, '%{public}s', 'unsubscribe OK')
              });
              done();
            } catch (error) {
              hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME} start fail : ${error}`);
              expect().assertFail();
              done();
            }
          }
        })
        await sleep(2000)
        try {
          router.pushUrl({
            url: 'testability/pages/StartAbility7'
          })
        } catch (error) {
          hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME} router fail : ${error}`);
        }
      })
    })
  })
}