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
     * @tc.number : SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0800
     * @tc.name   : createBundleContext, normal app
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0800', Level.LEVEL0, async (done: Function) => {
      let tag:string = "SUB_Ability_AbilityRuntime_AMS_Context_CreateBundleContext_0800"
      hilog.info(0x0000, 'testTag', '%{public}s', `${tag} start`);
      let moduleContext: common.Context;
      try {
        application.createBundleContext(globalThis.context, 'com.test.actscreatecontextnormaltest').then((data: Context) => {
          moduleContext = data;
          hilog.info(0x0000, 'testTag', '%{public}s', 'createBundleContext success!');
        }).catch((error : BusinessError)=>{
          hilog.info(0x0000, 'testTag', '%{public}s', `createBundleContext failed, error.code1: ${(error as BusinessError).code}, error.message1: ${(error as BusinessError).message}`);
        })
      } catch (error) {
        hilog.info(0x0000, 'testTag', '%{public}s', `createBundleContext failed, error.code: ${(error as BusinessError).code}, error.message: ${(error as BusinessError).message}`);
        expect(error.code).assertEqual(202)
        hilog.info(0x0000, 'testTag', '%{public}s', `${tag} end`);
        done();
      }
    });


    /*
     * @tc.number : SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_1200
     * @tc.name   : createModuleContext, normal app
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_1200', Level.LEVEL0, async (done: Function) => {
      let tag:string = "SUB_Ability_AbilityRuntime_AMS_Context_CreateModuleContext_1200"
      hilog.info(0x0000, 'testTag', '%{public}s', `${tag} start`);
      let moduleContext: common.Context;
      try {
        application.createModuleContext(globalThis.context, 'com.test.actscreatecontextnormaltest', 'entry_test').then((data: Context) => {
          moduleContext = data;
          hilog.info(0x0000, 'testTag', '%{public}s', 'createModuleContext success!');
        }).catch((error : BusinessError)=>{
          hilog.info(0x0000, 'testTag', '%{public}s', `createModuleContext failed, error.code1: ${(error as BusinessError).code}, error.message1: ${(error as BusinessError).message}`);
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
