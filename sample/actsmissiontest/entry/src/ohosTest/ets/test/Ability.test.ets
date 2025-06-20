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
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level} from '@ohos/hypium';
import { abilityManager, missionManager } from '@kit.AbilityKit';
import { BusinessError, settings } from '@kit.BasicServicesKit';
import AbilityDelegatorRegistry from '@ohos.app.ability.abilityDelegatorRegistry';
import { Driver } from '@kit.TestKit';

let abilityDelegator: AbilityDelegatorRegistry.AbilityDelegator;

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

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_MissionManager_MissionSnopt_1100
     * @tc.name    SUB_Ability_AbilityRuntime_MissionManager_MissionSnopt_1100
     * @tc.desc    missionId does not exist
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MissionManager_MissionSnopt_1100', Level.LEVEL0, async (done: Function) => {
      let testMissionId = 11111;
      try {
        const data = await missionManager.getMissionSnapShot('', testMissionId).then((data) => {
          console.info(`getMissionSnapShot successfully. Data: ${JSON.stringify(data)}`);
        })
      } catch (error) {
        console.error(`getMissionSnapShot failed. Cause: ${error.code}`);
        expect(error.code).assertEqual(16000050);
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_MissionManager_MissionTask_8800
     * @tc.name    SUB_Ability_AbilityRuntime_MissionManager_MissionTask_8800
     * @tc.desc    The missionId of moveMissionToFront is undefined
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MissionManager_MissionTask_8800', Level.LEVEL0, async (done: Function) => {
      let testMissionId = undefined;
      try {
        const data = await missionManager.moveMissionToFront(testMissionId).then((data) => {
          console.info(`moveMissionToFront successfully. Data: ${JSON.stringify(data)}`);
        })
      } catch (error) {
        console.error(`moveMissionToFront  failed. Cause: ${error.code}`);
        expect(error.code).assertEqual(401);
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_MissionManager_MissionTask_8900
     * @tc.name    SUB_Ability_AbilityRuntime_MissionManager_MissionTask_8900
     * @tc.desc    The missionId of moveMissionToFront is not exist
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MissionManager_MissionTask_8900', Level.LEVEL0, async (done: Function) => {
      let testMissionId = 12123;
      try {
        const data = await missionManager.moveMissionToFront(testMissionId).then((data) => {
          console.info(`moveMissionToFront successfully. Data: ${JSON.stringify(data)}`);
        })
      } catch (error) {
        console.error(`moveMissionToFront  failed. Cause: ${error.code}`);
        expect(error.code).assertEqual(16000050);
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_MissionManager_MissionTask_9200
     * @tc.name    SUB_Ability_AbilityRuntime_MissionManager_MissionTask_9200
     * @tc.desc    The missionId of moveMissionToFront is float
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MissionManager_MissionTask_9200', Level.LEVEL0, async (done: Function) => {
      let testMissionId = 2.111;
      try {
        const data = await missionManager.moveMissionToFront(testMissionId).then((data) => {
          console.info(`moveMissionToFront successfully. Data: ${JSON.stringify(data)}`);
        })
      } catch (error) {
        console.error(`moveMissionToFront  failed. Cause: ${error.code}`);
        expect(error.code).assertEqual(16000050);
        done();
      }
    })


    /*
     * @tc.number  SUB_Ability_AbilityRuntime_MissionManager_MissionLockAndClear_3600
     * @tc.name    SUB_Ability_AbilityRuntime_MissionManager_MissionLockAndClear_3600
     * @tc.desc    startAbility and clear ability
     * @tc.size    MediumTest
     * @tc.type    Function
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MissionManager_MissionLockAndClear_3600', Level.LEVEL0, async (done: Function) => {
      let startWant: Want = {
        bundleName: 'com.test.actsmissiontest',
        abilityName: "MainAbility1",
      };
      try {
        globalThis.context.startAbility(startWant).then(() => {
          console.log('startAbility success');
        }).catch((error: BusinessError) => {
          console.log('startAbility error', JSON.stringify(error));
        })
      } catch (err) {
        console.log('startAbility failed', JSON.stringify(err.code));
      }
      let testMissionId = 0;
      try {
        const data = await missionManager.getMissionInfos('', 100).then((missionInfos) => {
          missionInfos.forEach((missionInfo) => {
            testMissionId = missionInfo.missionId;
            console.info(`Mission ID: ${testMissionId}`);
            try {
              missionManager.clearMission(testMissionId).then((data) => {
                console.info(`clearMission successfully. Data: ${JSON.stringify(data)}`);
                done();
              }).catch((error: BusinessError) => {
                console.error(`clearMission failed. Cause: ${error.message}`);
              });
            } catch (error) {
              console.error(`clearMission failed. Cause: ${error.message}`);
            }
          });
        }).catch((error: BusinessError) => {
          console.error(`Failed to get mission infos. Cause: ${error.message}`);
        });
      } catch (error) {
        console.error(`moveMissionToFront  failed. Cause: ${error.code}`);
      }
    })

  })
}