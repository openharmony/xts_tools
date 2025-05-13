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
import { resourceManager } from '@kit.LocalizationKit'
import { hilog } from '@kit.PerformanceAnalysisKit';
import { checkContext } from './createBundleContext.test'

let context = getContext(this) as common.UIAbilityContext;

export default function createModuleContextTest() {
  describe('createModuleContextTest', () => {

    beforeAll(() => {
      context = globalThis.context
    })
    beforeEach(() => {
    })
    afterEach(() => {
    })
    afterAll(() => {
    })

    /*
     * @tc.number : SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0100
     * @tc.name   : createModuleContext,context = null, return 401
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0100', Level.LEVEL0, async (done: Function) => {
      let tag:string = "SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0100"
      hilog.info(0x0000, 'testTag', '%{public}s', `${tag} start`);
      let moduleContext: common.Context;
      try {
        application.createModuleContext(null, 'com.test.actscreatebundlecontexttest','entry').then((data: Context) => {
          moduleContext = data;
          hilog.info(0x0000, 'testTag', '%{public}s', 'createModuleContext success!');
          expect().assertFail();
          done();
        }).catch((error : BusinessError)=>{
          hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message1: ${(error as BusinessError).message}`);
        })
      } catch (error) {
        hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message: ${(error as BusinessError).message}`);
        expect(error.code).assertEqual(401)
        hilog.info(0x0000, 'testTag', '%{public}s', `${tag} end`);
        done();
      }
    });

    /*
     * @tc.number : SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0200
     * @tc.name   : createModuleContext,context = undefined, return 401
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0200', Level.LEVEL0, async (done: Function) => {
      let tag:string = "SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0200"
      hilog.info(0x0000, 'testTag', '%{public}s', `${tag} start`);
      let moduleContext: common.Context;
      try {
        application.createModuleContext(undefined, 'com.test.actscreatebundlecontexttest','entry').then((data: Context) => {
          moduleContext = data;
          hilog.info(0x0000, 'testTag', '%{public}s', 'createModuleContext success!');
          expect().assertFail();
          done();
        }).catch((error : BusinessError)=>{
          hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message1: ${(error as BusinessError).message}`);
        })
      } catch (error) {
        hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message: ${(error as BusinessError).message}`);
        expect(error.code).assertEqual(401)
        hilog.info(0x0000, 'testTag', '%{public}s', `${tag} end`);
        done();
      }
    });

    /*
     * @tc.number : SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0300
     * @tc.name   : createModuleContext,bundleName = null, return 401
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0300', Level.LEVEL0, async (done: Function) => {
      let tag:string = "SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0300"
      hilog.info(0x0000, 'testTag', '%{public}s', `${tag} start`);
      let moduleContext: common.Context;
      try {
        application.createModuleContext(context, null,'entry').then((data: Context) => {
          moduleContext = data;
          hilog.info(0x0000, 'testTag', '%{public}s', 'createModuleContext success!');
          expect().assertFail();
          done();
        }).catch((error : BusinessError)=>{
          hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message1: ${(error as BusinessError).message}`);
        })
      } catch (error) {
        hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message: ${(error as BusinessError).message}`);
        expect(error.code).assertEqual(401)
        hilog.info(0x0000, 'testTag', '%{public}s', `${tag} end`);
        done();
      }
    });

    /*
     * @tc.number : SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0300
     * @tc.name   : createModuleContext,bundleName = undefined, return 401
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0400', Level.LEVEL0, async (done: Function) => {
      let tag:string = "SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0400"
      hilog.info(0x0000, 'testTag', '%{public}s', `${tag} start`);
      let moduleContext: common.Context;
      try {
        application.createModuleContext(context, undefined,'entry').then((data: Context) => {
          moduleContext = data;
          hilog.info(0x0000, 'testTag', '%{public}s', 'createModuleContext success!');
          expect().assertFail();
          done();
        }).catch((error : BusinessError)=>{
          hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message1: ${(error as BusinessError).message}`);
        })
      } catch (error) {
        hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message: ${(error as BusinessError).message}`);
        expect(error.code).assertEqual(401)
        hilog.info(0x0000, 'testTag', '%{public}s', `${tag} end`);
        done();
      }
    });

    /*
     * @tc.number : SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0500
     * @tc.name   : createModuleContext,bundleName = 'xxxxx', return 401
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0500', Level.LEVEL0, async (done: Function) => {
      let tag:string = "SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0500"
      hilog.info(0x0000, 'testTag', '%{public}s', `${tag} start`);
      let moduleContext: common.Context;
      try {
        application.createModuleContext(context, 'xxxxx','entry').then((data: Context) => {
          moduleContext = data;
          hilog.info(0x0000, 'testTag', '%{public}s', 'createModuleContext success!');
          expect().assertFail();
          done();
        }).catch((error : BusinessError)=>{
          hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message1: ${(error as BusinessError).message}`);
          expect(error.code).assertEqual(401)
          done();
        })
      } catch (error) {
        hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message: ${(error as BusinessError).message}`);
        expect(error.code).assertEqual(401)
        hilog.info(0x0000, 'testTag', '%{public}s', `${tag} end`);
        done();
      }
    });

    /*
     * @tc.number : SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0600
     * @tc.name   : createModuleContext,bundleName = '', return 401
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0600', Level.LEVEL0, async (done: Function) => {
      let tag:string = "SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0600"
      hilog.info(0x0000, 'testTag', '%{public}s', `${tag} start`);
      let moduleContext: common.Context;
      try {
        application.createModuleContext(context, '','entry').then((data: Context) => {
          moduleContext = data;
          hilog.info(0x0000, 'testTag', '%{public}s', 'createModuleContext success!');
          expect().assertFail();
          done();
        }).catch((error : BusinessError)=>{
          hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message1: ${(error as BusinessError).message}`);
          expect(error.code).assertEqual(401)
          done();
        })
      } catch (error) {
        hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message: ${(error as BusinessError).message}`);
        expect(error.code).assertEqual(401)
        hilog.info(0x0000, 'testTag', '%{public}s', `${tag} end`);
        done();
      }
    });

    /*
     * @tc.number : SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0700
     * @tc.name   : createModuleContext,moduleName = null, return 401
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0700', Level.LEVEL0, async (done: Function) => {
      let tag:string = "SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0700"
      hilog.info(0x0000, 'testTag', '%{public}s', `${tag} start`);
      let moduleContext: common.Context;
      try {
        application.createModuleContext(context, 'com.test.actscreatebundlecontexttest',null).then((data: Context) => {
          moduleContext = data;
          hilog.info(0x0000, 'testTag', '%{public}s', 'createModuleContext success!');
          expect().assertFail();
          done();
        }).catch((error : BusinessError)=>{
          hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message1: ${(error as BusinessError).message}`);
          expect(error.code).assertEqual(401)
          done();
        })
      } catch (error) {
        hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message: ${(error as BusinessError).message}`);
        expect(error.code).assertEqual(401)
        hilog.info(0x0000, 'testTag', '%{public}s', `${tag} end`);
        done();
      }
    });

    /*
     * @tc.number : SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0800
     * @tc.name   : createModuleContext,moduleName = undefined, return 401
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0800', Level.LEVEL0, async (done: Function) => {
      let tag:string = "SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0800"
      hilog.info(0x0000, 'testTag', '%{public}s', `${tag} start`);
      let moduleContext: common.Context;
      try {
        application.createModuleContext(context, 'com.test.actscreatebundlecontexttest', undefined).then((data: Context) => {
          moduleContext = data;
          hilog.info(0x0000, 'testTag', '%{public}s', 'createModuleContext success!');
          expect().assertFail();
          done();
        }).catch((error : BusinessError)=>{
          hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message1: ${(error as BusinessError).message}`);
          expect(error.code).assertEqual(401)
          done();
        })
      } catch (error) {
        hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message: ${(error as BusinessError).message}`);
        expect(error.code).assertEqual(401)
        hilog.info(0x0000, 'testTag', '%{public}s', `${tag} end`);
        done();
      }
    });

    /*
     * @tc.number : SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0900
     * @tc.name   : createModuleContext,moduleName = 'xxxx, return 401
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0900', Level.LEVEL0, async (done: Function) => {
      let tag:string = "SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_0900"
      hilog.info(0x0000, 'testTag', '%{public}s', `${tag} start`);
      let moduleContext: common.Context;
      try {
        application.createModuleContext(context, 'com.test.actscreatebundlecontexttest', 'xxxx').then((data: Context) => {
          moduleContext = data;
          hilog.info(0x0000, 'testTag', '%{public}s', 'createModuleContext success!');
          expect().assertFail();
          done();
        }).catch((error : BusinessError)=>{
          hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message1: ${(error as BusinessError).message}`);
          expect(error.code).assertEqual(401)
          done();
        })
      } catch (error) {
        hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message: ${(error as BusinessError).message}`);
        expect(error.code).assertEqual(401)
        hilog.info(0x0000, 'testTag', '%{public}s', `${tag} end`);
        done();
      }
    });

    /*
     * @tc.number : SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_1000
     * @tc.name   : createModuleContext,moduleName = '', return 401
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_1000', Level.LEVEL0, async (done: Function) => {
      let tag:string = "SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_1000"
      hilog.info(0x0000, 'testTag', '%{public}s', `${tag} start`);
      let moduleContext: common.Context;
      try {
        application.createModuleContext(context, 'com.test.actscreatebundlecontexttest', '').then((data: Context) => {
          moduleContext = data;
          hilog.info(0x0000, 'testTag', '%{public}s', 'createModuleContext success!');
          expect().assertFail();
          done();
        }).catch((error : BusinessError)=>{
          hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message1: ${(error as BusinessError).message}`);
          expect(error.code).assertEqual(401)
          done();
        })
      } catch (error) {
        hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message: ${(error as BusinessError).message}`);
        expect(error.code).assertEqual(401)
        hilog.info(0x0000, 'testTag', '%{public}s', `${tag} end`);
        done();
      }
    });

    /*
     * @tc.number : SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_1900
     * @tc.name   : createModuleContext, execute success
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_1900', Level.LEVEL0, async (done: Function) => {
      let tag:string = "SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_1900"
      hilog.info(0x0000, 'testTag', '%{public}s', `${tag} start`);
      let moduleContext: common.Context;
      try {
        application.createModuleContext(context, 'com.test.actscreatebundlecontexttest', 'entry_test').then((data: Context) => {
          moduleContext = data;
          hilog.info(0x0000, 'testTag', '%{public}s', 'createModuleContext success!');
          context.resourceManager.getConfiguration((error: BusinessError, value: resourceManager.Configuration) => {
            if (error != null) {
              console.error("getConfiguration callback error is " + error);
              expect().assertFail();
              done();
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
          hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message1: ${(error as BusinessError).message}`);
          expect(error.code).assertEqual(202)
          done();
        })
      } catch (error) {
        hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code: ${(error as BusinessError).code}, error.message: ${(error as BusinessError).message}`);
        expect(error.code).assertEqual(202)
        hilog.info(0x0000, 'testTag', '%{public}s', `${tag} end`);
        done();
      }
    });
  })
}
