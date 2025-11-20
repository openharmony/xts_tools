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
import { Driver, ON, Component, UiDirection } from '@kit.TestKit';

export default function FocusChipGroupInterfaceTest() {

  describe('FocusChipGroupInterfaceTest', () => {
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
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0160
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0160
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the prefixIcon and suffixIcon parameters of the items parameter to the resource type (gif images from $rawfile).
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0160', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0160  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0160")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0160 finish.`);
      done()
    })



    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0170
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0170
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the prefixIcon and suffixIcon parameters of the items parameter to the resource type ($rawfile, not image type).
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0170', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0170  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0170")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      await driver.waitForIdle(1000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0170 finish.`);
      done()
    })



    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0180
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0180
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the prefixIcon and suffixIcon parameters of the items parameter to the string type (PNG images).
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0180', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0180  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0180")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0180 finish.`);
      done()
    })



    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0190
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0190
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the prefixIcon and suffixIcon parameters of the items parameter to the string type (GIF images).
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0190', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0190  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0190")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button2: Component = await driver.waitForComponent(ON.text('选项2'), 1000);
      await button2.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0190 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0200
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0200
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the prefixIcon and suffixIcon parameters of the items parameter to the string type (abnormal value).
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0200', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0200  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0200")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0200 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0210
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0210
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the prefixIcon and suffixIcon parameters of the items parameter to the string type (image string).
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0210', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0210  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0210")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0210 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0220
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0220
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the prefixIcon and suffixIcon parameters of the items parameter to empty.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0220', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0220  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0220")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0220 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0260
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0260
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the width of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) less than 0.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0260', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0260  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0260")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0260 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0270
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0270
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the width of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) to 0.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0270', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0270  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0270")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0270 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0280
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0280
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the width of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) to 15.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0280', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0280  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0280")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0280 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0290
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0290
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the width of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) to 20%.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0290', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0290  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0290")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0290 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0300
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0300
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the width of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) to 10px.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0300', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0300  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0300")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0300 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0310
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0310
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the width of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) to 5vp.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0310', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0310  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0310")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0310 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0320
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0320
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the width of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) to 20fp.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0320', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0320  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0320")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0320 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0330
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0330
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the width of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) to 10lpx.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0330', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0330  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0330")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0330 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0370
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0370
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the width of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) to app res.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0370', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0370  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0370")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0370 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0410
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0410
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the width of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) to undefined.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0410', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0410  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0410")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0410 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0430
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0430
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the width of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) to undefined.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0430', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0430  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0430")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0430 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0440
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0440
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component,not set the width of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter).
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0440', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0440  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0440")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0440 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0450
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0450
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the height of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) to -100.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0450', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0450  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0450")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0450 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0460
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0460
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the height of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) to 0.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0460', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0460  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0460")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0460 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0470
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0470
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the height of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) to 100.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0470', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0470  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0470")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0470 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0480
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0480
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the height of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) to 30%.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0480', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0480  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0480")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0480 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0490
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0490
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the height of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) to 100px.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0490', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0490  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0490")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0490 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0500
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0500
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the height of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) to 100vp.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0500', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0500  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0500")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0500 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0510
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0510
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the height of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) to 100vp.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0510', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0510  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0510")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0510 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0520
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0520
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the height of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) to 100vp.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0520', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0520  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0520")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0520 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0560
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0560
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the height of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) to app res.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0560', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0560  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0560")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0560 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0600
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0600
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the height of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) to undefined.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0600', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0600  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0600")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0600 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0620
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0620
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the height of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter) to empty.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0620', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0620  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0620")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0620 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0630
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0630
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, not set the height of the SizeOptions for the prefixIcon and suffixIcon parameters (under the items parameter).
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0630', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0630  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0630")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0630 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0640
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0640
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the label of the items parameter to a normal value.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0640', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0640  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0640")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button5: Component = await driver.waitForComponent(ON.text('选项5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0640 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0650
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0650
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the label of the items parameter to a normal value.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0650', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0650  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0650")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('chaochangzifuchuan1'), 1000);
      await button1.click();
      let button5: Component = await driver.waitForComponent(ON.text('chaochangzifuchuan5'), 1000);
      await button5.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0650 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0680
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0680
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the label of the items parameter to a normal value.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0680', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0680  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0680")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button2: Component = await driver.waitForComponent(ON.text('选项2'), 1000);
      await button2.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0680 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0710
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0710
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the label of the items parameter to a normal value.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0710', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0710  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0710")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button2: Component = await driver.waitForComponent(ON.text('选项2'), 1000);
      await button2.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0710 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0720
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0720
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the label of the items parameter to a normal value.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0720', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0720  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0720")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button2: Component = await driver.waitForComponent(ON.text('选项2'), 1000);
      await button2.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0720 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0730
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0730
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the label of the items parameter to a normal value.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0730', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0730  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0730")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button2: Component = await driver.waitForComponent(ON.text('选项2'), 1000);
      await button2.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0730 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0750
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0750
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the label of the items parameter to a normal value.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0750', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0750  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0750")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0750 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0760
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0760
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the label of the items parameter to a normal value.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0760', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0760  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0760")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button2: Component = await driver.waitForComponent(ON.text('选项2'), 1000);
      await button2.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0760 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0770
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0770
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the label of the items parameter to a normal value.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0770', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0770  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0770")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button2: Component = await driver.waitForComponent(ON.text('选项2'), 1000);
      await button2.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0770 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0780
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0780
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the label of the items parameter to a normal value.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0780', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0780  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0780")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0780 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0800
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0800
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the label of the items parameter to a normal value.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0800', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0800  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0800")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0800 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0810
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0810
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the label of the items parameter to a normal value.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0810', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0810  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0810")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button2: Component = await driver.waitForComponent(ON.text('选项2'), 1000);
      await button2.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0810 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0820
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0820
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the label of the items parameter to a normal value.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0820', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0820  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0820")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button2: Component = await driver.waitForComponent(ON.text('选项2'), 1000);
      await button2.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0820 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0830
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0830
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the label of the items parameter to a normal value.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0830', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0830  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0830")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button2: Component = await driver.waitForComponent(ON.text('选项2'), 1000);
      await button2.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0830 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0840
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0840
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the label of the items parameter to a normal value.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0840', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0840  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0840")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button2: Component = await driver.waitForComponent(ON.text('选项2'), 1000);
      await button2.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0840 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0860
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0860
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the label of the items parameter to a normal value.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0860', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0860  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0860")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button2: Component = await driver.waitForComponent(ON.text('选项2'), 1000);
      await button2.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0860 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0870
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0870
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the label of the items parameter to a normal value.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0870', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0870  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0870")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      let button4: Component = await driver.waitForComponent(ON.text('选项4'), 1000);
      await button4.click();
      let button: Component = await driver.waitForComponent(ON.text('横竖屏切换'), 1000);
      await button.click();
      await driver.waitForIdle(1000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button2: Component = await driver.waitForComponent(ON.text('选项2'), 1000);
      await button2.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await button.click();
      await driver.waitForIdle(1000,2000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0870 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0880
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0880
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the label of the items parameter to a normal value.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0880', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0880  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0880")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('点击'), 1000);
      await button1.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0880 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0890
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0890
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set the label of the items parameter to a normal value.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0890', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0890  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface0890")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('点击'), 1000);
      await button1.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_0890 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_1170
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_1170
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, set itemStyle parameters backgroundColor, selectedBackgroundColor, fontColor, selectedFontColor to undefined.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_1170', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_1170  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface1170")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      let button1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await button1.click();
      let button2: Component = await driver.waitForComponent(ON.text('选项2'), 1000);
      await button2.click();
      let button3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await button3.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_1170 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_1070
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_1070
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, test itemStyle backgroundColor parameter with Color.Orange.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_1070', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_1070  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface1070")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      // 点击color按钮切换颜色状态
      let colorButton: Component = await driver.waitForComponent(ON.text('color'), 1000);
      await colorButton.click();
      await driver.waitForIdle(500,1000);
      
      // 测试第二组ChipGroup（设置了backgroundColor为Color.Orange）
      let option1_group2: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await option1_group2.click();
      let option2_group2: Component = await driver.waitForComponent(ON.text('选项2'), 1000);
      await option2_group2.click();
      
      // 测试第三组ChipGroup（设置了selectedBackgroundColor为Color.Orange）
      let option3_group3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await option3_group3.click();
      
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_1070 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_1080
    * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_1080
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : For the ChipGroup component, test itemStyle parameters with Color.Red.
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_1080', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_1080  start.`);
      Settings.createWindow("testability/pages/focus_ChipGroupInterface/ChipGroupInterface1080")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(2000,2000);
      // 点击color1按钮切换颜色状态
      let colorButton: Component = await driver.waitForComponent(ON.text('color1'), 1000);
      await colorButton.click();
      await driver.waitForIdle(500,1000);
      
      // 测试各组ChipGroup的选项点击
      let option1: Component = await driver.waitForComponent(ON.text('选项1'), 1000);
      await option1.click();
      let option2: Component = await driver.waitForComponent(ON.text('选项2'), 1000);
      await option2.click();
      let option3: Component = await driver.waitForComponent(ON.text('选项3'), 1000);
      await option3.click();
      
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_CHIPGROUP_INTERFACE_1080 finish.`);
      done()
    })

