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

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0330
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0330
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0330
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0330', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0330 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0330'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror018')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0330 finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0340
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0340
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0340
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0340', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0340 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0340'
      try {
        i18n.System.setAppPreferredLanguage("zh");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror020')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0340 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0360
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0360
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0360
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0360', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0360 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0360'
      try {
        i18n.System.setAppPreferredLanguage("zh");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror021')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0360 finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0350
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0350
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0350
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0350', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0350 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0350'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror022')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0350 finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0370
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0370
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0370
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0370', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0370 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0370'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror023')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0370 finish.`);
      done()
    })
    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0280
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0280
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0280
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0280', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0280 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0280'
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror025')
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
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0280 finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0380
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0380
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0380
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0380', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0380 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0380'
      try {
        i18n.System.setAppPreferredLanguage("zh");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror026')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0380 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0420
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0420
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0420
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0420', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0420 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0420'
      try {
        i18n.System.setAppPreferredLanguage("zh");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror027')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0420 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0010
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0010
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0010
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0010', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0010 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0010'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror028')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0010 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0470
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0470
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0470
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0470', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0470 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0470'
      try {
        i18n.System.setAppPreferredLanguage("zh");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror029')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0470 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0040
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0040
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0040
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0040', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0040 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0040'
      try {
        i18n.System.setAppPreferredLanguage("zh");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror030')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0040 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0430
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0430
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0430
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0430', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0430 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0430'
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror031')
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
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0430 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0070
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0070
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0070
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0070', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0070 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0070'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror032')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0070 finish.`);
      done()
    })
    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0020
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0020
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0020
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0020', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0020 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0020'
      try {
        i18n.System.setAppPreferredLanguage("zh");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror034')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0020 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0410
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0410
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0410
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0410', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0410 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0410'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror035')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0410 finish.`);
      done()
    })
    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0460
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0460
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0460
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0460', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0460 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0460'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror037')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0460 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0110
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0110
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0110
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0110', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0110 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0110'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror038')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0110 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0440
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0440
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0440
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0440', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0440 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0440'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror039')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0440 finish.`);
      done()
    })
    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0490
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0490
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0490
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0490', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0490 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0490'
      try {
        i18n.System.setAppPreferredLanguage("zh");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror041')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0490 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0060
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0060
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0060
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0060', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0060 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0060'
      try {
        i18n.System.setAppPreferredLanguage("zh");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror042')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0060 finish.`);
      done()
    })
    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0050
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0050
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0050
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0050', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0050 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0050'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror044')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0050 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0500
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0500
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0500
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0500', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0500 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0500'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror045')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0500 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0130
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0130
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0130
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0130', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0130 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0130'
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror046')
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
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0130 finish.`);
      done()
    })
    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0480
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0480
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0480
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0480', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0480 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0480'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror048')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0480 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0080
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0080
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0080
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0080', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0080 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0080'
      try {
        i18n.System.setAppPreferredLanguage("zh");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror049')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0080 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0140
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0140
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0140
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0140', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0140 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0140'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror050')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0140 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0120
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0120
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0120
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0120', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0120 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0120'
      try {
        i18n.System.setAppPreferredLanguage("zh");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror051')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0120 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0030
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0030
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0030
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0030', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0030 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0030'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror052')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0030 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0160
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0160
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0160
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0160', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0160 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0160'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror053')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0160 finish.`);
      done()
    })
    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0170
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0170
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0170
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0170', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0170 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0170'
      try {
        i18n.System.setAppPreferredLanguage("zh");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror055')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0170 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0180
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0180
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0180
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0180', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0180 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0180'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror056')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0180 finish.`);
      done()
    })
    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0200
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0200
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0200
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0200', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0200 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0200'
      try {
        i18n.System.setAppPreferredLanguage("ug");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror058')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0200 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0190
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0190
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0190
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0190', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0190 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0190'
      try {
        i18n.System.setAppPreferredLanguage("zh");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror059')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0190 finish.`);
      done()
    })


    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0570
     * @tc.name       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0570
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0570
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0570', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0570 start.`);
      let caseName = 'ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0570'
      try {
        i18n.System.setAppPreferredLanguage("zh");
        Logger.info(`${caseName}: call System.setSystemLanguage success.`);
      } catch(error) {
        let err: BusinessError = error as BusinessError;
        Logger.error(`${caseName}: call System.setSystemLanguage failed, error code: ${err.code}, message: ${err.message}.`);
      }
      Settings.createWindow('testability/pages/ArkUIComponentFunctionAdvancedComponents/ArkUIComponentFunctionAdvancedComponentsMirror060')
      await Utils.sleep(3000)
      windowSnap.snapShot(caseName)
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_MIRROR_0570 finish.`);
      done()
    })

  })
}
