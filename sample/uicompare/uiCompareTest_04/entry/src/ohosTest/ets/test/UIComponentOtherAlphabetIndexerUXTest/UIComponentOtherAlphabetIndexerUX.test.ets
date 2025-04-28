/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver } from '@ohos.UiTest'

export default function UIComponentOtherAlphabetIndexerUX() {
  describe('UIComponentOtherAlphabetIndexerUX', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return
      }

      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      })
      await Utils.sleep(1000);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_OTHER_ALPHABETINDEXER_UX_0120
     * @tc.name    Verify whether the display of multiple characters in the secondary pop-up window meets the specifications
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_OTHER_ALPHABETINDEXER_UX_0120', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_OTHER_ALPHABETINDEXER_UX_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherAlphabetIndexerUX/UIComponentOtherAlphabetIndexerUX001");
      await Utils.sleep(1000);
      let driver:Driver = Driver.create();
      await driver.mouseScroll({x:370, y:770}, true, 20, 2072, 20);
      await driver.mouseScroll({x:500, y:770}, true, 70, 2072, 20);
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentOtherAlphabetIndexerUX0120');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_OTHER_ALPHABETINDEXER_UX_0120 finish.`);
      done();
    });
  })
}
