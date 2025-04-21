/*
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
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level } from '@ohos/hypium';
import { abilityManager, common } from '@kit.AbilityKit';
import { BusinessError } from '@kit.BasicServicesKit';

let TAG = 'RunTimeTest';

function sleep(ms: number) {
  return new Promise<string>(resolve => setTimeout(resolve, ms));
}

export default function residentProcessSystemAppTest() {
  describe('residentProcessSystemAppTest', () => {
    beforeAll(() => {
    })
    beforeEach(() => {

    })
    afterEach(() => {

    })
    afterAll(() => {

    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_ResidentProcess_0400
     * @tc.name    SUB_Ability_AbilityRuntime_ResidentProcess_0400
     * @tc.desc    When the 'bundlename' parameter in setResidentProcessEnable is passed as null, it returns error code 401
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_ResidentProcess_0400', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_ResidentProcess_0400';
      try {
        let residentProcessBundleName = null;
        let enable: boolean = false;
        let errObject = {} as BusinessError;
        await abilityManager.setResidentProcessEnabled(residentProcessBundleName, enable)
          .then(() => {
            hilog.info(0x0000, TAG, "[%{public}s] setResidentProcessEnabled succeed.", TAG);
            expect().assertFail();
          })
          .catch((err: BusinessError) => {
            hilog.info(0x0000, TAG, "[%{public}s] setResidentProcessEnabled fail, err: %{public}s", TAG, JSON.stringify(err));
            errObject = err;
          });
        expect(errObject.code).assertEqual(401);
        done();
      } catch (paramError) {
        hilog.info(0x0000, TAG, "[%{public}s] paramError: %{public}s", TAG, JSON.stringify(paramError));
        expect(paramError.code).assertEqual(401);
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_ResidentProcess_0500
     * @tc.name    SUB_Ability_AbilityRuntime_ResidentProcess_0500
     * @tc.desc    When the 'bundlename' parameter in setResidentProcessEnable is passed as undefined, it returns error code 401
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_ResidentProcess_0500', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_ResidentProcess_0500';
      try {
        let residentProcessBundleName = undefined;
        let enable: boolean = false;
        let errObject = {} as BusinessError;
        await abilityManager.setResidentProcessEnabled(residentProcessBundleName, enable)
          .then(() => {
            hilog.info(0x0000, TAG, "[%{public}s] setResidentProcessEnabled succeed.", TAG);
            expect().assertFail();
          })
          .catch((err: BusinessError) => {
            hilog.info(0x0000, TAG, "[%{public}s] setResidentProcessEnabled fail, err: %{public}s", TAG, JSON.stringify(err));
            errObject = err;
          });
        expect(errObject.code).assertEqual(401);
        done();
      } catch (paramError) {
        hilog.info(0x0000, TAG, "[%{public}s] paramError: %{public}s", TAG, JSON.stringify(paramError));
        expect(paramError.code).assertEqual(401);
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_ResidentProcess_0600
     * @tc.name    SUB_Ability_AbilityRuntime_ResidentProcess_0600
     * @tc.desc    When the 'bundlename' parameter in setResidentProcessEnable is passed as empty, it returns error code 401
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_ResidentProcess_0600', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_ResidentProcess_0600';
      try {
        let residentProcessBundleName: string = '';
        let enable: boolean = false;
        let errObject = {} as BusinessError;
        await abilityManager.setResidentProcessEnabled(residentProcessBundleName, enable)
          .then(() => {
            hilog.info(0x0000, TAG, "[%{public}s] setResidentProcessEnabled succeed.", TAG);
            expect().assertFail();
          })
          .catch((err: BusinessError) => {
            hilog.info(0x0000, TAG, "[%{public}s] setResidentProcessEnabled fail, err: %{public}s", TAG, JSON.stringify(err));
            errObject = err;
          });
        expect(errObject.code).assertEqual(401);
        done();
      } catch (paramError) {
        hilog.info(0x0000, TAG, "[%{public}s] paramError: %{public}s", TAG, JSON.stringify(paramError));
        expect(paramError.code).assertEqual(401);
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_ResidentProcess_0700
     * @tc.name    SUB_Ability_AbilityRuntime_ResidentProcess_0700
     * @tc.desc    When the 'enable' parameter in setResidentProcessEnable is passed as null, it returns error code 401
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_ResidentProcess_0700', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_ResidentProcess_0700';
      try {
        let residentProcessBundleName: string = 'com.test.actsresidentprocessrely';
        let enable = null;
        let errObject = {} as BusinessError;
        await abilityManager.setResidentProcessEnabled(residentProcessBundleName, enable)
          .then(() => {
            hilog.info(0x0000, TAG, "[%{public}s] setResidentProcessEnabled succeed.", TAG);
            expect().assertFail();
          })
          .catch((err: BusinessError) => {
            hilog.info(0x0000, TAG, "[%{public}s] setResidentProcessEnabled fail, err: %{public}s", TAG, JSON.stringify(err));
            errObject = err;
          });
        expect(errObject.code).assertEqual(401);
        done();
      } catch (paramError) {
        hilog.info(0x0000, TAG, "[%{public}s] paramError: %{public}s", TAG, JSON.stringify(paramError));
        expect(paramError.code).assertEqual(401);
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_ResidentProcess_0800
     * @tc.name    SUB_Ability_AbilityRuntime_ResidentProcess_0800
     * @tc.desc    When the 'enable' parameter in setResidentProcessEnable is passed as undefined, it returns error code 401
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_ResidentProcess_0800', Level.LEVEL0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_ResidentProcess_0800';
      try {
        let residentProcessBundleName: string = 'com.test.actsresidentprocessrely';
        let enable = undefined;
        let errObject = {} as BusinessError;
        await abilityManager.setResidentProcessEnabled(residentProcessBundleName, enable)
          .then(() => {
            hilog.info(0x0000, TAG, "[%{public}s] setResidentProcessEnabled succeed.", TAG);
            expect().assertFail();
          })
          .catch((err: BusinessError) => {
            hilog.info(0x0000, TAG, "[%{public}s] setResidentProcessEnabled fail, err: %{public}s", TAG, JSON.stringify(err));
            errObject = err;
          });
        expect(errObject.code).assertEqual(401);
        done();
      } catch (paramError) {
        hilog.info(0x0000, TAG, "[%{public}s] paramError: %{public}s", TAG, JSON.stringify(paramError));
        expect(paramError.code).assertEqual(401);
        done();
      }
    })

  })
}