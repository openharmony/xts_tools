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

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level } from '@ohos/hypium';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';
import Utils from '../model/Utils';
import { Driver, ON, Component } from '@kit.TestKit';
import { BusinessError } from '@kit.BasicServicesKit';

export default function NavigationBindToScrollableTest() {

  describe('NavigationBindToScrollableTest', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return
      }

      Settings.windowClass.destroyWindow((err: BusinessError) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      })
      let driver: Driver = Driver.create();
      await Settings.changeWindowOrientation('end')
      await driver.waitForIdle(500, 2000);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0010
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套Scroll场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套Scroll场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0010 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable01")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"NavDestination嵌套Scroll"按钮,再点击"push pageOne"按钮，点击"push pageOne"按钮
      let navScrollBtn = await driver.findComponent(ON.id('navScrollBtn_01'));
      console.info('NavDestinationTest navScrollBtn_01 get sucess');
      await navScrollBtn.click();
      await driver.waitForIdle(500, 2000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_01'));
      console.info('NavDestinationTest pushPageOneBtn_01 get sucess');
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0010_01');
      await Utils.sleep(500);

      // 2.手指向上滑动Scroll组件
      let scrollComponent = await driver.findComponent(ON.id('scrollComponent_01'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0010_02');
      await Utils.sleep(500);

      // 3.手指向下滑动Scroll组件
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0010_03');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0010 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0020
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套Grid场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套Grid场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0020 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable02")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"NavDestination嵌套Grid"按钮,再点击"push pageOne"按钮，点击"push pageOne"按钮
      let navGridBtn = await driver.findComponent(ON.id('navGridBtn_02'));
      await navGridBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_02'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0020_01');
      await Utils.sleep(500);
      
      // 2.手指向上滑动Grid组件
      let gridComponent = await driver.findComponent(ON.id('gridComponent_02'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0020_02');
      await Utils.sleep(500);
      
      // 3.手指向下滑动Grid组件
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0020_03');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0020 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0030
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套WaterFlow场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套WaterFlow场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0030 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable03")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"NavDestination嵌套WaterFlow"按钮，点击"push pageOne"按钮
      let navWaterFlowBtn = await driver.findComponent(ON.id('navWaterFlowBtn_03'));
      await navWaterFlowBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_03'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0030_01');
      await Utils.sleep(500);
      
      // 2.手指向上滑动WaterFlow组件
      let waterFlowComponent = await driver.findComponent(ON.id('waterFlowComponent_03'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0030_02');
      await Utils.sleep(500);
      
      // 3.手指向下滑动WaterFlow组件
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0030_03');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0030 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0040
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套List场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套List场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0040', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0040 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable04")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"NavDestination嵌套List"按钮，点击"push pageOne"按钮
      let navListBtn = await driver.findComponent(ON.id('navListBtn_04'));
      await navListBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_04'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0040_01');
      await Utils.sleep(500);
      
      // 2.手指向上滑动List组件
      let listComponent = await driver.findComponent(ON.id('listComponent_04'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0040_02');
      await Utils.sleep(500);
      
      // 3.手指向下滑动List组件
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0040_03');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0040 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0050
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套Scroll、Scroll再嵌套Scroll场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套Scroll、Scroll再嵌套Scroll场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0050 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable05")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"NavDestination嵌套Scroll、Scroll再嵌套Scroll"按钮，点击"push pageOne"按钮
      let navNestedScrollBtn = await driver.findComponent(ON.id('navNestedScrollBtn_05'));
      await navNestedScrollBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_05'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0050_01');
      await Utils.sleep(500);
      
      // 2.手指向上滑动子Scroll组件
      let childScrollComponent = await driver.findComponent(ON.id('childScrollComponent_05'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0050_02');
      await Utils.sleep(500);
      
      // 3.手指向下滑动子Scroll组件
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0050_03');
      await Utils.sleep(500);
      
      // 4.手指向上滑动父Scroll组件
      let parentScrollComponent = await driver.findComponent(ON.id('parentScrollComponent_05'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0050_04');
      await Utils.sleep(500);
      
      // 5.手指向下滑动父Scroll组件
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0050_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0050 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0060
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套Scroll、Scroll再嵌套List场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套Scroll、Scroll再嵌套List场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0060', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0060 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable06")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navNestedListBtn = await driver.findComponent(ON.id('navNestedListBtn_06'));
      await navNestedListBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let childListComponent = await driver.findComponent(ON.id('childListComponent_06'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0060_01');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0060_02');
      await Utils.sleep(500);
      
      let parentScrollComponent = await driver.findComponent(ON.id('parentScrollComponent_06'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0060_03');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0060_04');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0060 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0070
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套Scroll、Scroll再嵌套Grid场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套Scroll、Scroll再嵌套Grid场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0070', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0070 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable07")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navNestedGridBtn = await driver.findComponent(ON.id('navNestedGridBtn_07'));
      await navNestedGridBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_07'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0070_01');
      await Utils.sleep(500);
      
      let childGridComponent = await driver.findComponent(ON.id('childGridComponent_07'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0070_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0070_03');
      await Utils.sleep(500);
      
      let parentScrollComponent = await driver.findComponent(ON.id('parentScrollComponent_07'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0070_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0070_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0070 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0080
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套Scroll、Scroll再嵌套WaterFlow场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套Scroll、Scroll再嵌套WaterFlow场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0080', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0080 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable08")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navNestedWaterFlowBtn = await driver.findComponent(ON.id('navNestedWaterFlowBtn_08'));
      await navNestedWaterFlowBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_08'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0080_01');
      await Utils.sleep(500);
      
      let childWaterFlowComponent = await driver.findComponent(ON.id('childWaterFlowComponent_08'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0080_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0080_03');
      await Utils.sleep(500);
      
      let parentScrollComponent = await driver.findComponent(ON.id('parentScrollComponent_08'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0080_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0080_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0080 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0090
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套List、List再嵌套Scroll场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套List、List再嵌套Scroll场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0090', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0090 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable09")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navListNestedScrollBtn = await driver.findComponent(ON.id('navListNestedScrollBtn_09'));
      await navListNestedScrollBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_09'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0090_01');
      await Utils.sleep(500);
      
      let childScrollComponent = await driver.findComponent(ON.id('childScrollComponent_09'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0090_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0090_03');
      await Utils.sleep(500);
      
      let parentListComponent = await driver.findComponent(ON.id('parentListComponent_09'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0090_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0090_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0090 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0100
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套List、List再嵌套List场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套List、List再嵌套List场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0100', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0100 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable10")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navListNestedListBtn = await driver.findComponent(ON.id('navListNestedListBtn_10'));
      await navListNestedListBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_10'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0100_01');
      await Utils.sleep(500);
      
      let childListComponent = await driver.findComponent(ON.id('childListComponent_10'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0100_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0100_03');
      await Utils.sleep(500);
      
      let parentListComponent = await driver.findComponent(ON.id('parentListComponent_10'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0100_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0100_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0100 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0110
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套List、List再嵌套Grid场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套List、List再嵌套Grid场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0110', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0110 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable11")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navListNestedGridBtn = await driver.findComponent(ON.id('navListNestedGridBtn_11'));
      await navListNestedGridBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_11'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0110_01');
      await Utils.sleep(500);
      
      let childGridComponent = await driver.findComponent(ON.id('childGridComponent_11'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0110_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0110_03');
      await Utils.sleep(500);
      
      let parentListComponent = await driver.findComponent(ON.id('parentListComponent_11'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0110_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0110_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0110 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0120
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套List、List再嵌套WaterFlow场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套List、List再嵌套WaterFlow场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0120', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0120 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable12")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navListNestedWaterFlowBtn = await driver.findComponent(ON.id('navListNestedWaterFlowBtn_12'));
      await navListNestedWaterFlowBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_12'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0120_01');
      await Utils.sleep(500);
      
      let childWaterFlowComponent = await driver.findComponent(ON.id('childWaterFlowComponent_12'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0120_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0120_03');
      await Utils.sleep(500);
      
      let parentListComponent = await driver.findComponent(ON.id('parentListComponent_12'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0120_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0120_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0120 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0130
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套Grid、Grid再嵌套Scroll场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套Grid、Grid再嵌套Scroll场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0130', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0130 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable13")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navGridNestedScrollBtn = await driver.findComponent(ON.id('navGridNestedScrollBtn_13'));
      await navGridNestedScrollBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_13'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0130_01');
      await Utils.sleep(500);
      
      let childScrollComponent = await driver.findComponent(ON.id('childScrollComponent_13'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0130_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0130_03');
      await Utils.sleep(500);
      
      let parentGridComponent = await driver.findComponent(ON.id('parentGridComponent_13'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0130_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0130_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0130 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0140
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套Grid、Grid再嵌套List场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套Grid、Grid再嵌套List场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0140', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0140 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable14")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navGridNestedListBtn = await driver.findComponent(ON.id('navGridNestedListBtn_14'));
      await navGridNestedListBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_14'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0140_01');
      await Utils.sleep(500);
      
      let childListComponent = await driver.findComponent(ON.id('childListComponent_14'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0140_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0140_03');
      await Utils.sleep(500);
      
      let parentGridComponent = await driver.findComponent(ON.id('parentGridComponent_14'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0140_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0140_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0140 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0150
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套Grid、Grid再嵌套Grid场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套Grid、Grid再嵌套Grid场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0150', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0150 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable15")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navGridNestedGridBtn = await driver.findComponent(ON.id('navGridNestedGridBtn_15'));
      await navGridNestedGridBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_15'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0150_01');
      await Utils.sleep(500);
      
      let childGridComponent = await driver.findComponent(ON.id('childGridComponent_15'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0150_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0150_03');
      await Utils.sleep(500);
      
      let parentGridComponent = await driver.findComponent(ON.id('parentGridComponent_15'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0150_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0150_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0150 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0160
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套Grid、Grid再嵌套WaterFlow场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套Grid、Grid再嵌套WaterFlow场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0160', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0160 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable16")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navGridNestedWaterFlowBtn = await driver.findComponent(ON.id('navGridNestedWaterFlowBtn_16'));
      await navGridNestedWaterFlowBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_16'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0160_01');
      await Utils.sleep(500);
      
      let childWaterFlowComponent = await driver.findComponent(ON.id('childWaterFlowComponent_16'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0160_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0160_03');
      await Utils.sleep(500);
      
      let parentGridComponent = await driver.findComponent(ON.id('parentGridComponent_16'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0160_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0160_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0160 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0170
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套WaterFlow、WaterFlow再嵌套Scroll场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套WaterFlow、WaterFlow再嵌套Scroll场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0170', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0170 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable17")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navWaterFlowNestedScrollBtn = await driver.findComponent(ON.id('navWaterFlowNestedScrollBtn_17'));
      await navWaterFlowNestedScrollBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_17'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0170_01');
      await Utils.sleep(500);
      
      let childScrollComponent = await driver.findComponent(ON.id('childScrollComponent_17'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0170_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0170_03');
      await Utils.sleep(500);
      
      let parentWaterFlowComponent = await driver.findComponent(ON.id('parentWaterFlowComponent_17'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0170_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0170_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0170 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0180
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套WaterFlow、WaterFlow再嵌套List场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套WaterFlow、WaterFlow再嵌套List场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0180', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0180 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable18")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navWaterFlowNestedListBtn = await driver.findComponent(ON.id('navWaterFlowNestedListBtn_18'));
      await navWaterFlowNestedListBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_18'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0180_01');
      await Utils.sleep(500);
      
      let childListComponent = await driver.findComponent(ON.id('childListComponent_18'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0180_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0180_03');
      await Utils.sleep(500);
      
      let parentWaterFlowComponent = await driver.findComponent(ON.id('parentWaterFlowComponent_18'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0180_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0180_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0180 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0190
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套WaterFlow、WaterFlow再嵌套Grid场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套WaterFlow、WaterFlow再嵌套Grid场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0190', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0190 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable19")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navWaterFlowNestedGridBtn = await driver.findComponent(ON.id('navWaterFlowNestedGridBtn_19'));
      await navWaterFlowNestedGridBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_19'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0190_01');
      await Utils.sleep(500);
      
      let childGridComponent = await driver.findComponent(ON.id('childGridComponent_19'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0190_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0190_03');
      await Utils.sleep(500);
      
      let parentWaterFlowComponent = await driver.findComponent(ON.id('parentWaterFlowComponent_19'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0190_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0190_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0190 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0200
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套WaterFlow、WaterFlow再嵌套WaterFlow场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(Navigation嵌套WaterFlow、WaterFlow再嵌套WaterFlow场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0200', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0200 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable20")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navWaterFlowNestedWaterFlowBtn = await driver.findComponent(ON.id('navWaterFlowNestedWaterFlowBtn_20'));
      await navWaterFlowNestedWaterFlowBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_20'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0200_01');
      await Utils.sleep(500);
      
      let childWaterFlowComponent = await driver.findComponent(ON.id('childWaterFlowComponent_20'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0200_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0200_03');
      await Utils.sleep(500);
      
      let parentWaterFlowComponent = await driver.findComponent(ON.id('parentWaterFlowComponent_20'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0200_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0200_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0200 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0210
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(一个Navigation下嵌套多个Scroll场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(一个Navigation下嵌套多个Scroll场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0210', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0210 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable21")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);

      let navMultiScrollBtn = await driver.findComponent(ON.id('navMultiScrollBtn_21'));
      await navMultiScrollBtn.click();
      console.info('NavDestinationTest navMultiScrollBtn_21 click success');
      await driver.waitForIdle(300, 1000);

      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_21'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      console.info('NavDestinationTest navMultiScrollBtn_21 click success');
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0210_01');
      await Utils.sleep(500);

      let firstScrollComponent = await driver.findComponent(ON.id('firstScrollComponent_21'));
      await driver.swipe(500, 800, 500, 200, 2000);
      console.info('NavDestinationTest navMultiScrollBtn_21 click success');
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0210_02');
      await Utils.sleep(500);

      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0210_03');
      await Utils.sleep(500);

      let secondScrollComponent = await driver.findComponent(ON.id('secondScrollComponent_21'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0210_04');
      await Utils.sleep(500);

      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0210_05');
      await Utils.sleep(500);

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0210 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0220
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(一个Navigation下嵌套多个Grid场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(一个Navigation下嵌套多个Grid场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0220', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0220 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable22")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navMultiGridBtn = await driver.findComponent(ON.id('navMultiGridBtn_22'));
      await navMultiGridBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_22'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0220_01');
      await Utils.sleep(500);
      
      let firstGridComponent = await driver.findComponent(ON.id('firstGridComponent_22'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0220_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0220_03');
      await Utils.sleep(500);
      
      let secondGridComponent = await driver.findComponent(ON.id('secondGridComponent_22'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0220_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0220_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0220 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0230
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(一个Navigation下嵌套多个WaterFlow场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(一个Navigation下嵌套多个WaterFlow场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0230', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0230 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable23")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navMultiWaterFlowBtn = await driver.findComponent(ON.id('navMultiWaterFlowBtn_23'));
      await navMultiWaterFlowBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_23'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0230_01');
      await Utils.sleep(500);
      
      let firstWaterFlowComponent = await driver.findComponent(ON.id('firstWaterFlowComponent_23'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0230_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0230_03');
      await Utils.sleep(500);
      
      let secondWaterFlowComponent = await driver.findComponent(ON.id('secondWaterFlowComponent_23'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0230_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0230_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0230 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0240
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(一个Navigation下嵌套多个List场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(一个Navigation下嵌套多个List场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0240', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0240 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable24")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navMultiListBtn = await driver.findComponent(ON.id('navMultiListBtn_24'));
      await navMultiListBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_24'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0240_01');
      await Utils.sleep(500);
      
      let firstListComponent = await driver.findComponent(ON.id('firstListComponent_24'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0240_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0240_03');
      await Utils.sleep(500);
      
      let secondListComponent = await driver.findComponent(ON.id('secondListComponent_24'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0240_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0240_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0240 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0250
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(一个Navigation下嵌套Scroll，Scroll嵌套多个Grid)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(一个Navigation下嵌套Scroll，Scroll嵌套多个Grid)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0250', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0250 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable25")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navScrollMultiGridBtn = await driver.findComponent(ON.id('navScrollMultiGridBtn_25'));
      await navScrollMultiGridBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_25'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0250_01');
      await Utils.sleep(500);
      
      let firstGridComponent = await driver.findComponent(ON.id('firstGridComponent_25'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0250_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0250_03');
      await Utils.sleep(500);
      
      let secondGridComponent = await driver.findComponent(ON.id('secondGridComponent_25'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0250_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0250_05');
      await Utils.sleep(500);
      
      let parentScrollComponent = await driver.findComponent(ON.id('parentScrollComponent_25'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0250_06');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0250_07');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0250 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0260
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(一个Navigation下嵌套Scroll，Scroll嵌套1个List，1个WaterFlow)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(一个Navigation下嵌套Scroll，Scroll嵌套1个List，1个WaterFlow)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0260', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0260 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable26")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navScrollListWaterFlowBtn = await driver.findComponent(ON.id('navScrollListWaterFlowBtn_26'));
      await navScrollListWaterFlowBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_26'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0260_01');
      await Utils.sleep(500);
      
      let listComponent = await driver.findComponent(ON.id('listComponent_26'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0260_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0260_03');
      await Utils.sleep(500);
      
      let waterFlowComponent = await driver.findComponent(ON.id('waterFlowComponent_26'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0260_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0260_05');
      await Utils.sleep(500);
      
      let parentScrollComponent = await driver.findComponent(ON.id('parentScrollComponent_26'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0260_06');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0260_07');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0260 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0270
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(一个Navigation下嵌套List，List嵌套1个Grid，1个WaterFlow)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(一个Navigation下嵌套List，List嵌套1个Grid，1个WaterFlow)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0270', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0270 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable27")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navListGridWaterFlowBtn = await driver.findComponent(ON.id('navListGridWaterFlowBtn_27'));
      await navListGridWaterFlowBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_27'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0270_01');
      await Utils.sleep(500);
      
      let waterFlowComponent = await driver.findComponent(ON.id('waterFlowComponent_27'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0270_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0270_03');
      await Utils.sleep(500);
      
      let gridComponent = await driver.findComponent(ON.id('gridComponent_27'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0270_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0270_05');
      await Utils.sleep(500);
      
      let parentListComponent = await driver.findComponent(ON.id('parentListComponent_27'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0270_06');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0270_07');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0270 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0280
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(一个Navigation下嵌套WaterFlow，WaterFlow嵌套1个Grid，1个Scroll)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(一个Navigation下嵌套WaterFlow，WaterFlow嵌套1个Grid，1个Scroll)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0280', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0280 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable28")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navWaterFlowGridScrollBtn = await driver.findComponent(ON.id('navWaterFlowGridScrollBtn_28'));
      await navWaterFlowGridScrollBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_28'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0280_01');
      await Utils.sleep(500);
      
      let gridComponent = await driver.findComponent(ON.id('gridComponent_28'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0280_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0280_03');
      await Utils.sleep(500);
      
      let scrollComponent = await driver.findComponent(ON.id('scrollComponent_28'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0280_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0280_05');
      await Utils.sleep(500);
      
      let parentWaterFlowComponent = await driver.findComponent(ON.id('parentWaterFlowComponent_28'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0280_06');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0280_07');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0280 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0290
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(异常值场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(异常值场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0290', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0290 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable29")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navExceptionBtn = await driver.findComponent(ON.id('navExceptionBtn_29'));
      await navExceptionBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_29'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0290_01');
      await Utils.sleep(500);
      
      let parentScrollComponent = await driver.findComponent(ON.id('parentScrollComponent_29'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0290_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0290_03');
      await Utils.sleep(500);
      
      let childScrollComponent = await driver.findComponent(ON.id('childScrollComponent_29'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0290_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0290_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0290 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0300
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(多次调用场景场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(多次调用场景场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0300', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0300 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable30")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navMultiCallBtn = await driver.findComponent(ON.id('navMultiCallBtn_30'));
      await navMultiCallBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_30'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0300_01');
      await Utils.sleep(500);
      
      let parentScrollComponent = await driver.findComponent(ON.id('parentScrollComponent_30'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0300_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0300_03');
      await Utils.sleep(500);
      
      let childScrollComponent = await driver.findComponent(ON.id('childScrollComponent_30'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0300_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0300_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0300 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0310
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(单双栏场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(单双栏场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0310', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0310 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable31")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let modeSplitBtn = await driver.findComponent(ON.id('modeSplitBtn_31'));
      await modeSplitBtn.click();
      await driver.waitForIdle(500, 1000);
      
      let navNestedScrollBtn = await driver.findComponent(ON.id('navNestedScrollBtn_31'));
      await navNestedScrollBtn.click();
      await driver.waitForIdle(500, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_31'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0310_01');
      await Utils.sleep(500);
      
      let parentScrollComponent = await driver.findComponent(ON.id('parentScrollComponent_31'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0310_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0310_03');
      await Utils.sleep(500);
      
      let childScrollComponent = await driver.findComponent(ON.id('childScrollComponent_31'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0310_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0310_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0310 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0320
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(dialog页面场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(dialog页面场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0320', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0320 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable32")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navDialogBtn = await driver.findComponent(ON.id('navDialogBtn_32'));
      await navDialogBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_32'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0320_01');
      await Utils.sleep(500);
      
      let parentScrollComponent = await driver.findComponent(ON.id('parentScrollComponent_32'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0320_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0320_03');
      await Utils.sleep(500);
      
      let childScrollComponent = await driver.findComponent(ON.id('childScrollComponent_32'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0320_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0320_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0320 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0330
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(子窗口场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(子窗口场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0330', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0330 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable33")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let openSubWindowBtn = await driver.findComponent(ON.id('openSubWindowBtn_33'));
      await openSubWindowBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0330_01');
      await Utils.sleep(500);
      
      let navNestedScrollBtn = await driver.findComponent(ON.id('navNestedScrollBtn_33'));
      await navNestedScrollBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_33'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0330_02');
      await Utils.sleep(500);
      
      let parentScrollComponent = await driver.findComponent(ON.id('parentScrollComponent_33'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0330_03');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0330_04');
      await Utils.sleep(500);
      
      let childScrollComponent = await driver.findComponent(ON.id('childScrollComponent_33'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0330_05');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0330_06');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0330 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0340
     * @tc.name   : Navigation标题栏工具栏支持跟手滑动隐藏显示(鼠标场景)
     * @tc.desc   : Navigation标题栏工具栏支持跟手滑动隐藏显示(鼠标场景)
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0340', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0340 start.`);
      Settings.createWindow("testability/pages/navigation_interface/navigationBindToScrollable34")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      let navMouseBtn = await driver.findComponent(ON.id('navMouseBtn_34'));
      await navMouseBtn.click();
      await driver.waitForIdle(300, 1000);
      
      let pushPageOneBtn = await driver.findComponent(ON.id('pushPageOneBtn_34'));
      await pushPageOneBtn.click();
      await driver.waitForIdle(300, 1000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0340_01');
      await Utils.sleep(500);
      
      let parentScrollComponent = await driver.findComponent(ON.id('parentScrollComponent_34'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0340_02');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0340_03');
      await Utils.sleep(500);
      
      let childScrollComponent = await driver.findComponent(ON.id('childScrollComponent_34'));
      await driver.swipe(500, 800, 500, 200, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0340_04');
      await Utils.sleep(500);
      
      await driver.swipe(500, 200, 500, 800, 2000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0340_05');
      await Utils.sleep(500);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_BINDTOSCROLLABLE_0340 finish.`);
      done()
    })
  })
}

