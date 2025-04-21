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

import base from '@ohos.base';
import { BusinessError } from '@ohos.base';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { common, missionManager, uriPermissionManager, Want, wantConstant } from '@kit.AbilityKit';
import router from '@ohos.router';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import { fileIo, fileShare, fileUri } from '@kit.CoreFileKit';
import { fileIo as fs } from '@kit.CoreFileKit';

let TAG = 'RunTimeTest';

export default function abilityTest() {
  describe('ActsAbilityTest', () => {
    // Defines a test suite. Two parameters are supported: test suite name and test suite function.
    beforeAll(() => {
      // Presets an action, which is performed only once before all test cases of the test suite start.
      // This API supports only one parameter: preset action function.
    })
    beforeEach(() => {
      // Presets an action, which is performed before each unit test case starts.
      // The number of execution times is the same as the number of test cases defined by **it**.
      // This API supports only one parameter: preset action function.
    })
    afterEach(() => {
      // Presets a clear action, which is performed after each unit test case ends.
      // The number of execution times is the same as the number of test cases defined by **it**.
      // This API supports only one parameter: clear action function.
    })
    afterAll(() => {
      // Presets a clear action, which is performed after all test cases of the test suite end.
      // This API supports only one parameter: clear action function.
    })
    /* @tc.number  SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3000
     * @tc.name    grantUriPermission is not read or written into the Flags parameter
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
    */
    it('SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3000', 0, async (done:Function) => {
      let TAG = 'SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3000'
      let targetBundleName = 'com.test.actsauthorizationandrevocationtest'
      let path = "/name/name";
      fs.mkdir(path).then(() => {
        console.info(TAG,"mkdir succeed");
      }).catch((err: BusinessError) => {
        console.error(TAG,"mkdir failed with error message: " + err.message + ", error code: " + err.code);
      });
      let uri = fileUri.getUriFromPath(path);
      try {
        const data = await uriPermissionManager.grantUriPermission(uri, wantConstant.Flags.FLAG_AUTH_PERSISTABLE_URI_PERMISSION, targetBundleName);
        console.log(TAG,',Verification succeeded.' + data);
      } catch (error) {
        console.log(TAG,`Error occurred while granting permission:  ${JSON.stringify(error.code)}`);
        expect(error.code).assertEqual(16000058);
        done();
      }
    })

    /* @tc.number  SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3100
     * @tc.name    grantUriPermission parameter uri is undefined
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3100', 0, async (done:Function) => {
      let TAG = 'SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3100'
      let targetBundleName = 'com.test.actsauthorizationandrevocationtest'
      let path = "/data/storage/el2/base/haps/entry";
      fs.mkdir(path).then(() => {
        console.info(TAG,"mkdir succeed");
      }).catch((err: BusinessError) => {
        console.error(TAG,"mkdir failed with error message: " + err.message + ", error code: " + err.code);
      });
      let uri = undefined;
      try {
        const data = await uriPermissionManager.grantUriPermission(uri, wantConstant.Flags.FLAG_AUTH_READ_URI_PERMISSION, targetBundleName);
        console.log(TAG,'Verification succeeded.' + data);
      } catch (error) {
        console.log(TAG,`Error occurred while granting permission:  ${JSON.stringify(error.code)}`);
        expect(error.code).assertEqual(401);
        done();
      }
    })

    /* @tc.number  SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3200
     * @tc.name    grantUriPermission parameter targetBundleName does not exist
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3200', 0, async (done:Function) => {
      let TAG = 'SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3200'
      let targetBundleName = 'com.test.1111'
      let path = "/data/storage/el2/base/haps/entry";
      fs.mkdir(path).then(() => {
        console.info(TAG,"mkdir succeed");
      }).catch((err: BusinessError) => {
        console.error(TAG,"mkdir failed with error message: " + err.message + ", error code: " + err.code);
      });
      let uri = fileUri.getUriFromPath(path);
      try {
        const data = await uriPermissionManager.grantUriPermission(uri, wantConstant.Flags.FLAG_AUTH_READ_URI_PERMISSION, targetBundleName);
        console.log(TAG,'Verification succeeded.' + data);
      } catch (error) {
        console.log(TAG,`Error occurred while granting permission:  ${JSON.stringify(error.code)}`);
        expect(error.code).assertEqual(16000050);
        done();
      }
    })

    /* @tc.number  SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3400
     * @tc.name    The revokeUriPermission parameter uri is undefined
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3400', 0, async (done:Function) => {
      let TAG = 'SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3400'
      let targetBundleName = 'com.test.actsauthorizationandrevocationtest'
      let path = "/data/storage/el2/base/haps/entry";
      let uri = undefined;
      try {
        const data = await uriPermissionManager.revokeUriPermission(uri, targetBundleName)
      } catch (error) {
        console.log(TAG,`Error occurred while granting permission:  ${JSON.stringify(error.code)}`);
        expect(error.code).assertEqual(401);
        done();
      }
    })


    /* @tc.number  SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3500
     * @tc.name    The revokeUriPermission parameter targetBundleName does not exist
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
 */
    it('SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3500', 0, async (done:Function) => {
      let TAG = 'SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3500'
      let targetBundleName = 'com.test.1111'
      let path = "/data/storage/el2/base/haps/entry";
      let uri = fileUri.getUriFromPath(path);
      try {
        const data = await uriPermissionManager.revokeUriPermission(uri, targetBundleName)
      } catch (error) {
        console.log(TAG,`Error occurred while granting permission:  ${JSON.stringify(error.code)}`);
        expect(error.code).assertEqual(16000050);
        done();
      }
    })

    /* @tc.number  SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3600
     * @tc.name    Verify that the background application calls the moveAbilityToBackground API fails
     * @tc.desc   : Function test
     * @tc.size:   MediumTest
     * @tc.type:   Function
     * @tc.level  : 0
     */
    it('SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3600', 0, async (done:Function) => {
      let TAG = 'SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3600'
      let targetBundleName = 'com.test.actsauthorizationandrevocationtest'
      let uri = "file://com.example.test_case1/data/storage/el2/base/haps/entry_test/files/newDir";
      try {
        const data = await uriPermissionManager.revokeUriPermission(uri, targetBundleName);
        console.log(TAG,'Verification succeeded.' + data);
        done()
      } catch (error) {
        console.log(TAG,`Error occurred while granting permission:  ${JSON.stringify(error.code)}`);
        done();
      }
    })
  })
}