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

export default function ProgressBorder() {

  describe('ProgressBorder', () => {
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
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0010
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0010
     * @tc.type   : Function
     * @tc.desc   : Linear linear, Ring ring without scale, Eclipse circular, ScaleRing ring with scale, Capsule capsule style Progress component without setting Border property
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0010', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0010 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0010")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0010 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0035
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0035
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set the right border to be less than the component width by privately setting CapsuleStyleOptions.borderWidth to 3.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0035', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0035 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0035")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0035 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0012
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0012
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set the left border to be less than the component width without setting the private CapsuleStyleOptions.borderWidth.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0012', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0012 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0012")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0012 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0017
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0017
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set the right border to be less than the component width without setting the private CapsuleStyleOptions.borderWidth.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0017', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0017 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0017")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0017 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0027
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0027
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set the bottom border to be less than the component width without setting the private CapsuleStyleOptions.borderWidth.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0027', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0027 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0027")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0027 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0031
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0031
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set all four borders to be less than the component border without setting the private CapsuleStyleOptions.borderWidth.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0031', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0031 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0031")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0031 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0032
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0032
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set the left border to be less than the component width and set the private CapsuleStyleOptions.borderWidth to 3.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0032', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0032 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0032")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0032 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0041
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0041
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set the bottom border to be less than the component width and set the private CapsuleStyleOptions.borderWidth to 3.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0041', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0041 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0041")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0041 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0042
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0042
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set the bottom border width to -10, and set the private CapsuleStyleOptions.borderWidth to 3.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0042', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0042 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0042")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0042 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0043
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0043
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set the bottom border width to be greater than the component width, and set the private CapsuleStyleOptions.borderWidth to 3.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0043', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0043 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0043")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0043 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0044
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0044
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set all four borders to be less than the component border, and set the private CapsuleStyleOptions.borderWidth to 3.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0044', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0044 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0044")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0044 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0066
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0066
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set all four borders to be less than the component's border height and width, without setting the private CapsuleStyleOptions.borderWidth.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0066', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0066 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0066")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0066 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0067
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0067
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set the start border to be less than the component width, and set the private CapsuleStyleOptions.borderWidth to 3.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0067', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0067 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0067")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0067 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0073
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0073
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set the top border using LocalizedEdgeWidths.top to be less than the component width, and set the private CapsuleStyleOptions.borderWidth to 3.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0073', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0073 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0073")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0073 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0076
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0076
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set the bottom border using LocalizedEdgeWidths.bottom to be less than the component width, and set the private CapsuleStyleOptions.borderWidth to 3.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0076', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0076 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0076")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0076 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0079
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0079
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set all four borders to be less than the component's border height and width, and set the private CapsuleStyleOptions.borderWidth to 3.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0079', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0079 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0079")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0079 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0085
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0085
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, do not set the borderStyle property.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0085', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0085 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0085")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0085 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0090
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0090
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set the four borders to the styles of Dotted, Dashed, and Solid respectively.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0090', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0090 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0090")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(3000,5000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0090 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0091
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0091
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set the left and right borders to the Dotted style, and set the top and bottom borders to the Dashed style.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0091', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0091 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0091")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0091 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0092
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0092
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, do not set the CapsuleStyleOptions.borderColor and do not set the general borderColor property.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0092', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0092 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0092")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0092 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0097
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0097
     * @tc.type   : Function
     * @tc.desc   : The Progress component in the following styles does not set CapsuleStyleOptions.borderColor but sets 4 borders with different colors: Linear (linear), Ring without scale (ring shape without scale), Eclipse (circular), Scale Ring (ring shape with scale), Capsule (capsule style).
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0097', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0097 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0097")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(3000,5000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0097 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0098
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0098
     * @tc.type   : Function
     * @tc.desc   : The Progress component in the following styles sets CapsuleStyleOptions.borderColor to enum and gradient colors without setting general borderColor: Linear (linear), Ring without scale (ring shape without scale), Eclipse (circular), Scale Ring (ring shape with scale), Capsule (capsule style).
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0098', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0098 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0098")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0098 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0117
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0117
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set the topLeft radius to be less than half of the component's width and height, such as 3.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0117', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0117 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0117")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0117 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0120
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0120
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set the topLeft radius to be less than half of the component's width and height, such as 3.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0120', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0120 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0120")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0120 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0123
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0123
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set the bottomLeft radius to be less than half of the component's width and height, such as 3.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0123', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0123 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0123")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0123 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0126
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0126
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set the bottomRight radius to be less than half of the component's width and height, such as 3.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0126', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0126 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0126")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0126 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0130
     * @tc.name   : SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0130
     * @tc.type   : Function
     * @tc.desc   : For the Progress component in Linear (linear), Ring (ring without scale), Eclipse (circular), ScaleRing (ring with scale), and Capsule (capsule style) styles, set the topStart radius to be less than half of the component's width and height, such as 3.
     * @tc.size   : MediumTest
     * @tc.level  : 2
     */
    it('SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0130', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0130 start.`);
      Settings.createWindow("testability/pages/ProgressBorder/ProgressBorder0130")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500,2000)
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_MEDIA_PROGRESS_BORDER_0130 finish.`);
      done()
    })





  })
}
