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

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, Component, ON } from '@kit.TestKit'
import { BusinessError } from '@ohos.base';
import i18n from '@ohos.i18n'

export default function ArkUIComponentFunctionAdvancedComponentsMirror() {

  describe('ArkUIComponentFunctionAdvancedComponentsMirror', () => {
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

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0530
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0530
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0530
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0530', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0530 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0530'
      try {
        i18n.System.setAppPreferredLanguage("zh");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror001')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0530 finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0220
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0220
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0220
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0220', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0220 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0220'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror002')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0220 finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0590
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0590
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0590
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0590', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0590 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0590'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror003')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0590 finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0560
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0560
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0560
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0560', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0560 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0560'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror004')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0560 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0580
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0580
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0580
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0580', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0580 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0580'
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror005')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let directionRtl: Component = await driver.findComponent(ON.id('DirectionRtl'))
      await directionRtl.click();
      let directionAuto: Component = await driver.findComponent(ON.id('DirectionAuto'))
      await directionAuto.click();
      let directionLtr: Component = await driver.findComponent(ON.id('DirectionLtr'))
      await directionLtr.click();
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0580 finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0210
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0210
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0210
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0210', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0210 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0210'
      try {
        i18n.System.setAppPreferredLanguage("zh");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror007')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0210 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0270
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0270
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0270
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0270', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0270 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0270'
      try {
        i18n.System.setAppPreferredLanguage("zh");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror008')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0270 finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0290
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0290
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0290
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0290', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0290 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0290'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror009')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0290 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0240
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0240
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0240
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0240', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0240 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0240'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror010')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0240 finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0510
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0510
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0510
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0510', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0510 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0510'
      try {
        i18n.System.setAppPreferredLanguage("zh");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror011')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0510 finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0230
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0230
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0230
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0230', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0230 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0230'
      try {
        i18n.System.setAppPreferredLanguage("zh");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror012')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0230 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0250
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0250
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0250
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0250', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0250 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0250'
      try {
        i18n.System.setAppPreferredLanguage("zh");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror013')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0250 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0260
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0260
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0260
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0260', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0260 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0260'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror014')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0260 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0310
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0310
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0310
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0310', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0310 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0310'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror015')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0310 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0520
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0520
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0520
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0520', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0520 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0520'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror016')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0520 finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0320
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0320
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0320
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0320', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0320 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0320'
      try {
        i18n.System.setAppPreferredLanguage("zh");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror017')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0320 finish.`);
      done()
    })


  })
}
