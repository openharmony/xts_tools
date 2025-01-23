/*
 * Copyright (C) 2024 HiHope Open Source Organization
 * Licensed under the Apache License, Version 2.0 (the 'License');
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { describe, beforeAll, it, expect, afterEach, beforeEach } from '@ohos/hypium';
import { common, Want } from '@kit.AbilityKit';
import { BusinessError, commonEventManager } from '@kit.BasicServicesKit';
import { hilog } from '@kit.PerformanceAnalysisKit';


function sleep(time: number) {
  return new Promise<void>((resolve) => setTimeout(resolve, time))
}

export default function AbilityRuntime_System_StartAbilityForResult() {
  describe('ACTS_StartAbilityForResult_Test2', () => {
    const TAG: string = 'StartAbilityForResult';
    const TEST_SUITE_NAME: string = 'StartAbilityForResult_Test';
    let context: common.UIAbilityContext;
    let context1: common.UIExtensionContext


    beforeAll(() => {
      context = AppStorage.get<Context>('abilityContext') as common.UIAbilityContext;
      context1 = AppStorage.get<Context>('abilityContext') as common.UIExtensionContext
    })



    /*
* @tc.number    : SUB_Ability_AbilityRuntime_SuppressStartup_1100
* @tc.name      : SUB_Ability_AbilityRuntime_SuppressStartup_1100
* @tc.desc      : Verify that the UIAbility call of api12 third-party application startAbilityForResult successed to start the ability of the system application of different applications
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 3
*/

    it('SUB_Ability_AbilityRuntime_SuppressStartup_1100', 0, async (done: Function) => {

      let count_ability_onForeground: number = 0;

      let commonEventSubscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: [
          'ability_onForegroundCallBack'
        ]
      }
      await commonEventManager.createSubscriber(commonEventSubscribeInfo).then(async (subscribe) => {
        hilog.info(0x0000, 'testTag', '%{public}s', `createSubscribe OK`);

        commonEventManager.subscribe(subscribe, async (err, commonEventData: commonEventManager.CommonEventData) => {
          hilog.info(0x0000, TAG, '%{public}s',
            `${TEST_SUITE_NAME}# subscribe successful,result: ${JSON.stringify(commonEventData)}`);

          if (commonEventData.event == 'ability_onForegroundCallBack') {
            try {
              expect(commonEventData?.parameters?.date).assertEqual('111');
              count_ability_onForeground++;
              hilog.info(0x0000, TAG, '%{public}s', 'ability_onForegroundCallBack success')
              expect(count_ability_onForeground).assertEqual(1);

              await sleep(500);
              commonEventManager.unsubscribe(subscribe, (err, data) => {
                hilog.info(0x0000, TAG, '%{public}s', 'unsubscribe OK')
                done();
              })
            } catch (error) {
              hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}# start fail : ${error}`);
              expect().assertFail();
              done;
            }
          }

        })
        hilog.info(0x0000, 'testTag', '%{public}s', `createSubscribe OK`);
        let want: Want = {
          deviceId: '',
          bundleName: 'com.example.thirdapplicationa',
          abilityName: 'EntryAbility'
        }
        try {

          await sleep(1000);

          await context.startAbilityForResult(want).then((result: common.AbilityResult) => {
            hilog.info(0x0000, 'testTag1', '%{public}s',
              `start ability successful,result: ${JSON.stringify(result)}`);

          }).catch((err: BusinessError) => {
            // 处理业务逻辑错误
            hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}# start ablility err : ${err}`);
            expect().assertFail();
            done();
          })
        } catch (error) {
          console.log('error====004===:' + JSON.stringify(error));
          expect().assertFail();
          done();
        }
      })
    })

    /*
* @tc.number    : SUB_Ability_AbilityRuntime_SuppressStartup_0400
* @tc.name      : SUB_Ability_AbilityRuntime_SuppressStartup_0400
* @tc.desc      : Verify that the UIAbility call of api12 third-party application startAbility is successful to start the system application of different applications
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 3
*/

    it('SUB_Ability_AbilityRuntime_SuppressStartup_0400', 0, async (done: Function) => {

      let count_ability_onForeground: number = 0;

      let commonEventSubscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: [
          'ability_onForegroundCallBack'
        ]
      }
      await commonEventManager.createSubscriber(commonEventSubscribeInfo).then(async (subscribe) => {
        hilog.info(0x0000, 'testTag', '%{public}s', `createSubscribe OK`);

        commonEventManager.subscribe(subscribe, async (err, commonEventData: commonEventManager.CommonEventData) => {
          hilog.info(0x0000, TAG, '%{public}s',
            `${TEST_SUITE_NAME}# subscribe successful,result: ${JSON.stringify(commonEventData)}`);

          if (commonEventData.event == 'ability_onForegroundCallBack') {
            try {
              expect(commonEventData?.parameters?.date).assertEqual('111');
              count_ability_onForeground++;
              hilog.info(0x0000, TAG, '%{public}s', 'ability_onForegroundCallBack success')
              expect(count_ability_onForeground).assertEqual(1);

              await sleep(500);
              commonEventManager.unsubscribe(subscribe, (err, data) => {
                hilog.info(0x0000, TAG, '%{public}s', 'unsubscribe OK')
                done();
              })
            } catch (error) {
              hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}# start fail : ${error}`);
              expect().assertFail();
              done;
            }
          }

        })
        hilog.info(0x0000, 'testTag', '%{public}s', `createSubscribe OK`);
        let want: Want = {
          deviceId: '',
          bundleName: 'com.example.thirdapplicationa',
          abilityName: 'EntryAbility'
        }
        try{
          await sleep(1000);
          context.startAbility(want,(err:BusinessError) => {
            if(err.code){
              hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}# start ablility err : ${err}`);
              console.log('error====75===:' + JSON.stringify(err));
              expect().assertFail();
              done();
            }
            else {
              hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}# start ablility successful`);
            }
          })
        }
        catch (err){
          let code = (err as BusinessError).code;
          let message = (err as BusinessError).message;
          console.error(`startAbilityForResult failed, code is ${code}, message is ${message}`);
          expect().assertFail();
          done()
        }
      })
    })


    /*
* @tc.number    : SUB_Ability_AbilityRuntime_SuppressStartup_3000
* @tc.name      : SUB_Ability_AbilityRuntime_SuppressStartup_3000
* @tc.desc      : Verify that the UIExtension call of the api12 third-party application startAbilityForResult is successful in launching the system application of different applications
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 3
*/
    it('SUB_Ability_AbilityRuntime_SuppressStartup_3000', 0, async (done: Function) => {

      let count_ability_onForeground: number = 0;

      let commonEventSubscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: [
          'ability_onForegroundCallBack'
        ]
      }
      await commonEventManager.createSubscriber(commonEventSubscribeInfo).then(async (subscribe) => {
        hilog.info(0x0000, 'testTag', '%{public}s', `createSubscribe OK`);

        commonEventManager.subscribe(subscribe, async (err, commonEventData: commonEventManager.CommonEventData) => {
          hilog.info(0x0000, TAG, '%{public}s',
            `${TEST_SUITE_NAME}# subscribe successful,result: ${JSON.stringify(commonEventData)}`);

          if (commonEventData.event == 'ability_onForegroundCallBack') {
            try {
              expect(commonEventData?.parameters?.date).assertEqual('111');
              count_ability_onForeground++;
              hilog.info(0x0000, TAG, '%{public}s', 'ability_onForegroundCallBack success')
              expect(count_ability_onForeground).assertEqual(1);

              await sleep(500);
              commonEventManager.unsubscribe(subscribe, (err, data) => {
                hilog.info(0x0000, TAG, '%{public}s', 'unsubscribe OK')
                done();
              })
            } catch (error) {
              hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}# start fail : ${error}`);
              expect().assertFail();
              done;
            }
          }

        })
        hilog.info(0x0000, 'testTag', '%{public}s', `createSubscribe OK`);
        let want: Want = {
          deviceId: '',
          bundleName: 'com.example.thirdapplicationa',
          abilityName: 'EntryAbility'
        }
        try {

          await sleep(1000);

          await context1.startAbilityForResult(want).then((result: common.AbilityResult) => {
            hilog.info(0x0000, 'testTag1', '%{public}s',
              `start ability successful,result: ${JSON.stringify(result)}`);

          }).catch((err: BusinessError) => {
            // 处理业务逻辑错误
            hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}# start ablility err : ${err}`);
            expect().assertFail();
            done();
          })
        } catch (error) {
          console.log('error====76===:' + JSON.stringify(error));
          expect().assertFail();
          done();
        }
      })
    })



  })
}