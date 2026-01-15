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

export default function SnapshotComponentContent() {

  describe('SnapshotComponentContent', () => {
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
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0020
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0020
     * @tc.desc   : Screenshot of the image component that fetches network images
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0020 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0020")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0020 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0090
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0090
     * @tc.desc   : Get a screenshot of the image component in WebP format
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0090', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0090 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0090")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0090 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0100
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0100
     * @tc.desc   : Get a screenshot of the image component in HEIF format
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0100', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0100 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0100")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0100 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0070
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0070
     * @tc.desc   : Get a screenshot of the image component in BMP format
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0070', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0070 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0070")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0070 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0080
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0080
     * @tc.desc   : Get a screenshot of the image component in SVG format
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0080', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0080 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0080")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0080 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0030
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0030
     * @tc.desc   : Get a screenshot of the image component in GIF format
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0030 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0030")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0030 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0160
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0160
     * @tc.desc   : Get a screenshot when the builder is empty
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0160', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0160 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0160")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0160 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0520
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0520
     * @tc.desc   : Set the scale parameter of the createFromComponent interface to -1
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0520', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0520 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0520")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0520 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0590
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0590
     * @tc.desc   : Set the scale parameter of the createFromComponent interface to undefined
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0590', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0590 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0590")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0590 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0600
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0600
     * @tc.desc   : Set the scale parameter of the createFromComponent interface to null
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0600', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0600 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0600")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0600 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0610
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0610
     * @tc.desc   : Set the waitUntilRenderFinished parameter of the createFromComponent interface to null
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0610', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0610 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0610")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0610 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0620
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0620
     * @tc.desc   : Set the waitUntilRenderFinished parameter of the createFromComponent interface to undefined
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 4
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0620', Level.LEVEL4, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0620 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0620")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0620 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0570
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0570
     * @tc.desc   : Set the scale parameter of the createFromComponent interface to 4
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0570', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0570 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0570")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0570 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0560
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0560
     * @tc.desc   : Set the scale parameter of the createFromComponent interface to 14
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0560', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0560 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0560")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0560 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0580
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0580
     * @tc.desc   : Set the scale parameter of the createFromComponent interface to 13
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0580', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0580 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0580")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0580 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0530
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0530
     * @tc.desc   : Set the scale parameter of the createFromComponent interface to 0
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0530', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0530 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0530")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0530 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0630
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0630
     * @tc.desc   : Set the waitUntilRenderFinished parameter of the createFromComponent interface to true
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0630', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0630 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0630")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0630 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0510
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0510
     * @tc.desc   : Set the checkImageStatus parameter of the createFromComponent interface to undefined
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0510', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0510 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0510")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0510 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0660
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0660
     * @tc.desc   : Set both the scale and waitUntilRenderFinished parameters of the createFromComponent interface to invalid values.
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0660', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0660 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0660")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0660 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0670
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0670
     * @tc.desc   : Set one valid and one invalid value for the scale and waitUntilRenderFinished parameters of the createFromComponent interface
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0670', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0670 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0670")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0670 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0680
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0680
     * @tc.desc   : Set one invalid value and one valid value for the scale and waitUntilRenderFinished parameters of the createFromComponent interface
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0680', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0680 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0680")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0680 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0690
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0690
     * @tc.desc   : Set both the delay and checkImageStatus parameters of the createFromComponent interface to valid values
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0690', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0690 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0690")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0690 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0710
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0710
     * @tc.desc   : Set one valid value and one invalid value for the delay and checkImageStatus parameters of the createFromComponent interface
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0710', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0710 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0710")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0710 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0720
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0720
     * @tc.desc   : Set one invalid value and one valid value for the delay and checkImageStatus parameters of the createFromComponent interface
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0720', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0720 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0720")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0720 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0700
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0700
     * @tc.desc   : Set both the delay and checkImageStatus parameters of the createFromComponent interface to invalid values
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0700', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0700 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0700")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0700 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0400
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0400
     * @tc.desc   : Set the delay parameter of the createFromComponent interface to -1
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0400', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0400 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0400")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(300)  //截图延时为300ms
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0400 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0410
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0410
     * @tc.desc   : Set the delay parameter of the createFromComponent interface to 0
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0410', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0410 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0410")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0410 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0420
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0420
     * @tc.desc   : Set the delay parameter of the createFromComponent interface to 1
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0420', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0420 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0420")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0420 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0440
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0440
     * @tc.desc   : Set the delay parameter of the createFromComponent interface to 211.11
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0440', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0440 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0440")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(211.11)    //截图延时为211.11ms
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0440 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0460
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0460
     * @tc.desc   : Set the delay parameter of the createFromComponent interface to undefined
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0460', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0460 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0460")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(300)  //截图延时为300ms
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0460 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0470
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0470
     * @tc.desc   : Set the delay parameter of the createFromComponent interface to null
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0470', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0470 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0470")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(300)  //截图延时为300ms
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0470 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0500
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0500
     * @tc.desc   : Set the delay parameter of the createFromComponent interface to null
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0500', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0500 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0500")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0500 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0170
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0170
     * @tc.desc   : Screenshot of the image component with the common property visibility set
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0170', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0170 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0170")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0170 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0180
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0180
     * @tc.desc   : Screenshot of the image component with the common property blur set
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0180', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0180 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0180")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0180 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0190
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0190
     * @tc.desc   : Screenshot of the image component with the common property shadow set
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0190', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0190 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0190")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0190 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0210
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0210
     * @tc.desc   : Screenshot of the image component with the common property BackgroundBrightness set
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0210', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0210 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0210")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0210 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0220
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0220
     * @tc.desc   : Screenshot of the image component with the common property border set
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0220', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0220 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0220")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0220 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0200
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0200
     * @tc.desc   : Screenshot of the image component with the common property rotate set
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0200', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0200 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0200")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0200 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0230
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0230
     * @tc.desc   : Screenshot of the image component with the common property borderImage set
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0230', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0230 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0230")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0230 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0240
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0240
     * @tc.desc   : Screenshot of the image component with the common property opacity set
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0240', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0240 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0240")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0240 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0250
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0250
     * @tc.desc   : Screenshot of the image component with the common property overlay set
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0250', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0250 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0250")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0250 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0260
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0260
     * @tc.desc   : Screenshot of the image component with the common property grayscale set
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0260', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0260 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0260")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0260 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0270
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0270
     * @tc.desc   : Screenshot of the image component with the common property clipShape set
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0270', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0260 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0270")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0270 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0280
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0280
     * @tc.desc   : Screenshot of the image component with the common property foregroundBlurStyle set
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0280', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0280 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0280")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0280 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0320
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0320
     * @tc.desc   : Screenshot of the image component with the common property invert set
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    // it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0320', Level.LEVEL3, async (done: Function) => {
    //   Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0320 start.`);
    //   Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0320")
    //   let driver:Driver = Driver.create();
    //   await driver.waitForIdle(500,2000)
    //   let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
    //   await Button1.click();
    //   await driver.waitForIdle(500,2000)
    //   windowSnap.snapShot()
    //   await Utils.sleep(1000)
    //   Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0320 finish.`);
    //   done()
    // })

    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0320', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0320 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0320");
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 5000); // 增加最大等待时间到 5 秒
      let Button1: Component = await driver.waitForComponent(ON.id('btn'), 3000); // 最长等3秒
      if (!Button1) {
        Logger.error('TEST', 'Button with id "btn" not found!');
        done(); // 结束测试，避免后续报错
        return;
      }
      await Button1.click(); // 确保 Button1 不是 null 再点击
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0320 finish.`);
      done();
    });

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0110
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0110
     * @tc.desc   : Get a screenshot of the list component that exceeds the parent component's range
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0110', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0110 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0110")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0110 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0130
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0130
     * @tc.desc   : Get a screenshot of the button component
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0130', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0130 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0130")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0130 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0140
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0140
     * @tc.desc   : Get a screenshot of the textinput component
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0140', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0140 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0140")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(5000,6000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0140 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0150
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0150
     * @tc.desc   : Get a screenshot of the custom component
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0150', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0150 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0150")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000, 5000); // 增加最大等待时间到 5 秒
      let Button1: Component = await driver.waitForComponent(ON.id('btn'), 3000); // 最长等3秒
      if (!Button1) {
        Logger.error('TEST', 'Button with id "btn" not found!');
        done(); // 结束测试，避免后续报错
        return;
      }
      await Button1.click(); // 确保 Button1 不是 null 再点击
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0150 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0300
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0300
     * @tc.desc   : Screenshot of the text component with the common property foregroundColor set
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0300', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0300 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0300")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0300 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0290
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0290
     * @tc.desc   : Screenshot of the image component with the common property colorBlend set
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0290', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0290 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0290")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0290 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0310
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0310
     * @tc.desc   : Screenshot of the image component with the common property hueRotate set
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0310', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0310 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0310")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0310 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0330
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0330
     * @tc.desc   : Screenshot of the button component with the common property enable set
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0330', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0330 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0330")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0330 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0340
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0340
     * @tc.desc   : ComponentContent uses the constructor constructor(uiContext: UIContext, builder: WrappedBuilder<[]>) for screenshotting
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0340', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0340 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0340")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0340 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0350
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0350
     * @tc.desc   : ComponentContent uses the constructor constructor(uiContext: UIContext, builder: WrappedBuilder<[T]>, args: T) for screenshotting
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0350', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0350 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0350")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000, 5000); // 增加最大等待时间到 5 秒
      let Button1: Component = await driver.waitForComponent(ON.id('btn'), 3000); // 最长等3秒
      if (!Button1) {
        Logger.error('TEST', 'Button with id "btn" not found!');
        done(); // 结束测试，避免后续报错
        return;
      }
      await Button1.click(); // 确保 Button1 不是 null 再点击
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0350 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0360
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0360
     * @tc.desc   : ComponentContent uses the constructor constructor(uiContext: UIContext, builder: WrappedBuilder<[T]>, args: T, options: BuildOptions) for screenshotting
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0360', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0360 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0360")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(1000, 5000); // 增加最大等待时间到 5 秒
      let Button1: Component = await driver.waitForComponent(ON.id('btn'), 3000); // 最长等3秒
      if (!Button1) {
        Logger.error('TEST', 'Button with id "btn" not found!');
        done(); // 结束测试，避免后续报错
        return;
      }
      await Button1.click(); // 确保 Button1 不是 null 再点击
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0360 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0370
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0370
     * @tc.desc   : Take a screenshot of ComponentContent after calling update.
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0370', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0370 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0370")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0370 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0380
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0380
     * @tc.desc   : Take a screenshot of ComponentContent after calling reuse and recycle.
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0380', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0380 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0380")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0380 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0390
     * @tc.name   : SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0390
     * @tc.desc   : Take a screenshot of ComponentContent after calling dispose.
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0390', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0390 start.`);
      Settings.createWindow("testability/pages/SnapshotComponentContent/SnapshotComponentContent0390")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      let Button1: Component = await driver.waitForComponent(ON.id('btn'),1000);
      await Button1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SNAPSHOT_COMPONENTCONTEN_0390 finish.`);
      done()
    })



  })
}
