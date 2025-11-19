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

export default function FocusContentModifierTest() {

  describe('FocusContentModifierTest', () => {
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
    * @tc.number : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0010
    * @tc.name   : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0010
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : DataPanel sets the column component in the custom builder.
    */
    it('SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0010', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0010  start.`);
      Settings.createWindow("testability/pages/focus_Contentmodifier/ImDpContentmodifier0010")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0010 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0020
    * @tc.name   : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0020
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : DataPanel sets the Row component in the custom builder.
    */
    it('SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0020', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0020  start.`);
      Settings.createWindow("testability/pages/focus_Contentmodifier/ImDpContentmodifier0020")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0020 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0030
    * @tc.name   : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0030
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : DataPanel sets the stack component in the custom builder.
    */
    it('SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0030', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0030  start.`);
      Settings.createWindow("testability/pages/focus_Contentmodifier/ImDpContentmodifier0030")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0030 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0050
    * @tc.name   : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0050
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : DataPanel does not set content in the custom builder.
    */
    it('SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0050', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0050  start.`);
      Settings.createWindow("testability/pages/focus_Contentmodifier/ImDpContentmodifier0050")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0050 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0060
    * @tc.name   : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0060
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : Dynamically switch the content styles in the custom builder.
    */
    it('SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0060', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0060  start.`);
      Settings.createWindow("testability/pages/focus_Contentmodifier/ImDpContentmodifier0060")
      let driver:Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('dataPanel0060'), 1000);
      await button.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0060 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0070
    * @tc.name   : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0070
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : Set multiple custom builders in DataPanel.
    */
    it('SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0070', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0070  start.`);
      Settings.createWindow("testability/pages/focus_Contentmodifier/ImDpContentmodifier0070")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0070 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0080
    * @tc.name   : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0080
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : A custom builder is set for two DataPanels.
    */
    it('SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0080', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0080  start.`);
      Settings.createWindow("testability/pages/focus_Contentmodifier/ImDpContentmodifier0080")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0080 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0090
    * @tc.name   : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0090
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : Set the configuration of the Button component in the custom builder with an onclick event to operate the config.
    */
    it('SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0090', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0090  start.`);
      Settings.createWindow("testability/pages/focus_Contentmodifier/ImDpContentmodifier0090")
      let driver:Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('configTest0090'), 1000);
      await button.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0090 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0100
    * @tc.name   : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0100
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : Set the universal attribute height for DataPanel and observe the display effect of the internally customized builder.
    */
    it('SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0100', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0100  start.`);
      Settings.createWindow("testability/pages/focus_Contentmodifier/ImDpContentmodifier0100")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0100 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0110
    * @tc.name   : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0110
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : Set the universal attribute padding for DataPanel and observe the display effect of the internally customized builder.
    */
    it('SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0110', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0110  start.`);
      Settings.createWindow("testability/pages/focus_Contentmodifier/ImDpContentmodifier0110")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0110 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0120
    * @tc.name   : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0120
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : Set the universal attribute padding for DataPanel and observe the display effect of the internally customized builder.
    */
    it('SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0120', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0120  start.`);
      Settings.createWindow("testability/pages/focus_Contentmodifier/ImDpContentmodifier0120")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0120 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0130
    * @tc.name   : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0130
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : Set the universal attribute size for DataPanel and observe the display effect of the internally customized builder.
    */
    it('SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0130', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0130  start.`);
      Settings.createWindow("testability/pages/focus_Contentmodifier/ImDpContentmodifier0130")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0130 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0140
    * @tc.name   : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0140
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : Set the universal attribute height in the internally customized builder and observe the display effect.
    */
    it('SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0140', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0140  start.`);
      Settings.createWindow("testability/pages/focus_Contentmodifier/ImDpContentmodifier0140")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0140 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0150
    * @tc.name   : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0150
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : Set the universal attribute width in the internally customized builder and observe the display effect.
    */
    it('SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0150', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0150  start.`);
      Settings.createWindow("testability/pages/focus_Contentmodifier/ImDpContentmodifier0150")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0150 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0160
    * @tc.name   : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0160
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : Set the universal attribute padding in the internally customized builder and observe the display effect.
    */
    it('SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0160', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0160  start.`);
      Settings.createWindow("testability/pages/focus_Contentmodifier/ImDpContentmodifier0160")
      let driver:Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('DataPanelIndex0160'), 1000);
      await button.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0160 finish.`);
      done()
    })



    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0170
    * @tc.name   : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0170
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : Set the universal attribute margin in the internally customized builder and observe the display effect.
    */
    it('SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0170', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0170  start.`);
      Settings.createWindow("testability/pages/focus_Contentmodifier/ImDpContentmodifier0170")
      let driver:Driver = Driver.create();
      let button: Component = await driver.waitForComponent(ON.id('DataPanelIndex0170'), 1000);
      await button.click();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0170 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0180
    * @tc.name   : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0180
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : Set the size of the custom builder to be larger than that of the parent component DataPanel.
    */
    it('SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0180', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0180  start.`);
      Settings.createWindow("testability/pages/focus_Contentmodifier/ImDpContentmodifier0180")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0180 finish.`);
      done()
    })


    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0190
    * @tc.name   : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0190
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : Set the closeEffect attribute for DataPanel and observe the compatibility effect of its internally customized builder.
    */
    it('SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0190', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0190  start.`);
      Settings.createWindow("testability/pages/focus_Contentmodifier/ImDpContentmodifier0190")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0190 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0200
    * @tc.name   : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0200
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : Set the valueColors attribute for DataPanel and observe the compatibility effect of its internally customized builder.
    */
    it('SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0200', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0200  start.`);
      Settings.createWindow("testability/pages/focus_Contentmodifier/ImDpContentmodifier0200")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0200 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0210
    * @tc.name   : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0210
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : Set the trackBackgroundColor attribute for DataPanel and observe the compatibility effect of its internally customized builder.
    */
    it('SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0210', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0210  start.`);
      Settings.createWindow("testability/pages/focus_Contentmodifier/ImDpContentmodifier0210")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0210 finish.`);
      done()
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0250
    * @tc.name   : SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0250
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 2
    * @tc.desc   : Set the ColorStop attribute for DataPanel and observe the compatibility effect of its internally customized builder.
    */
    it('SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0250', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0250  start.`);
      Settings.createWindow("testability/pages/focus_Contentmodifier/ImDpContentmodifier0250")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000,2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_INFOMATION_DATAPANEL_CONTENTMODIFIER_0250 finish.`);
      done()
    })
  })
}
