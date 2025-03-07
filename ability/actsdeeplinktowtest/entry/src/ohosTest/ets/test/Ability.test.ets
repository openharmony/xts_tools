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
import { hilog } from '@kit.PerformanceAnalysisKit';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import{ appManager, common, Want } from '@kit.AbilityKit';
import{ BusinessError, commonEventManager } from '@kit.BasicServicesKit';
import{ data } from '@kit.TelephonyKit';
import { systemParameterEnhance } from '@kit.BasicServicesKit';
import { Driver, ON ,Component } from '@kit.TestKit';


function sleep(time: number){
  return new Promise<void>((resolve) => setTimeout(resolve, time));
}

export default function abilityTest() {
  describe('SUB_Ability_AbilityRuntime_deeplink', () => {
    const TAG: string = 'StartAbilityForResult';
    const DOMAIN_NUMBER: number = 0xFF00;
    const TEST_SUITE_NAME: string = 'SUB_Ability_AbilityRuntime_deeplink';
    let context: common.UIAbilityContext;
    beforeAll(() => {
      context = AppStorage.get<Context>('abilityContext') as common.UIAbilityContext;
    })
    beforeEach(() => {
      let want1: Want = {
        deviceId: '',
        bundleName: 'com.example.testAppCaller',
        abilityName: 'TestAbility',
      }
      console.log('start testability');
      context.startAbility(want1);
    })
    afterAll(() => {
    })
    /**
     * @tc.number SUB_Ability_AbilityRuntime_deeplink_0300
     * @tc.name SUB_Ability_AbilityRuntime_deeplink_0300
     * @tc.desc invoking UIAbilityContext.startAbility set implicit_transactions on config-file scheme is -~!@#$ %^&,host Normal string.
     * @tc.size MediumTest
     * @tc.type Function
     * @tc.level Level 3
     */
    it('SUB_Ability_AbilityRuntime_deeplink_0300', 0, async (done:Function) => {
      const  TAG = 'DeepLinkCaller_0300';
      const TEST_SUITE_NAME = 'SUB_Ability_AbilityTools_SpecifiedProcessTest_0300';
      let key1=1;
      console.info('enter into test');
      hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}  =========`);
      let subscriber: commonEventManager.CommonEventSubscriber | null = null;
      let subscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: ['onCreat_0300'],
      };
      commonEventManager.createSubscriber(subscribeInfo, async (err: BusinessError, data: commonEventManager.CommonEventSubscriber) => {
        if (err) {
          hilog.error(DOMAIN_NUMBER, TAG, `Failed to create subscriber. Code is ${err.code}, message is ${err.message}`);
          return;
        }
        hilog.info(DOMAIN_NUMBER, TAG, 'Succeeded in creating subscriber.');
        subscriber = data;

        commonEventManager.subscribe(subscriber, (err: BusinessError, data: commonEventManager.CommonEventData) => {
          console .log('subscribe__'+JSON.stringify(data));
          if (err) {
            hilog.error(DOMAIN_NUMBER, TAG, `Failed to subscribe common event. Code is ${err.code}, message is ${err.message}`);
            return;
          }else {
            hilog.info(0x0000, 'this +++++++803', '%{public}s', data.data);
          }
        })
        commonEventManager.unsubscribe(subscriber, (err, data) => {
          hilog.info(0x0000, TAG, '%{public}s', 'unsubscribe OK');
        });
        let want: Want = {
          action: 'abc',
          entities: ['abc'],
          uri: '-~!@#$ %^&*://example.com',
        };
        context.startAbility(want)
          .then(() => {
            console.info('Succeed to invoke startAbility.');
          })
          .catch((err: BusinessError) => {
            console.error(`Failed to invoke startAbility, code: ${err.code}, message: ${err.message}`);
            expect(16000019).message('The two data are different').assertEqual(err.code);
            done();
          });
      })
    })
    /**
     * @tc.number SUB_Ability_AbilityRuntime_deeplink_0100
     * @tc.name SUB_Ability_AbilityRuntime_deeplink_0100
     * @tc.desc invoking UIAbilityContext.startAbility set implicit_transactions on config-file action and action is a special character.
     * @tc.size MediumTest
     * @tc.type Function
     * @tc.level Level 3
     */
    it('SUB_Ability_AbilityRuntime_deeplink_0100', 0, async (done:Function) => {
      const TEST_SUITE_NAME = 'SUB_Ability_AbilityRuntime_deeplink_0100';
      console.info('enter into test');
      hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}  =========`);
      let subscriber: commonEventManager.CommonEventSubscriber | null = null;
      let subscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: ['onCreat_0100'],
      };
      commonEventManager.createSubscriber(subscribeInfo, async (err: BusinessError, data: commonEventManager.CommonEventSubscriber) => {
        if (err) {
          hilog.error(DOMAIN_NUMBER, TAG, `Failed to create subscriber. Code is ${err.code}, message is ${err.message}`);
          return;
        }
        hilog.info(DOMAIN_NUMBER, TAG, 'Succeeded in creating subscriber.');
        subscriber = data;
        let want: Want = {
          parameters: {
            'ohos.ability.params.showDefaultPicker':true,
          },
          action:'-~!@#$ %^&*'
        }
        context.startAbilityForResult(want);
        const  driver1 =Driver.create();
        await driver1.delayMs(1000);
        let Button1: Component = await driver1.findComponent(ON.text('0100'));
        await Button1.click();
        hilog.info(0x0000, TAG, '%{public}s', `click is ture`);
          commonEventManager.subscribe(subscriber, (err: BusinessError, data: commonEventManager.CommonEventData) => {
            console .log('2subscribe__'+JSON.stringify(data));
            if (err) {
              hilog.error(DOMAIN_NUMBER, TAG, `Failed to subscribe common event. Code is ${err.code}, message is ${err.message}`);
              return;
            }else {
              expect(JSON.stringify('-~!@#$ %^&*')).message('The two data are different').assertEqual(JSON.stringify(data.data));
              commonEventManager.unsubscribe(subscriber, (err, data) => {
                hilog.info(0x0000, TAG, '%{public}s', 'unsubscribe OK');
              });
              done();
            }
          })
      })
    })
    /**
     * @tc.number SUB_Ability_AbilityRuntime_deeplink_0200
     * @tc.name SUB_Ability_AbilityRuntime_deeplink_0200
     * @tc.desc invoking UIAbilityContext.startAbility set implicit_transactions on config-file entities and entities is a special character.
     * @tc.size MediumTest
     * @tc.type Function
     * @tc.level Level 3
     */
    it('SUB_Ability_AbilityRuntime_deeplink_0200', 0, async (done:Function) => {
      const  TAG = 'DeepLinkCaller_0200';
      const TEST_SUITE_NAME = 'SUB_Ability_AbilityTools_SpecifiedProcessTest_0200';
      console.info('enter into test');
      hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}  =========`);
      let subscriber: commonEventManager.CommonEventSubscriber | null = null;
      let subscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: ['onCreat_0200'],
      };
      commonEventManager.createSubscriber(subscribeInfo, async (err: BusinessError, data: commonEventManager.CommonEventSubscriber) => {
        if (err) {
          hilog.error(DOMAIN_NUMBER, TAG, `Failed to create subscriber. Code is ${err.code}, message is ${err.message}`);
          return;
        }
        hilog.info(DOMAIN_NUMBER, TAG, 'Succeeded in creating subscriber.');
        subscriber = data;
        let want: Want = {
          entities:['-~!@#$ %^&*'],
          'parameters':{
            'ohos.ability.params.showDefaultPicker':true,
            'linkFeature':'link_0200'
          }
        }
        context.startAbilityForResult(want);
        const  driver1 =Driver.create();
        await driver1.delayMs(1000);
        let Button1: Component = await driver1.findComponent(ON.text('0200'));
        await Button1.click();
        hilog.info(0x0000, TAG, '%{public}s', `click is ture`);
        commonEventManager.subscribe(subscriber, (err: BusinessError, data: commonEventManager.CommonEventData) => {
          console .log('3subscribe__'+JSON.stringify(data));
          if (err) {
            hilog.error(DOMAIN_NUMBER, TAG, `Failed to subscribe common event. Code is ${err.code}, message is ${err.message}`);
            return;
          }else {
            expect(JSON.stringify('-~!@#$ %^&*')).message('The two data are different').assertEqual(JSON.stringify(data.data));
            commonEventManager.unsubscribe(subscriber, (err, data) => {
              hilog.info(0x0000, TAG, '%{public}s', 'unsubscribe OK');
            });
            done();
          }
        })
      })
    })
    /**
     * @tc.number SUB_Ability_AbilityTools_SpecifiedProcessTest_1000
     * @tc.name SUB_Ability_AbilityTools_SpecifiedProcessTest_1000
     * @tc.desc invoking UIAbilityContext.startAbility set implicit_transactions on config-file type and type is -~!@#$ %^&.
     * @tc.size MediumTest
     * @tc.type Function
     * @tc.level Level 3
     */
    it('SUB_Ability_AbilityRuntime_deeplink_1000', 0, async (done:Function) => {
      const  TAG = 'DeepLinkCaller_1000'
      const TEST_SUITE_NAME = 'SUB_Ability_AbilityTools_SpecifiedProcessTest_1000'
      console.info('enter into test')
      hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}  =========`);
      let subscriber: commonEventManager.CommonEventSubscriber | null = null;
      let subscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: ['onCreat_1000'],
      };
      commonEventManager.createSubscriber(subscribeInfo, async (err: BusinessError, data: commonEventManager.CommonEventSubscriber) => {
        if (err) {
          hilog.error(DOMAIN_NUMBER, TAG, `Failed to create subscriber. Code is ${err.code}, message is ${err.message}`);
          return;
        }
        hilog.info(DOMAIN_NUMBER, TAG, 'Succeeded in creating subscriber.');
        subscriber = data;
        let want: Want = {
          type:'-~!@#$ %^&*',
          'parameters':{
            'ohos.ability.params.showDefaultPicker':true,
            'linkFeature':'link'}
        }
        context.startAbilityForResult(want);
        const  driver1 =Driver.create();
        await driver1.delayMs(1000);
        let Button1: Component = await driver1.findComponent(ON.text('1000'));
        await Button1.click();
        hilog.info(0x0000, TAG, '%{public}s', `click is ture`);
        commonEventManager.subscribe(subscriber, (err: BusinessError, data: commonEventManager.CommonEventData) => {
          console .log('subscribe__'+JSON.stringify(data));
          if (err) {
            hilog.error(DOMAIN_NUMBER, TAG, `Failed to subscribe common event. Code is ${err.code}, message is ${err.message}`);
            return;
          }else {
            hilog.info(0x0000, 'this +++++++1000', '%{public}s', data.data);
            expect(JSON.stringify('-~!@#$ %^&*')).message('The two data are different').assertEqual(JSON.stringify(data.data));
            commonEventManager.unsubscribe(subscriber, (err, data) => {
              hilog.info(0x0000, TAG, '%{public}s', 'unsubscribe OK');
            });
            done();
          }
        })
      })
    })
    /**
     * @tc.number SUB_Ability_AbilityRuntime_deeplink_0500
     * @tc.name SUB_Ability_AbilityRuntime_deeplink_0500
     * @tc.desc invoking UAbilityContext.startAbility set implicit_transactions on config-file host and host is -~!@#$ %^&,scheme Normal string.
     * @tc.size MediumTest
     * @tc.type Function
     * @tc.level Level 3
     */
    it('SUB_Ability_AbilityRuntime_deeplink_0500', 0, async (done:Function) => {
      const  TAG = 'DeepLinkCaller_0500';
      const TEST_SUITE_NAME = 'SUB_Ability_AbilityTools_SpecifiedProcessTest_0500';
      console.info('enter into test');
      hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}  =========`);
      let subscriber: commonEventManager.CommonEventSubscriber | null = null;
      let subscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: ['onCreat_0500'],
      };
      commonEventManager.createSubscriber(subscribeInfo, async (err: BusinessError, data: commonEventManager.CommonEventSubscriber) => {
        if (err) {
          hilog.error(DOMAIN_NUMBER, TAG, `Failed to create subscriber. Code is ${err.code}, message is ${err.message}`);
          return;
        }
        hilog.info(DOMAIN_NUMBER, TAG, 'Succeeded in creating subscriber.');
        subscriber = data;
        let want: Want = {
          'uri':'https://-~!@#$ %^&*:8080/query/teacher',
          'parameters':{
            'ohos.ability.params.showDefaultPicker':true,
            'linkFeature':'link_0500'
          }
        }
        context.startAbilityForResult(want);
        const  driver1 =Driver.create();
        await driver1.delayMs(1000);
        let Button1: Component = await driver1.findComponent(ON.text('0500'));
        await Button1.click();
        commonEventManager.subscribe(subscriber, (err: BusinessError, data: commonEventManager.CommonEventData) => {
          console .log('subscribe__'+JSON.stringify(data));
          if (err) {
            hilog.error(DOMAIN_NUMBER, TAG, `Failed to subscribe common event. Code is ${err.code}, message is ${err.message}`);
            return;
          }else {
            expect(JSON.stringify('https://-~!@#$ %^&*:8080/query/teacher')).message('The two data are different').assertEqual(JSON.stringify(data.data));
            commonEventManager.unsubscribe(subscriber, (err, data) => {
              hilog.info(0x0000, TAG, '%{public}s', 'unsubscribe OK');
            });
            done();
          }
        })
      })
    })
    /**
     * @tc.number SUB_Ability_AbilityRuntime_deeplink_0900
     * @tc.name SUB_Ability_AbilityRuntime_deeplink_0900
     * @tc.desc invoking UAbilityContext.startAbility set implicit_transactions on config-file pathRegex and pathRegex is -~!@#$ %^&,any other abnormalities.
     * @tc.size MediumTest
     * @tc.type Function
     * @tc.level Level 3
     */
    it('SUB_Ability_AbilityRuntime_deeplink_0900', 0, async (done:Function) => {
      const  TAG = 'DeepLinkCaller_0900';
      const TEST_SUITE_NAME = 'SUB_Ability_AbilityTools_SpecifiedProcessTest_0900';
      console.info('enter into test');

      hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}  =========`);
      let subscriber: commonEventManager.CommonEventSubscriber | null = null;
      let subscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: ['onCreat_0900'],
      };
      commonEventManager.createSubscriber(subscribeInfo, async (err: BusinessError, data: commonEventManager.CommonEventSubscriber) => {
        if (err) {
          hilog.error(DOMAIN_NUMBER, TAG, `Failed to create subscriber. Code is ${err.code}, message is ${err.message}`);
          return;
        }
        hilog.info(DOMAIN_NUMBER, TAG, 'Succeeded in creating subscriber.');
        console .log('0900',`${JSON.stringify(data)}`);
        subscriber = data;

        let want: Want = {
          'uri':'https://deeplinkdemo:8080/query/-~!@#$ %^&*',
          'parameters':{
            'ohos.ability.params.showDefaultPicker':true,
            'linkFeature':'link_0900'
          }

        }

        context.startAbilityForResult(want);
        const  driver1 =Driver.create();
        await driver1.delayMs(1000);
        let Button1: Component = await driver1.findComponent(ON.text('0900'));
        await Button1.click();
        commonEventManager.subscribe(subscriber, (err: BusinessError, data: commonEventManager.CommonEventData) => {
          console .log('subscribe__'+JSON.stringify(data));
          if (err) {
            hilog.error(DOMAIN_NUMBER, TAG, `Failed to subscribe common event. Code is ${err.code}, message is ${err.message}`);
            return;
          }else {
            expect(JSON.stringify('https://deeplinkdemo:8080/query/-~!@#$ %^&*')).message('The two data are different').assertEqual(JSON.stringify(data.data));
            commonEventManager.unsubscribe(subscriber, (err, data) => {
              hilog.info(0x0000, TAG, '%{public}s', 'unsubscribe OK');
            });
            done();
          }
        })
      })
    })
    /**
     * @tc.number SUB_Ability_AbilityRuntime_deeplink_0700
     * @tc.name SUB_Ability_AbilityRuntime_deeplink_0700
     * @tc.desc invoking UIAbilityContext.startAbility set implicit_transactions on config-file pathStartWith and pathStartWith is -~!@#$ %^&,any other abnormalities.
     * @tc.size MediumTest
     * @tc.type Function
     * @tc.level Level 3
     */
    it('SUB_Ability_AbilityRuntime_deeplink_0700', 0, async (done:Function) => {
      const  TAG = 'DeepLinkCaller_0700';
      const TEST_SUITE_NAME = 'SUB_Ability_AbilityTools_SpecifiedProcessTest_0700';
      console.info('enter into test');
      hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}  =========`);
      let subscriber: commonEventManager.CommonEventSubscriber | null = null;
      let subscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: ['onCreat_0700'],
      };
      commonEventManager.createSubscriber(subscribeInfo, async (err: BusinessError, data: commonEventManager.CommonEventSubscriber) => {
        if (err) {
          hilog.error(DOMAIN_NUMBER, TAG, `Failed to create subscriber. Code is ${err.code}, message is ${err.message}`);
          return;
        }
        hilog.info(DOMAIN_NUMBER, TAG, 'Succeeded in creating subscriber.');
        subscriber = data;

        let want: Want = {
          action: 'abc',
          entities: ['abc'],
          'uri':'https://deeplinkdemo:8080/-~!@#$ %^&*/teacher',
          'parameters':{
            'ohos.ability.params.showDefaultPicker':true,
            'linkFeature':'link_0700'
          }
        }

        context.startAbilityForResult(want);
        const  driver1 =Driver.create();
        await driver1.delayMs(1000);
        let Button1: Component = await driver1.findComponent(ON.text('0700'));
        await Button1.click();
        commonEventManager.subscribe(subscriber, (err: BusinessError, data: commonEventManager.CommonEventData) => {
          console .log('subscribe__'+JSON.stringify(data));
          if (err) {
            hilog.error(DOMAIN_NUMBER, TAG, `Failed to subscribe common event. Code is ${err.code}, message is ${err.message}`);
            return;
          }else {
            hilog.info(0x0000, 'this +++++++0700', '%{public}s', data.data);
            expect(JSON.stringify('https://deeplinkdemo:8080/-~!@#$ %^&*/teacher')).message('The two data are different').assertEqual(JSON.stringify(data.data));
            commonEventManager.unsubscribe(subscriber, (err, data) => {
              hilog.info(0x0000, TAG, '%{public}s', 'unsubscribe OK');
            });
            done();
          }
        })
      })
    })
    /**
     * @tc.number SUB_Ability_AbilityRuntime_deeplink_0800
     * @tc.name SUB_Ability_AbilityRuntime_deeplink_0800
     * @tc.desc invoking UIAbilityContext.startAbility set implicit_transactions on config-file path and path is -~!@#$ %^&,any other abnormalities.
     * @tc.size MediumTest
     * @tc.type Function
     * @tc.level Level 3
     */
    it('SUB_Ability_AbilityRuntime_deeplink_0800', 0, async (done:Function) => {
      const  TAG = 'DeepLinkCaller_0800'
      const TEST_SUITE_NAME = 'SUB_Ability_AbilityTools_SpecifiedProcessTest_0800'
      console.info('enter into test');
      hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}  =========`);
      let subscriber: commonEventManager.CommonEventSubscriber | null = null;
      let subscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: ['onCreat_0800'],
      };
      commonEventManager.createSubscriber(subscribeInfo, async (err: BusinessError, data: commonEventManager.CommonEventSubscriber) => {
        if (err) {
          hilog.error(DOMAIN_NUMBER, TAG, `Failed to create subscriber. Code is ${err.code}, message is ${err.message}`);
          return;
        }
        hilog.info(DOMAIN_NUMBER, TAG, 'Succeeded in creating subscriber.');
        subscriber = data;

        let want: Want = {
          'uri': 'https://deeplinkdemo:8080/-~!@#$ %^&*',
          'parameters': {
            'ohos.ability.params.showDefaultPicker': true,
            'linkFeature': 'link_0800'
          }
        }

        context.startAbilityForResult(want);
        const  driver1 =Driver.create();
        await driver1.delayMs(1000);
        let Button1: Component = await driver1.findComponent(ON.text('0800'));
        await Button1.click();
        commonEventManager.subscribe(subscriber, (err: BusinessError, data: commonEventManager.CommonEventData) => {
          console .log('subscribe__'+JSON.stringify(data));
          if (err) {
            hilog.error(DOMAIN_NUMBER, TAG, `Failed to subscribe common event. Code is ${err.code}, message is ${err.message}`);
            return;
          }else {
            expect(JSON.stringify('https://deeplinkdemo:8080/-~!@#$ %^&*')).message('The two data are different').assertEqual(JSON.stringify(data.data));
            commonEventManager.unsubscribe(subscriber, (err, data) => {
              hilog.info(0x0000, TAG, '%{public}s', 'unsubscribe OK');
            });
            done();
          }
        })
      })
    })
    /**
     * @tc.number SUB_Ability_AbilityRuntime_deeplink_0600
     * @tc.name SUB_Ability_AbilityRuntime_deeplink_0600
     * @tc.desc invoking UIAbilityContext.startAbility set implicit_transactions on config-file port and port is -~!@#$ %^&,any other abnormalities.
     * @tc.size MediumTest
     * @tc.type Function
     * @tc.level Level 3
     */
    it('SUB_Ability_AbilityRuntime_deeplink_0600', 0, async (done:Function) => {
      const  TAG = 'DeepLinkCaller_0600';
      const TEST_SUITE_NAME = 'SUB_Ability_AbilityTools_SpecifiedProcessTest_0600';
      console.info('enter into test');
      hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}  =========`);
      let subscriber: commonEventManager.CommonEventSubscriber | null = null;
      let subscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: ['onCreat_0600'],
      };
      commonEventManager.createSubscriber(subscribeInfo, async (err: BusinessError, data: commonEventManager.CommonEventSubscriber) => {
        if (err) {
          hilog.error(DOMAIN_NUMBER, TAG, `Failed to create subscriber. Code is ${err.code}, message is ${err.message}`);
          return;
        }
        hilog.info(DOMAIN_NUMBER, TAG, 'Succeeded in creating subscriber.');
        subscriber = data;
        let want: Want = {
          'uri': 'https://deeplinkdemo:-~!@#$ %^&*/query/teacher',
          'parameters': {
            'ohos.ability.params.showDefaultPicker': true,
            'linkFeature': 'link_0600'
          }
        }

        context.startAbilityForResult(want);
        const  driver1 =Driver.create();
        await driver1.delayMs(1000);
        let Button1: Component = await driver1.findComponent(ON.text('0600'));
        await Button1.click();
        commonEventManager.subscribe(subscriber, (err: BusinessError, data: commonEventManager.CommonEventData) => {
          console .log('subscribe__'+JSON.stringify(data));
          if (err) {
            hilog.error(DOMAIN_NUMBER, TAG, `Failed to subscribe common event. Code is ${err.code}, message is ${err.message}`);
            return;
          }else {
            hilog.info(0x0000, 'this +++++++0600', '%{public}s', data.data);
            expect(JSON.stringify('https://deeplinkdemo:-~!@#$ %^&*/query/teacher')).message('The two data are different').assertEqual(JSON.stringify(data.data));
            commonEventManager.unsubscribe(subscriber, (err, data) => {
              hilog.info(0x0000, TAG, '%{public}s', 'unsubscribe OK');
            });
            done();
          }
        })
      })
    })
    /**
     * @tc.number SUB_Ability_AbilityRuntime_deeplink_0400
     * @tc.name SUB_Ability_AbilityRuntime_deeplink_0400
     * @tc.desc invoking UIAbilityContext.startAbility set implicit_transactions on config-file scheme  is ohos,host Normal string.
     * @tc.size MediumTest
     * @tc.type Function
     * @tc.level Level 3
     */
    it('SUB_Ability_AbilityRuntime_deeplink_0400', 0, async (done:Function) => {
      const  TAG = 'DeepLinkCaller_0400';
      const TEST_SUITE_NAME = 'SUB_Ability_AbilityTools_SpecifiedProcessTest_0400';
      console.info('enter into test');
      hilog.info(0x0000, TAG, '%{public}s', `${TEST_SUITE_NAME}  =========`);
      let subscriber: commonEventManager.CommonEventSubscriber | null = null;
      let subscribeInfo: commonEventManager.CommonEventSubscribeInfo = {
        events: ['onCreat_0400'],
      };
      commonEventManager.createSubscriber(subscribeInfo, async (err: BusinessError, data: commonEventManager.CommonEventSubscriber) => {
        if (err) {
          hilog.error(DOMAIN_NUMBER, TAG, `Failed to create subscriber. Code is ${err.code}, message is ${err.message}`);
          return;
        }
        hilog.info(DOMAIN_NUMBER, TAG, 'Succeeded in creating subscriber.');
        subscriber = data;

        let want: Want = {
          action: 'abc',
          entities: ['abc'],
          uri: 'ohosclock://example.com',
          'parameters': {
            'ohos.ability.params.showDefaultPicker': true,
          }
        };

        context.startAbilityForResult(want);
        const  driver1 =Driver.create();
        await driver1.delayMs(1000);
        let Button1: Component = await driver1.findComponent(ON.text('0400'));
        await Button1.click();
        commonEventManager.subscribe(subscriber, (err: BusinessError, data: commonEventManager.CommonEventData) => {
          console .log('subscribe__'+JSON.stringify(data));
          if (err) {
            hilog.error(DOMAIN_NUMBER, TAG, `Failed to subscribe common event. Code is ${err.code}, message is ${err.message}`);
            return;
          }else {
            hilog.info(0x0000, 'this +++++++0400', '%{public}s', data.data);
            expect(JSON.stringify('ohosclock://example.com')).message('The two data are different').assertEqual(JSON.stringify(data.data));
            commonEventManager.unsubscribe(subscriber, (err, data) => {
              hilog.info(0x0000, TAG, '%{public}s', 'unsubscribe OK');
            });
            done();
          }
        })
      })
    })

  })

}

