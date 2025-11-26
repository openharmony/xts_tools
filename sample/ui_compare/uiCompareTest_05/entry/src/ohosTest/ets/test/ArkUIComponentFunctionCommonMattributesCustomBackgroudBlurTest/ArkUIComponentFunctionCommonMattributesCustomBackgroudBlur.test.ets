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

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0530
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0530
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0530
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0530', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0530'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0530')
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
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0540
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0540
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0540
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0540', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0540'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0540')
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
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0550
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0550
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0550
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0550', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0550'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0550')
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
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0560
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0560
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0560
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0560', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0560'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0560')
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
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0570
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0570
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0570
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0570', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0570'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0570')
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
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0580
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0580
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0580
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0580', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0580'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0580')
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
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0590
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0590
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0590
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0590', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0590'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0590')
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
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0600
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0600
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0600
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0600', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0600'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0600')
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
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0610
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0610
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0610
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0610', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0610'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0610')
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
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0620
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0620
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0620
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0620', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0620'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0620')
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
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0630
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0630
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0630
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0630', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0630'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0630')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.longClick();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0640
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0640
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0640
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0640', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0640'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0640')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.longClick();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0650
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0650
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0650
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0650', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0650'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0650')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.longClick();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0660
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0660
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0660
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0660', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0660'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0660')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.longClick();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0670
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0670
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0670
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0670', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0670'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0670')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.longClick();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0680
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0680
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0680
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0680', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0680'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0680')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.longClick();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0690
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0690
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0690
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0690', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0690'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0690')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.longClick();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0700
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0700
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0700
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0700', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0700'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0700')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.longClick();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0710
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0710
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0710
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0710', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0710'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0710')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.longClick();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0720
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0720
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0720
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0720', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0720'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0720')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.longClick();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0730
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0730
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0730
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0730', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0730'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0730')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.longClick();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0740
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0740
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0740
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0740', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0740'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0740')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.longClick();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0750
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0750
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0750
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0750', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0750'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0750')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.longClick();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0760
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0760
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0760
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0760', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0760'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0760')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.longClick();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0770
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0770
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0770
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0770', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0770'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0770')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.longClick();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0780
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0780
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0780
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0780', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0780'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0780')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.longClick();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0790
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0790
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0790
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0790', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0790'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0790')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.longClick();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0800
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0800
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0800
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0800', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0800'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0800')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.longClick();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0810
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0810
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0810
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0810', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0810'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0810')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      await component.longClick();
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0820
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0820
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0820
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0820', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0820'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0820')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0830
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0830
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0830
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0830', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0830'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0830')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0840
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0840
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0840
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0840', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0840'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0840')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0850
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0850
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0850
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0850', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0850'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0850')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0860
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0860
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0860
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0860', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0860'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0860')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0870
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0870
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0870
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0870', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0870'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0870')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0880
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0880
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0880
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0880', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0880'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0880')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0890
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0890
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0890
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0890', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0890'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0890')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0900
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0900
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0900
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0900', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0900'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0900')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0910
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0910
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0910
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0910', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0910'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0910')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0920
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0920
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0920
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0920', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0920'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0920')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0930
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0930
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0930
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0930', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0930'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0930')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0940
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0940
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0940
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0940', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0940'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0940')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0950
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0950
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0950
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0950', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0950'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0950')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0960
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0960
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0960
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0960', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0960'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0960')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0970
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0970
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0970
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0970', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0970'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0970')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0980
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0980
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0980
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0980', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0980'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0980')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0990
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0990
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0990
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0990', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_0990'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur0990')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1000
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1000
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1000
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1000', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1000'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1000')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1010
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1010
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1010
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1010', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1010'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1010')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1020
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1020
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1020
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1020', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1020'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1020')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1030
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1030
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1030
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1030', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1030'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1030')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1040
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1040
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1040
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1040', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1040'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1040')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1050
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1050
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1050
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1050', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1050'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1050')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1060
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1060
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1060
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1060', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1060'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1060')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1070
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1070
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1070
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1070', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1070'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1070')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1080
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1080
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1080
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1080', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1080'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1080')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1090
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1090
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1090
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1090', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1090'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1090')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1100
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1100
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1100
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1100', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1100'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1100')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1110
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1110
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1110
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1110', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1110'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1110')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1120
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1120
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1120
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1120', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1120'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1120')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1130
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1130
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1130
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1130', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1130'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1130')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1140
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1140
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1140
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1140', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1140'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1140')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1150
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1150
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1150
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1150', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1150'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1150')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1160
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1160
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1160
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1160', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1160'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1160')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1170
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1170
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1170
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1170', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1170'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1170')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1180
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1180
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1180
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1180', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1180'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1180')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1190
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1190
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1190
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1190', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1190'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1190')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1200
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1200
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1200
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1200', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1200'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1200')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1210
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1210
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1210
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1210', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1210'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1210')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1220
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1220
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1220
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1220', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1220'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1220')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1230
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1230
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1230
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1230', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1230'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1230')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1240
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1240
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1240
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1240', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1240'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1240')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1260
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1260
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1260
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1260', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1260'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1260')
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
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1270
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1270
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1270
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1270', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1270'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1270')
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
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1280
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1280
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1280
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1280', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1280'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1280')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

    /**
     * @tc.number     : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1290
     * @tc.name       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1290
     * @tc.desc       : ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1290
     * @tc.level      : Level 3
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1290', 0, async (done: Function) => {
      let caseName = 'ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_CUSTOMBACKGROUNDBLUR_1290'
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow('testability/pages/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur/ArkUIComponentFunctionCommonMattributesCustomBackgroudBlur1290')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('bindMenu'))
      let point = await component.getBoundsCenter();
      await driver.mouseClick(point, MouseButton.MOUSE_BUTTON_RIGHT)
      await Utils.sleep(3000)
      windowSnap.snapShot();
      await Utils.sleep(3000)
      Logger.info('TEST', `${caseName} finish.`);
      done()
    })

  })
}
