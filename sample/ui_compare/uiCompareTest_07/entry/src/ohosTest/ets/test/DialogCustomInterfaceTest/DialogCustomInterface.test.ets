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

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON, Component } from '@kit.TestKit';

export default function DialogCustomInterface() {

  describe('DialogCustomInterface', () => {
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
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0020
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0020
     * @tc.type   : function
     * @tc.desc   : Validate the alignment of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0020', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0020 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0020")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0020 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0010
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0010
     * @tc.type   : function
     * @tc.desc   : Validate the autoCancel of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0010', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0010 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0010")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0010 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0030
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0030
     * @tc.type   : function
     * @tc.desc   : Validate the offset of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0030', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0030 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0030")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0030 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0040
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0040
     * @tc.type   : function
     * @tc.desc   : Validate the customStyle of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0040', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0040 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0040")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0040 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0050
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0050
     * @tc.type   : function
     * @tc.desc   : Validate the gridCount of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0050', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0050 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0050")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0050 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0060
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0060
     * @tc.type   : function
     * @tc.desc   : Validate the maskColor of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0060', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0060 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0060")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0060 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0100
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0100
     * @tc.type   : function
     * @tc.desc   : Validate the maskRect of CustomDialogControllerOptions, Rectangle parameter type: (x,y,width,height: all abnormal value $$)
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0100', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0100 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0100")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0100 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0110
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0110
     * @tc.type   : function
     * @tc.desc   : Validate the openAnimation duration of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0110', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0110 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0110")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0110 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0120
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0120
     * @tc.type   : function
     * @tc.desc   : Validate the openAnimation tempo of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0120', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0120 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0120")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0120 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0130
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0130
     * @tc.type   : function
     * @tc.desc   : Validate the openAnimation curve of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0130', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0130 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0130")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0130 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0140
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0140
     * @tc.type   : function
     * @tc.desc   : Validate the openAnimation delay of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0140', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0140 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0140")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0140 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0150
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0150
     * @tc.type   : function
     * @tc.desc   : Validate the openAnimation iterations of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0150', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0150 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0150")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0150 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0160
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0160
     * @tc.type   : function
     * @tc.desc   : Validate the openAnimation playMode of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0160', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0160 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0160")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0160 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0190
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0190
     * @tc.type   : function
     * @tc.desc   : Validate the openAnimation finishCallbackType of CustomDialogControllerOptions, parameter type: $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0190', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0190 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0190")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0190 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0230
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0230
     * @tc.type   : function
     * @tc.desc   : Validate the openAnimation ExpectedFrameRateRange of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0230', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0230 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0230")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0230 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0240
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0240
     * @tc.type   : function
     * @tc.desc   : Validate the showInSubWindow of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0240', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0240 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0240")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0240 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0250
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0250
     * @tc.type   : function
     * @tc.desc   : Validate the closeAnimation duration of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0250', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0250 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0250")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0250 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0260
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0260
     * @tc.type   : function
     * @tc.desc   : Validate the closeAnimation tempo of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0260', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0260 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0260")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0260 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0270
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0270
     * @tc.type   : function
     * @tc.desc   : Validate the closeAnimation curve of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0270', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0270 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0270")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0270 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0280
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0280
     * @tc.type   : function
     * @tc.desc   : Validate the closeAnimation delay of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0280', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0280 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0280")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0280 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0290
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0290
     * @tc.type   : function
     * @tc.desc   : Validate the closeAnimation iterations of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0290', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0290 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0290")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0290 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0300
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0300
     * @tc.type   : function
     * @tc.desc   : Validate the closeAnimation playMode of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0300', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0300 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0300")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0300 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0330
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0330
     * @tc.type   : function
     * @tc.desc   : Validate the closeAnimation finishCallbackType of CustomDialogControllerOptions, parameter type: $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0330', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0330 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0330")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0330 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0370
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0370
     * @tc.type   : function
     * @tc.desc   : Validate the closeAnimation ExpectedFrameRateRange of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0370', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0370 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0370")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0370 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0420
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0420
     * @tc.type   : function
     * @tc.desc   : Validate the backgroundColor of CustomDialogControllerOptions, parameter type: abnormal value $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0420', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0420 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0420")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0420 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0670
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0670
     * @tc.type   : function
     * @tc.desc   : Validate the cornerRadius bottomRight of CustomDialogControllerOptions, parameter type: $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0670', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0670 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0670")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0670 finish.`);
      done()
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0700
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0700
     * @tc.type   : function
     * @tc.desc   : Validate the isModal of CustomDialogControllerOptions, parameter type: $$
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0700', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0700 start.`);
      Settings.createWindow("testability/pages/DialogCustomInterface/DialogCustomInterface0700")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(2000,3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_CUSTOM_INTERFACE_0700 finish.`);
      done()
    })

  })
}
