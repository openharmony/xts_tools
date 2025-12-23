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

export default function SearchInterface() {

  describe('SearchInterface', () => {
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
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0330
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0330
     * @tc.type   : Function
     * @tc.desc   : For the Search component, set the placeholder value in the interface to update it in real time.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0330', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0330 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface0330")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.triggerKey(2017)
      await driver.waitForIdle(500,2000)
      await driver.triggerKey(2018)
      await driver.waitForIdle(500,2000)
      await driver.triggerKey(2019)
      await driver.waitForIdle(500,2000)
      await driver.triggerKey(2020)
      await driver.waitForIdle(500,2000)
      await driver.triggerKey(2021)
      await driver.waitForIdle(500,2000)
      await driver.triggerKey(2022)
      await driver.waitForIdle(500,2000)
      await driver.triggerKey(2023)
      await driver.waitForIdle(500,2000)
      await driver.triggerKey(2024)
      await driver.waitForIdle(500,2000)
      await driver.triggerKey(2025)
      await driver.waitForIdle(500,2000)
      await driver.triggerKey(2026)
      await driver.waitForIdle(500,2000)
      await driver.triggerKey(2027)
      await driver.waitForIdle(500,2000)
      await driver.triggerKey(2028)
      await driver.waitForIdle(500,2000)
      await driver.triggerKey(2029)
      await driver.waitForIdle(500,2000)
      await driver.triggerKey(2030)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0330 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0050
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0050
     * @tc.type   : Function
     * @tc.desc   : Search component, do not set the size of the placeholderFont.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0050', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0050 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface0050")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0050 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0110
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0110
     * @tc.type   : Function
     * @tc.desc   : Search component, do not set the weight of the textFont.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0110', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0110 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface0110")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0110 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1000
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1000
     * @tc.type   : Function
     * @tc.desc   : JSON file for the Search component, setting the size of the textFont to type float.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1000', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1000 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface1000")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1000 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0720
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0720
     * @tc.type   : Function
     * @tc.desc   : Search component, set the weight of the placeholderFont to -100.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0720', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0720 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface0720")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0720 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0680
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0680
     * @tc.type   : Function
     * @tc.desc   : Set the size of placeholderFont in the Search component to a JSON file of type string.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0680', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0680 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface0680")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0680 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0140
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0140
     * @tc.type   : Function
     * @tc.desc   : Search component, do not set the style of the left search icon.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0140', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0140 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface0140")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0140 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1130
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1130
     * @tc.type   : Function
     * @tc.desc   : earch component, set the weight of the placeholderFont to -100.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1130', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1130 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface1130")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1130 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0970
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0970
     * @tc.type   : Function
     * @tc.desc   : JSON file for the Search component, setting the size of the textFont to a type other than string or float.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0970', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0970 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface0970")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0970 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1320
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1320
     * @tc.type   : Function
     * @tc.desc   : Search component, set the color of the left search icon to $rawfile(color.json).
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1320', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1320 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface1320")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1320 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0740
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0740
     * @tc.type   : Function
     * @tc.desc   : Search component, set the weight of the placeholderFont to 400.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0740', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0740 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface0740")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0740 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0130
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0130
     * @tc.type   : Function
     * @tc.desc   : Search component, do not set the style of the right clear button.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0130', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0130 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface0130")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0130 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0660
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0660
     * @tc.type   : Function
     * @tc.desc   : JSON file for the Search component, setting the size of the placeholderFont to a type other than string or float.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0660', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0660 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface0660")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0660 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1290
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1290
     * @tc.type   : Function
     * @tc.desc   : Search component, set the icon size to be larger than the component size.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1290', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1290 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface1290")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1290 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0670
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0670
     * @tc.type   : Function
     * @tc.desc   : JSON file for the Search component, setting the size of the placeholderFont to type float.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0670', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0670 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface0670")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0670 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1240
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1240
     * @tc.type   : Function
     * @tc.desc   : JSON file for the Search component, set the size field of the IconOptions in the right clear button style cancelButton1 to "$rawfile()".
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1240', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1240 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface1240")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1240 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0100
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0100
     * @tc.type   : Function
     * @tc.desc   : Search component, do not set the textFont style.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0100', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0100 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface0100")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0100 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0700
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0700
     * @tc.type   : Function
     * @tc.desc   : Search component, set the style of the placeholderFont to FontStyle.Normal.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0700', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0700 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface0700")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0700 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0650
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0650
     * @tc.type   : Function
     * @tc.desc   : Search component, set the size of the placeholderFont to 10.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0650', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0650 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface0650")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0650 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0710
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0710
     * @tc.type   : Function
     * @tc.desc   : Search component, set the weight of the placeholderFont to 900.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0710', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0710 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface0710")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0710 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1020
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1020
     * @tc.type   : Function
     * @tc.desc   : Search component, set the style of the textFont to FontStyle.Normal.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1020', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1020 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface1020")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1020 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0060
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0060
     * @tc.type   : Function
     * @tc.desc   : Search component, do not set the Color of the placeholder.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0060', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0060 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface0060")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0060 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1190
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1190
     * @tc.type   : Function
     * @tc.desc   : Search component, set the color of the IconOptions in the right clear-button style cancelButton1 to $rawfile(color.json).
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1190', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1190 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface1190")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1190 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0120
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0120
     * @tc.type   : Function
     * @tc.desc   : Search component, do not set the weight.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0120', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0120 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface0120")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0120 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1370
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1370
     * @tc.type   : Function
     * @tc.desc   : Search component, set the size of the left search icon searchIcon to $rawfile().
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1370', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1370 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface1370")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1370 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1440
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1440
     * @tc.type   : Function
     * @tc.desc   : Search component, set the left search icon source as an image.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1440', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1440 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface1440")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1440 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0170
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0170
     * @tc.type   : Function
     * @tc.desc   : Search component, do not set the font color of the input text.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0170', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0170 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface0170")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0170 finish.`);
      done()
    })


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1510
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1510
     * @tc.type   : Function
     * @tc.desc   : Search component, set the font color of the input text to $rawfile(color.json).
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1510', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1510 start.`);
      Settings.createWindow("testability/pages/SearchInterface/SearchInterface1510")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      // windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_1510 finish.`);
      done()
    })





  })
}
