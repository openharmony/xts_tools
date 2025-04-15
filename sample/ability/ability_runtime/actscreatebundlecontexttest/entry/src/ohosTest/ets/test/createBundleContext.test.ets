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
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level } from '@ohos/hypium';
import { application, common } from '@kit.AbilityKit';
import { BusinessError } from '@kit.BasicServicesKit';
import AbilityDelegatorRegistry from '@ohos.app.ability.abilityDelegatorRegistry'
import { hilog } from '@kit.PerformanceAnalysisKit';
import { resourceManager } from '@kit.LocalizationKit';

let context = getContext(this) as common.UIAbilityContext;

let sleep = async (delay: number): Promise<void> => {
  return new Promise((resolve, _) => {
    setTimeout(async () => {
      resolve();
    }, delay);
  });
};

export default function createBundleContextTest() {
  describe('createBundleContextTest', () => {

    let abilityDelegator: AbilityDelegatorRegistry.AbilityDelegator = AbilityDelegatorRegistry.getAbilityDelegator();

    beforeAll(() => {
      context = globalThis.context;
    })
    beforeEach(() => {
    })
    afterEach(async () => {
      await sleep(500);
    })
    afterAll(() => {
    })

    /*
     * @tc.number : SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0100
     * @tc.name   : createModuleContext,moduleName = entry
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0100', Level.LEVEL0, async (done: Function) => {
      let tag:string = "SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0100"
      hilog.info(0x0000, 'testTag', '%{public}s', `${tag} start`);
      let moduleContext: common.Context;
      try {
        application.createBundleContext(null, 'com.test.actscreatebundlecontexttest').then((data: Context) => {
          moduleContext = data;
          hilog.info(0x0000, 'testTag', '%{public}s', 'createBundleContext success!');
        }).catch((error : BusinessError)=>{
          hilog.info(0x0000, 'testTag', '%{public}s', `createBundleContext failed, error.code: ${(error as BusinessError).code}, error.message1: ${(error as BusinessError).message}`);
        })
      } catch (error) {
        hilog.info(0x0000, 'testTag', '%{public}s', `createBundleContext failed, error.code: ${(error as BusinessError).code}, error.message: ${(error as BusinessError).message}`);
        expect(error.code).assertEqual(401)
        hilog.info(0x0000, 'testTag', '%{public}s', `${tag} end`);
        done();
      }
    });

    /*
     * @tc.number : SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0200
     * @tc.name   : createModuleContext,moduleName = entry
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0200', Level.LEVEL0, async (done: Function) => {
      let tag:string = "SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0200"
      hilog.info(0x0000, 'testTag', '%{public}s', `${tag} start`);
      let moduleContext: common.Context;
      try {
        application.createBundleContext(undefined, 'com.test.actscreatebundlecontexttest').then((data: Context) => {
          moduleContext = data;
          hilog.info(0x0000, 'testTag', '%{public}s', 'createBundleContext success!');
        }).catch((error : BusinessError)=>{
          hilog.info(0x0000, 'testTag', '%{public}s', `createBundleContext failed, error.code1: ${(error as BusinessError).code}, error.message1: ${(error as BusinessError).message}`);
        })
      } catch (error) {
        hilog.info(0x0000, 'testTag', '%{public}s', `createBundleContext failed, error.code: ${(error as BusinessError).code}, error.message: ${(error as BusinessError).message}`);
        expect(error.code).assertEqual(401)
        hilog.info(0x0000, 'testTag', '%{public}s', `${tag} end`);
        done();
      }
    });

    /*
     * @tc.number : SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0300
     * @tc.name   : createModuleContext,moduleName = entry
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0300', Level.LEVEL0, async (done: Function) => {
      let tag:string = "SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0300"
      hilog.info(0x0000, 'testTag', '%{public}s', `${tag} start`);
      let moduleContext: common.Context;
      try {
        application.createBundleContext(globalThis.context, null).then((data: Context) => {
          moduleContext = data;
          hilog.info(0x0000, 'testTag', '%{public}s', 'createBundleContext success!');
        }).catch((error : BusinessError)=>{
          hilog.info(0x0000, 'testTag', '%{public}s', `createBundleContext failed, error.code1: ${(error as BusinessError).code}, error.message1: ${(error as BusinessError).message}`);
        })
      } catch (error) {
        hilog.info(0x0000, 'testTag', '%{public}s', `createBundleContext failed, error.code: ${(error as BusinessError).code}, error.message: ${(error as BusinessError).message}`);
        expect(error.code).assertEqual(401)
        hilog.info(0x0000, 'testTag', '%{public}s', `${tag} end`);
        done();
      }
    });

    /*
     * @tc.number : SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0400
     * @tc.name   : createModuleContext,moduleName = entry
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0400', Level.LEVEL0, async (done: Function) => {
      let tag:string = "SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0400"
      hilog.info(0x0000, 'testTag', '%{public}s', `${tag} start`);
      let moduleContext: common.Context;
      try {
        application.createBundleContext(globalThis.context, undefined).then((data: Context) => {
          moduleContext = data;
          hilog.info(0x0000, 'testTag', '%{public}s', 'createBundleContext success!');
        }).catch((error : BusinessError)=>{
          hilog.info(0x0000, 'testTag', '%{public}s', `createBundleContext failed, error.code1: ${(error as BusinessError).code}, error.message1: ${(error as BusinessError).message}`);
        })
      } catch (error) {
        hilog.info(0x0000, 'testTag', '%{public}s', `createBundleContext failed, error.code: ${(error as BusinessError).code}, error.message: ${(error as BusinessError).message}`);
        expect(error.code).assertEqual(401)
        hilog.info(0x0000, 'testTag', '%{public}s', `${tag} end`);
        done();
      }
    });

    /*
     * @tc.number : SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0500
     * @tc.name   : createModuleContext,moduleName = entry
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0500', Level.LEVEL0, async (done: Function) => {
      let tag:string = "SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0500"
      hilog.info(0x0000, 'testTag', '%{public}s', `${tag} start`);
      let moduleContext: common.Context;
      try {
        application.createBundleContext(globalThis.context, '123').then((data: Context) => {
          moduleContext = data;
          hilog.info(0x0000, 'testTag', '%{public}s', 'createBundleContext success!');
        }).catch((error : BusinessError)=>{
          hilog.info(0x0000, 'testTag', '%{public}s', `createBundleContext failed, error.code1: ${(error as BusinessError).code}, error.message1: ${(error as BusinessError).message}`);
          expect(error.code).assertEqual(401)
          hilog.info(0x0000, 'testTag', '%{public}s', `${tag} end`);
          done();
        })
      } catch (error) {
        hilog.info(0x0000, 'testTag', '%{public}s', `createBundleContext failed, error.code: ${(error as BusinessError).code}, error.message: ${(error as BusinessError).message}`);
      }
    });

    /*
     * @tc.number : SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0600
     * @tc.name   : createModuleContext,moduleName = entry
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0600', Level.LEVEL0, async (done: Function) => {
      let tag:string = "SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0500"
      hilog.info(0x0000, 'testTag', '%{public}s', `${tag} start`);
      let moduleContext: common.Context;
      try {
        application.createBundleContext(globalThis.context, '').then((data: Context) => {
          moduleContext = data;
          hilog.info(0x0000, 'testTag', '%{public}s', 'createBundleContext success!');
        }).catch((error : BusinessError)=>{
          hilog.info(0x0000, 'testTag', '%{public}s', `createBundleContext failed, error.code1: ${(error as BusinessError).code}, error.message1: ${(error as BusinessError).message}`);
          expect(error.code).assertEqual(401)
          hilog.info(0x0000, 'testTag', '%{public}s', `${tag} end`);
          done();
        })
      } catch (error) {
        hilog.info(0x0000, 'testTag', '%{public}s', `createBundleContext failed, error.code: ${(error as BusinessError).code}, error.message: ${(error as BusinessError).message}`);
      }
    });

    /*
     * @tc.number : SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0900
     * @tc.name   : createModuleContext,moduleName = entry
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0900', Level.LEVEL0, async (done: Function) => {
      let tag:string = "SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0900"
      hilog.info(0x0000, 'testTag', '%{public}s', `${tag} start`);
      let moduleContext: common.Context;
      try {
        application.createBundleContext(context, 'com.test.actscreatebundlecontexttest').then((data: Context) => {
          moduleContext = data;
          hilog.info(0x0000, 'testTag', '%{public}s', `createBundleContext success! moduleContext is:${JSON.stringify(moduleContext)}`);
          context.resourceManager.getConfiguration((error: BusinessError, value: resourceManager.Configuration) => {
            if (error != null) {
              console.error("getConfiguration callback error is " + error);
            } else {
              let direction:number = value.direction;
              let locale:string = value.locale;
              hilog.info(0x0000, 'testTag', '%{public}s', `resourceManager.getConfiguration direction is:${direction}`);
              hilog.info(0x0000, 'testTag', '%{public}s', `resourceManager.getConfiguration locale is:${locale}`);
              expect(direction).assertEqual(0)
              expect(locale).assertEqual('zh_Hans_CN')
              checkContext(data,done);
            }
          })
        }).catch((error : BusinessError)=>{
          hilog.info(0x0000, 'testTag', '%{public}s', `createBundleContext failed, error.code1: ${(error as BusinessError).code}, error.message1: ${(error as BusinessError).message}`);
        })
      } catch (error) {
        hilog.info(0x0000, 'testTag', '%{public}s', `createBundleContext failed, error.code: ${(error as BusinessError).code}, error.message: ${(error as BusinessError).message}`);
      }
    });
  })
}

export function checkContext(data: Context, done: Function): void {
  if(data.applicationInfo){
    expect(JSON.stringify(data.applicationInfo.name)).assertEqual('"com.test.actscreatebundlecontexttest"');
    expect(JSON.stringify(data.eventHub)).not().assertNull();
    expect(JSON.stringify(data.applicationInfo.description)).assertEqual('""');
    expect(JSON.stringify(data.applicationInfo.descriptionId)).assertEqual('0');
    expect(JSON.stringify(data.applicationInfo.label)).assertEqual('"$string:app_name"');
    expect(JSON.stringify(data.applicationInfo.labelId)).assertEqual('33554435');
    expect(JSON.stringify(data.applicationInfo.icon)).assertEqual('"$media:app_icon"');
    expect(JSON.stringify(data.applicationInfo.iconId)).assertEqual('33554438');
    expect(JSON.stringify(data.applicationInfo.process)).assertEqual('"com.test.actscreatebundlecontexttest"');
    expect(JSON.stringify(data.applicationInfo.uid)).assertEqual('20010045');
    expect(JSON.stringify(data.applicationInfo.iconResource.bundleName)).assertEqual('"com.test.actscreatebundlecontexttest"');
    expect(JSON.stringify(data.applicationInfo.iconResource.moduleName)).assertEqual('"entry_test"');
    expect(JSON.stringify(data.applicationInfo.iconResource.id)).assertEqual('33554438');
    expect(JSON.stringify(data.applicationInfo.labelResource.bundleName)).assertEqual('"com.test.actscreatebundlecontexttest"');
    expect(JSON.stringify(data.applicationInfo.labelResource.moduleName)).assertEqual('"entry_test"');
    expect(JSON.stringify(data.applicationInfo.labelResource.id)).assertEqual('33554435');
    expect(JSON.stringify(data.applicationInfo.descriptionResource.bundleName)).assertEqual('"com.test.actscreatebundlecontexttest"');
    expect(JSON.stringify(data.applicationInfo.descriptionResource.moduleName)).assertEqual('"entry_test"');
    expect(JSON.stringify(data.applicationInfo.descriptionResource.id)).assertEqual('0');
    expect(JSON.stringify(data.applicationInfo.appDistributionType)).assertEqual('"os_integration"');
    expect(JSON.stringify(data.applicationInfo.appProvisionType)).assertEqual('"release"');
    expect(JSON.stringify(data.applicationInfo.flags)).assertEqual('1');
    done();
  }
}