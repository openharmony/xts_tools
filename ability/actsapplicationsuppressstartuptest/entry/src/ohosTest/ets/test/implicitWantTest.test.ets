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
import { Driver, ON ,Component } from '@kit.TestKit';


function sleep(time: number) {
  return new Promise<void>((resolve) => setTimeout(resolve, time))
}

export default function AbilityRuntime_ImplicitWant_StartAbilityForResult() {
  describe('ACTS_StartAbilityForResult_Test3', () => {
    const TAG: string = 'StartAbilityForResult';
    const TEST_SUITE_NAME: string = 'StartAbilityForResult_Test';
    let pid: number = 0;
    let uid: number = 0;
    let context: common.UIAbilityContext;
    let context1: common.UIExtensionContext


    beforeAll(() => {
      context = AppStorage.get<Context>('abilityContext') as common.UIAbilityContext;
      context1 = AppStorage.get<Context>('abilityContext') as common.UIExtensionContext
    })

    /*
* @tc.number    : SUB_Ability_AbilityRuntime_SuppressStartup_2200
* @tc.name      : SUB_Ability_AbilityRuntime_SuppressStartup_2200
* @tc.desc      : Verify that the number of applications matched by the implicit call to startAbilityForResult in api12 is 1
* @tc.size      : MediumTest
* @tc.type      : Function
* @tc.level     : Level 3
*/
    it('SUB_Ability_AbilityRuntime_SuppressStartup_2200', 0, async (done: Function) => {
      let want: Want = {
        'deviceId': '',
        'bundleName': 'com.example.thirdapplicationb',
        'abilityName': '',
        'type': '',
        'action': '111',
        'parameters':{
        },
        'entities':[]
      }
      try {
        await sleep(1000);
        await context.startAbilityForResult(want).then((result: common.AbilityResult) => {
          hilog.info(0x0000, 'testTag1', '%{public}s',
            `start ability successful,result: ${JSON.stringify(result)}`);
        }).catch((err: BusinessError) => {
          // 处理业务逻辑错误
          hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}# start ablility err : ${err}`);
          console.log('error====001===:' + JSON.stringify(err));
          expect(err.code).assertEqual(16000018);
          done();
        })
      }catch (error) {
        console.log('error====002===:' + JSON.stringify(error));
        expect(error.code).assertEqual(16000018);
        done();
      }
    })

    /*
    * @tc.number    : SUB_Ability_AbilityRuntime_SuppressStartup_2100
    * @tc.name      : SUB_Ability_AbilityRuntime_SuppressStartup_2100
    * @tc.desc      : Verify that the number of applications matched by the implicit call to startAbilityForResult on api12 exceeds 1
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 3
    */
    it('SUB_Ability_AbilityRuntime_SuppressStartup_2100', 0, async (done: Function) => {

      let count_ability_onForeground: number = 0;

      let commonEventSubscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: [
          'ability_onForegroundCallBack'
        ]
      }
      const  driver1 =Driver.create();
      await driver1.delayMs(1000)
      let Button1: Component = await driver1.findComponent(ON.text('label'));
      await Button1.click();
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
              const  driver1 =Driver.create();
              await driver1.delayMs(1000);
              let Button1: Component = await driver1.findComponent(ON.text('test label'));
              await Button1.click();
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
      })
    })

    /*
    * @tc.number    : SUB_Ability_AbilityRuntime_SuppressStartup_1800
    * @tc.name      : SUB_Ability_AbilityRuntime_SuppressStartup_1800
    * @tc.desc      : Verify that the number of applications matched by the implicit call startAbility of api12 is 1
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 3
    */

    it('SUB_Ability_AbilityRuntime_SuppressStartup_1800', 0, async (done: Function) => {
      let want: Want = {
        'deviceId': '',
        'bundleName': 'com.example.thirdapplicationb',
        'abilityName': '',
        'type': '',
        'action': '111',
        'parameters':{},
        'entities':[]
      }
      try{
        await sleep(1000);
        context.startAbility(want,(err:BusinessError) => {
          if(err.code){
            hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}# start ablility err : ${err}`);
            console.log('error====005===:' + JSON.stringify(err));
            expect(err.code).assertEqual(16000018);
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
        done();
      }
    })


    /*
    * @tc.number    : SUB_Ability_AbilityRuntime_SuppressStartup_1700
    * @tc.name      : SUB_Ability_AbilityRuntime_SuppressStartup_1700
    * @tc.desc      : Verify that the number of applications that are matched by the implicit call startAbility of api12 exceeds 1
    * @tc.size      : MediumTest
    * @tc.type      : Function
    * @tc.level     : Level 3
    */


    it('SUB_Ability_AbilityRuntime_SuppressStartup_1700', 0, async (done: Function) => {
      const  driver1 =Driver.create();
      await driver1.delayMs(1000)
      let Button1: Component = await driver1.findComponent(ON.text('label'));
      await Button1.click();
      let count_ability_onForeground: number = 0;
      await context.getApplicationContext().getRunningProcessInformation().then((res)=>{
        for (let y=0;y<res.length;y++){
          if(res[y].processName==context.abilityInfo.bundleName){
            pid=res[y].pid
            uid=res[y].uid
          }
        }
      })

      let commonEventSubscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: [
          'ability_onForegroundCallBack','ability_onNewWant','ability_onCreat'
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
              hilog.info(0x0000, TAG, '%{public}s',`ability_onForegroundCallBack success: ${count_ability_onForeground}`)
              await sleep(500);
              commonEventManager.unsubscribe(subscribe, (err, data) => {
                hilog.info(0x0000, TAG, '%{public}s', 'unsubscribe1 OK')
              })
            } catch (error) {
              hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}# start fail : ${error}`);
              expect().assertFail();
              done();
            }
          }
          if (commonEventData.event == 'ability_onNewWant') {
            hilog.info(0x0000, TAG, '%{public}s', 'publish success1'+JSON.stringify(commonEventData))
            try {
              let caller:Want=commonEventData.parameters?.callerInfo as Want
              expect(caller.parameters?.['ohos.aafwk.param.callerPid']).assertEqual(pid)
              expect(caller.parameters?.['ohos.aafwk.param.callerUid']).assertEqual(uid)
              await sleep(500);
              commonEventManager.unsubscribe(subscribe, (err, data) => {
                hilog.info(0x0000, TAG, '%{public}s', 'unsubscribe2 OK');
                done();
              })
            } catch (error) {
              hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}# start2 fail : ${error}`);
              expect().assertFail();
              done();
            }
          }
          if (commonEventData.event == 'ability_onCreat') {
            hilog.info(0x0000, TAG, '%{public}s', 'publish success'+JSON.stringify(commonEventData))
            try {
              let caller:Want=commonEventData.parameters?.callerInfo as Want
              expect(caller.parameters?.['ohos.aafwk.param.callerPid']).assertEqual(pid)
              expect(caller.parameters?.['ohos.aafwk.param.callerUid']).assertEqual(uid)
              await sleep(500);
              commonEventManager.unsubscribe(subscribe, (err, data) => {
                hilog.info(0x0000, TAG, '%{public}s', 'unsubscribe3 OK');
                done();
              })
            } catch (error) {
              hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}# start2 fail : ${error}`);
              expect().assertFail();
              done();
            }
          }
        })
      })
    })
  })
}

