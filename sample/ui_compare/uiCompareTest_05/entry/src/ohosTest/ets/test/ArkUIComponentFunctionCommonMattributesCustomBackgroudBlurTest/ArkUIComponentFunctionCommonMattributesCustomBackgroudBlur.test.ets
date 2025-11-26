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
import { Driver, Component, ON, MouseButton } from '@kit.TestKit'

export default function ArkUIComponentFunctionCommonMattributesCustomBackgroudBlurTest() {

  describe('ArkUIComponentFunctionCommonMattributesCustomBackgroudBlurTest', () => {
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
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0010
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0010
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0010
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0010', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0010'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0010')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0020
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0020
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0020
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0020', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0020'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0020')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName}- finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0030
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0030
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0030
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0030', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0030'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0030')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName}- finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0040
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0040
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0040
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0040', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0040'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0040')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName}- finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0050
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0050
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0050
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0050', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0050'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0050')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName}- finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0060
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0060
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0060
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0060', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0060'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0060')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0070
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0070
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0070
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0070', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0070'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0070')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0080
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0080
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0080
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0080', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0080'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0080')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName}- finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0090
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0090
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0090
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0090', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0090'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0090')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0100
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0100
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0100
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0100', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0100'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0100')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName}- finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0110
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0110
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0110
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0110', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0110'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0110')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName}- finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0120
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0120
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0120
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0120', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0120'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0120')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName}- finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0130
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0130
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0130
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0130', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0130'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0130')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName}- finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0140
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0140
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0140
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0140', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0140'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0140')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName}- finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0150
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0150
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0150
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0150', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0150'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0150')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName}- finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0160
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0160
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0160
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0160', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0160'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0160')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName}- finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0170
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0170
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0170
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0170', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0170'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0170')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0180
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0180
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0180
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0180', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0180'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0180')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0190
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0190
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0190
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0190', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0190'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0190')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    // ---------------------

    //
    //
    // ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0220
    // ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0230
    // ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0240
    // ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0250
    // ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0260
    // ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0270
    // ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0280
    // ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0290
    // ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0300
    // ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0310
    // ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0320

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0200
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0200
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0200
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0200', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0200'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0200')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0210
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0210
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0210
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0210', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0210'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0210')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0220
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0220
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0220
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0220', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0220'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0220')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0230
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0230
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0230
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0230', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0230'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0230')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0240
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0240
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0240
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0240', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0240'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0240')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0250
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0250
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0250
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0250', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0250'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0250')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0260
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0260
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0260
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0260', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0260'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0260')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0270
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0270
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0270
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0270', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0270'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0270')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0280
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0280
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0280
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0280', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0280'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0280')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0290
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0290
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0290
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0290', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0290'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0290')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0300
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0300
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0300
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0300', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0300'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0300')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0310
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0310
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0310
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0310', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0310'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0310')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0320
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0320
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0320
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0320', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0320'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0320')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0330
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0330
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0330
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0330', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0330'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0330')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0340
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0340
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0340
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0340', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0340'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0340')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0350
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0350
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0350
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0350', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0350'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0350')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0360
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0360
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0360
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0360', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0360'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0360')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0370
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0370
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0370
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0370', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0370'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0370')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0380
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0380
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0380
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0380', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0380'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0380')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0390
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0390
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0390
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0390', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0390'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0390')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0400
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0400
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0400
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0400', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0400'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0400')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0410
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0410
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0410
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0410', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0410'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0410')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0420
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0420
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0420
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0420', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0420'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0420')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0430
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0430
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0430
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0430', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0430'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0430')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0440
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0440
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0440
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0440', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0440'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0440')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0450
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0450
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0450
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0450', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0450'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0450')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0460
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0460
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0460
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0460', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0460'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0460')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0470
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0470
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0470
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0470', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0470'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0470')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0480
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0480
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0480
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0480', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0480'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0480')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0490
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0490
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0490
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0490', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0490'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0490')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0500
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0500
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0500
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0500', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0500'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0500')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0510
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0510
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0510
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0510', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0510'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0510')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0520
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0520
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0520
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0520', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0520'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0520')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.click();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

  })
}
