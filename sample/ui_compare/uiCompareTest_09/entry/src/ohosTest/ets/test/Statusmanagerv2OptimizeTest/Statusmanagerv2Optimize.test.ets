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
import { hidebug } from '@kit.PerformanceAnalysisKit';
import { BusinessError } from '@kit.BasicServicesKit';

export default function Statusmanagerv2Optimize() {

  describe('Statusmanagerv2Optimize', () => {
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
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0080
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0080
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0080', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0080 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize80")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('btn'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })

    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0030
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0030
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0030', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0030 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize30")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('btn'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })

    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0040
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0040
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0040', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0040 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize40")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('btn'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })

    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0020
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0020
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0020', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0020 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize20")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('btn'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })

    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0120
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0120
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0120', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0120 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize120")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('btn'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })

    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0070
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0070
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0070', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0070 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize70")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('btn'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })

    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0060
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0060
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0060', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0060 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize60")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('btn'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })

    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0160
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0160
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0160', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0160 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize160")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('btn'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })

    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0100
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0100
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0100', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0100 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize100")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('btn'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })

    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0150
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0150
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0150', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0150 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize150")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('btn'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })

    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0110
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0110
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0110', Level.LEVEL1, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0110 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize110")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('btn'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })

    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0140
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0140
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0140', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0140 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize140")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('btn'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })

    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0180
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0180
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0180', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0180 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize180")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('btn'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })

    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0200
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0200
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0200', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0200 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize200")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('btn'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(10000);
      done();
    })


    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0190
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0190
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0190', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0190 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize190")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('btn'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })


    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0210
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0210
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0210', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0210 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize210")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('btn'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })


    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0220
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0220
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0220', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0220 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize220")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('ca'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      let component_1 = await driver.waitForComponent(ON.id('cb'), 1000);  // 显式等待组件出现[6](@ref)
      await component_1.click();
      await driver.waitForIdle(500,2000)
      let component_2 = await driver.waitForComponent(ON.id('cba'), 1000);  // 显式等待组件出现[6](@ref)
      await component_2.click();
      await driver.waitForIdle(500,2000)
      let component_3 = await driver.waitForComponent(ON.id('abb'), 1000);  // 显式等待组件出现[6](@ref)
      await component_3.click();
      await driver.waitForIdle(500,2000)
      let component_4 = await driver.waitForComponent(ON.id('cba_n'), 1000);  // 显式等待组件出现[6](@ref)
      await component_4.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })

    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0230
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0230
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0230', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0230 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize230")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('change length'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })

    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0260
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0260
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0260', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0260 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize260")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('btn'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })

    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0270
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0270
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0270', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0270 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize270")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('btn1'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      // 通过ID定位（推荐）
      let component_1 = await driver.waitForComponent(ON.id('btn2'), 1000);  // 显式等待组件出现[6](@ref)
      await component_1.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })


    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0280
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0280
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0280', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0280 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize280")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('btn1'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })


    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0290
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0290
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0290', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0290 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize290")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('btn1'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })


    /*
     * @tc.number : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0340
     * @tc.name   : SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0340
     * @tc.desc   : Counter is placed on the mirror page in Chinese mode, and the direction is set to LTR
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 1
     */
    it('SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0340', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_STATUSMANAGERV2_OPTIMIZE_0340 start.`);
      Settings.createWindow("testability/pages/Statusmanagerv2Optimize/Statusmanagerv2Optimize340")
      let driver:Driver = Driver.create();
      // 通过ID定位（推荐）
      let component = await driver.waitForComponent(ON.id('btn'), 1000);  // 显式等待组件出现[6](@ref)
      await component.click();
      await driver.waitForIdle(500,2000)
      windowSnap.screenShot();
      await Utils.sleep(1000);
      done();
    })

  })
}
