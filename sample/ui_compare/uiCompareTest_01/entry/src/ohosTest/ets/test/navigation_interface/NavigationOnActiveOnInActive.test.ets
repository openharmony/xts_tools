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

export default function NavigationOnActiveOnInActiveTest() {

  describe('NavigationOnActiveOnInActiveTest', () => {
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
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0010
     * @tc.name   : NavDestination新增OnActive和OnInActive生命周期（栈操作push接口，只push STANDARD页面）
     * @tc.desc   : NavDestination新增OnActive和OnInActive生命周期（栈操作push接口，只push STANDARD页面）
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0010 start.`);
      Settings.createWindow("testability/pages/navigation_interface/activeOn/0010/navigationOnActiveOnInActive0010")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"Navigation基础栈操作场景"按钮
      let navigationBasicStackOperationBtn = await driver.waitForComponent(ON.id('navigationBasicStackOperationBtn0010'), 1000);
      Logger.info('TEST', `Found component: navigationBasicStackOperationBtn0010`);
      if (!navigationBasicStackOperationBtn) {
        Logger.error('TEST', `Component not found: navigationBasicStackOperationBtn0010`);
        throw new Error('Component not found: navigationBasicStackOperationBtn0010');
      }
      await navigationBasicStackOperationBtn.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(1000);
      Logger.info('TEST', `After clicking navigationBasicStackOperationBtn, waiting for page to render`);
      
      // 2.点击"push pageOne"按钮
      let pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0010'), 1000);
      Logger.info('TEST', `Found component: pushPageOneBtn0010, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
      if (!pushPageOneBtn) {
        Logger.error('TEST', `Component not found: pushPageOneBtn0010 after navigation jump. Page may not be fully rendered.`);
        await Utils.sleep(1000);
        pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0010'), 1000);
        Logger.info('TEST', `Retry found component: pushPageOneBtn0010, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
        if (!pushPageOneBtn) {
          throw new Error('Component not found: pushPageOneBtn0010');
        }
      }
      await pushPageOneBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0010_01');
      await Utils.sleep(1000);
      
      // 3.点击"pushDestinationByName pageTwo"按钮
      let pushDestinationByNamePageTwoBtn = await driver.waitForComponent(ON.id('pushDestinationByNamePageTwoBtn0010'), 1000);
      Logger.info('TEST', `Found component: pushDestinationByNamePageTwoBtn0010`);
      if (!pushDestinationByNamePageTwoBtn) {
        Logger.error('TEST', `Component not found: pushDestinationByNamePageTwoBtn0010`);
        throw new Error('Component not found: pushDestinationByNamePageTwoBtn0010');
      }
      await pushDestinationByNamePageTwoBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0010_02');
      await Utils.sleep(1000);
      
      // 4.点击"pushPathByName pageOne"按钮
      let pushPathByNamePageOneBtn = await driver.waitForComponent(ON.id('pushPathByNamePageOneBtn0010'), 1000);
      Logger.info('TEST', `Found component: pushPathByNamePageOneBtn0010`);
      if (!pushPathByNamePageOneBtn) {
        Logger.error('TEST', `Component not found: pushPathByNamePageOneBtn0010`);
        throw new Error('Component not found: pushPathByNamePageOneBtn0010');
      }
      await pushPathByNamePageOneBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0010_03');
      await Utils.sleep(1000);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0010 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0020
     * @tc.name   : NavDestination新增OnActive和OnInActive生命周期（栈操作push接口，只push DIALOG页面）
     * @tc.desc   : NavDestination新增OnActive和OnInActive生命周期（栈操作push接口，只push DIALOG页面）
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0020 start.`);
      Settings.createWindow("testability/pages/navigation_interface/activeOn/0020/navigationOnActiveOnInActive0020")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"Navigation基础栈操作场景"按钮
      let navigationBasicStackOperationBtn = await driver.waitForComponent(ON.id('navigationBasicStackOperationBtn0020'), 1000);
      Logger.info('TEST', `Found component: navigationBasicStackOperationBtn0020`);
      if (!navigationBasicStackOperationBtn) {
        Logger.error('TEST', `Component not found: navigationBasicStackOperationBtn0020`);
        throw new Error('Component not found: navigationBasicStackOperationBtn0020');
      }
      await navigationBasicStackOperationBtn.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(1000);
      Logger.info('TEST', `After clicking navigationBasicStackOperationBtn, waiting for page to render`);
      
      // 2.点击"push pageThree"按钮
      let pushPageThreeBtn = await driver.waitForComponent(ON.id('pushPageThreeBtn0020'), 1000);
      Logger.info('TEST', `Found component: pushPageThreeBtn0020, result: ${pushPageThreeBtn ? 'found' : 'not found'}`);
      if (!pushPageThreeBtn) {
        Logger.error('TEST', `Component not found: pushPageThreeBtn0020 after navigation jump. Page may not be fully rendered.`);
        await Utils.sleep(1000);
        pushPageThreeBtn = await driver.waitForComponent(ON.id('pushPageThreeBtn0020'), 1000);
        Logger.info('TEST', `Retry found component: pushPageThreeBtn0020, result: ${pushPageThreeBtn ? 'found' : 'not found'}`);
        if (!pushPageThreeBtn) {
          throw new Error('Component not found: pushPageThreeBtn0020');
        }
      }
      await pushPageThreeBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0020_01');
      await Utils.sleep(1000);
      
      // 3.点击"pushDestinationByName pageFour"按钮
      let pushDestinationByNamePageFourBtn = await driver.waitForComponent(ON.id('pushDestinationByNamePageFourBtn0020'), 1000);
      Logger.info('TEST', `Found component: pushDestinationByNamePageFourBtn0020`);
      if (!pushDestinationByNamePageFourBtn) {
        Logger.error('TEST', `Component not found: pushDestinationByNamePageFourBtn0020`);
        throw new Error('Component not found: pushDestinationByNamePageFourBtn0020');
      }
      await pushDestinationByNamePageFourBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0020_02');
      await Utils.sleep(1000);
      
      // 4.点击"pushPathByName pageThree"按钮
      let pushPathByNamePageThreeBtn = await driver.waitForComponent(ON.id('pushPathByNamePageThreeBtn0020'), 1000);
      Logger.info('TEST', `Found component: pushPathByNamePageThreeBtn0020`);
      if (!pushPathByNamePageThreeBtn) {
        Logger.error('TEST', `Component not found: pushPathByNamePageThreeBtn0020`);
        throw new Error('Component not found: pushPathByNamePageThreeBtn0020');
      }
      await pushPathByNamePageThreeBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0020_03');
      await Utils.sleep(1000);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0020 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0030
     * @tc.name   : NavDestination新增OnActive和OnInActive生命周期（栈操作push接口，push STANDARD、DIALOG页面）
     * @tc.desc   : NavDestination新增OnActive和OnInActive生命周期（栈操作push接口，push STANDARD、DIALOG页面）
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0030 start.`);
      Settings.createWindow("testability/pages/navigation_interface/activeOn/0030/navigationOnActiveOnInActive0030")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"Navigation基础栈操作场景"按钮
      let navigationBasicStackOperationBtn = await driver.waitForComponent(ON.id('navigationBasicStackOperationBtn0030'), 1000);
      Logger.info('TEST', `Found component: navigationBasicStackOperationBtn0030`);
      if (!navigationBasicStackOperationBtn) {
        Logger.error('TEST', `Component not found: navigationBasicStackOperationBtn0030`);
        throw new Error('Component not found: navigationBasicStackOperationBtn0030');
      }
      await navigationBasicStackOperationBtn.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(1000);
      Logger.info('TEST', `After clicking navigationBasicStackOperationBtn, waiting for page to render`);
      
      // 2.点击"push pageOne"按钮
      let pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0030'), 1000);
      Logger.info('TEST', `Found component: pushPageOneBtn0030, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
      if (!pushPageOneBtn) {
        Logger.error('TEST', `Component not found: pushPageOneBtn0030 after navigation jump. Page may not be fully rendered.`);
        await Utils.sleep(1000);
        pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0030'), 1000);
        Logger.info('TEST', `Retry found component: pushPageOneBtn0030, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
        if (!pushPageOneBtn) {
          throw new Error('Component not found: pushPageOneBtn0030');
        }
      }
      await pushPageOneBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0030_01');
      await Utils.sleep(1000);
      
      // 3.点击"pushPathByName pageThree"按钮
      let pushPathByNamePageThreeBtn = await driver.waitForComponent(ON.id('pushPathByNamePageThreeBtn0030'), 1000);
      Logger.info('TEST', `Found component: pushPathByNamePageThreeBtn0030`);
      if (!pushPathByNamePageThreeBtn) {
        Logger.error('TEST', `Component not found: pushPathByNamePageThreeBtn0030`);
        throw new Error('Component not found: pushPathByNamePageThreeBtn0030');
      }
      await pushPathByNamePageThreeBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0030_02');
      await Utils.sleep(1000);
      
      // 4.点击"pushDestinationByName pageTwo"按钮
      let pushDestinationByNamePageTwoBtn = await driver.waitForComponent(ON.id('pushDestinationByNamePageTwoBtn0030'), 1000);
      Logger.info('TEST', `Found component: pushDestinationByNamePageTwoBtn0030`);
      if (!pushDestinationByNamePageTwoBtn) {
        Logger.error('TEST', `Component not found: pushDestinationByNamePageTwoBtn0030`);
        throw new Error('Component not found: pushDestinationByNamePageTwoBtn0030');
      }
      await pushDestinationByNamePageTwoBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0030_03');
      await Utils.sleep(1000);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0030 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0040
     * @tc.name   : NavDestination新增OnActive和OnInActive生命周期（栈操作push接口，push STANDARD、DIALOG页面，使用MOVE_TO_TOP_SINGLETON）
     * @tc.desc   : NavDestination新增OnActive和OnInActive生命周期（栈操作push接口，push STANDARD、DIALOG页面，使用MOVE_TO_TOP_SINGLETON）
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0040', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0040 start.`);
      Settings.createWindow("testability/pages/navigation_interface/activeOn/0040/navigationOnActiveOnInActive0040")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"Navigation基础栈操作场景"按钮
      let navigationBasicStackOperationBtn = await driver.waitForComponent(ON.id('navigationBasicStackOperationBtn0040'), 1000);
      Logger.info('TEST', `Found component: navigationBasicStackOperationBtn0040`);
      if (!navigationBasicStackOperationBtn) {
        Logger.error('TEST', `Component not found: navigationBasicStackOperationBtn0040`);
        throw new Error('Component not found: navigationBasicStackOperationBtn0040');
      }
      await navigationBasicStackOperationBtn.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(1000);
      Logger.info('TEST', `After clicking navigationBasicStackOperationBtn, waiting for page to render`);
      
      // 2.点击"push pageOne"按钮
      let pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0040'), 1000);
      Logger.info('TEST', `Found component: pushPageOneBtn0040, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
      if (!pushPageOneBtn) {
        Logger.error('TEST', `Component not found: pushPageOneBtn0040 after navigation jump. Page may not be fully rendered.`);
        await Utils.sleep(1000);
        pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0040'), 1000);
        Logger.info('TEST', `Retry found component: pushPageOneBtn0040, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
        if (!pushPageOneBtn) {
          throw new Error('Component not found: pushPageOneBtn0040');
        }
      }
      await pushPageOneBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0040_01');
      await Utils.sleep(1000);
      
      // 3.点击"pushPathByName pageThree"按钮
      let pushPathByNamePageThreeBtn = await driver.waitForComponent(ON.id('pushPathByNamePageThreeBtn0040'), 1000);
      Logger.info('TEST', `Found component: pushPathByNamePageThreeBtn0040`);
      if (!pushPathByNamePageThreeBtn) {
        Logger.error('TEST', `Component not found: pushPathByNamePageThreeBtn0040`);
        throw new Error('Component not found: pushPathByNamePageThreeBtn0040');
      }
      await pushPathByNamePageThreeBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0040_02');
      await Utils.sleep(1000);
      
      // 4.点击"pushDestinationByName pageTwo"按钮
      let pushDestinationByNamePageTwoBtn = await driver.waitForComponent(ON.id('pushDestinationByNamePageTwoBtn0040'), 1000);
      Logger.info('TEST', `Found component: pushDestinationByNamePageTwoBtn0040`);
      if (!pushDestinationByNamePageTwoBtn) {
        Logger.error('TEST', `Component not found: pushDestinationByNamePageTwoBtn0040`);
        throw new Error('Component not found: pushDestinationByNamePageTwoBtn0040');
      }
      await pushDestinationByNamePageTwoBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0040_03');
      await Utils.sleep(1000);
      
      // 5.点击"push pageOne MOVE_TO_TOP_SINGLETON"按钮
      let pushPageOneMoveToTopSingletonBtn = await driver.waitForComponent(ON.id('pushPageOneMoveToTopSingletonBtn0040'), 1000);
      Logger.info('TEST', `Found component: pushPageOneMoveToTopSingletonBtn0040`);
      if (!pushPageOneMoveToTopSingletonBtn) {
        Logger.error('TEST', `Component not found: pushPageOneMoveToTopSingletonBtn0040`);
        throw new Error('Component not found: pushPageOneMoveToTopSingletonBtn0040');
      }
      await pushPageOneMoveToTopSingletonBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0040_04');
      await Utils.sleep(1000);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0040 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0050
     * @tc.name   : NavDestination新增OnActive和OnInActive生命周期（栈操作push接口，push STANDARD、DIALOG页面，使用POP_TO_SINGLETON）
     * @tc.desc   : NavDestination新增OnActive和OnInActive生命周期（栈操作push接口，push STANDARD、DIALOG页面，使用POP_TO_SINGLETON）
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0050 start.`);
      Settings.createWindow("testability/pages/navigation_interface/activeOn/0050/navigationOnActiveOnInActive0050")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"Navigation基础栈操作场景"按钮
      let navigationBasicStackOperationBtn = await driver.waitForComponent(ON.id('navigationBasicStackOperationBtn0050'), 1000);
      Logger.info('TEST', `Found component: navigationBasicStackOperationBtn0050`);
      if (!navigationBasicStackOperationBtn) {
        Logger.error('TEST', `Component not found: navigationBasicStackOperationBtn0050`);
        throw new Error('Component not found: navigationBasicStackOperationBtn0050');
      }
      await navigationBasicStackOperationBtn.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(1000);
      Logger.info('TEST', `After clicking navigationBasicStackOperationBtn, waiting for page to render`);
      
      // 2.点击"push pageOne"按钮
      let pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0050'), 1000);
      Logger.info('TEST', `Found component: pushPageOneBtn0050, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
      if (!pushPageOneBtn) {
        Logger.error('TEST', `Component not found: pushPageOneBtn0050 after navigation jump. Page may not be fully rendered.`);
        await Utils.sleep(1000);
        pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0050'), 1000);
        Logger.info('TEST', `Retry found component: pushPageOneBtn0050, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
        if (!pushPageOneBtn) {
          throw new Error('Component not found: pushPageOneBtn0050');
        }
      }
      await pushPageOneBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0050_01');
      await Utils.sleep(1000);
      
      // 3.点击"pushPathByName pageThree"按钮
      let pushPathByNamePageThreeBtn = await driver.waitForComponent(ON.id('pushPathByNamePageThreeBtn0050'), 1000);
      Logger.info('TEST', `Found component: pushPathByNamePageThreeBtn0050`);
      if (!pushPathByNamePageThreeBtn) {
        Logger.error('TEST', `Component not found: pushPathByNamePageThreeBtn0050`);
        throw new Error('Component not found: pushPathByNamePageThreeBtn0050');
      }
      await pushPathByNamePageThreeBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0050_02');
      await Utils.sleep(1000);
      
      // 4.点击"pushDestinationByName pageTwo"按钮
      let pushDestinationByNamePageTwoBtn = await driver.waitForComponent(ON.id('pushDestinationByNamePageTwoBtn0050'), 1000);
      Logger.info('TEST', `Found component: pushDestinationByNamePageTwoBtn0050`);
      if (!pushDestinationByNamePageTwoBtn) {
        Logger.error('TEST', `Component not found: pushDestinationByNamePageTwoBtn0050`);
        throw new Error('Component not found: pushDestinationByNamePageTwoBtn0050');
      }
      await pushDestinationByNamePageTwoBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0050_03');
      await Utils.sleep(1000);
      
      // 5.点击"push pageOne POP_TO_SINGLETON"按钮
      let pushPageOnePopToSingletonBtn = await driver.waitForComponent(ON.id('pushPageOnePopToSingletonBtn0050'), 1000);
      Logger.info('TEST', `Found component: pushPageOnePopToSingletonBtn0050`);
      if (!pushPageOnePopToSingletonBtn) {
        Logger.error('TEST', `Component not found: pushPageOnePopToSingletonBtn0050`);
        throw new Error('Component not found: pushPageOnePopToSingletonBtn0050');
      }
      await pushPageOnePopToSingletonBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0050_04');
      await Utils.sleep(1000);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0050 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0060
     * @tc.name   : NavDestination新增OnActive和OnInActive生命周期（栈操作replace接口，replace STANDARD页面）
     * @tc.desc   : NavDestination新增OnActive和OnInActive生命周期（栈操作replace接口，replace STANDARD页面）
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0060', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0060 start.`);
      Settings.createWindow("testability/pages/navigation_interface/activeOn/0060/navigationOnActiveOnInActive0060")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"Navigation基础栈操作场景"按钮
      let navigationBasicStackOperationBtn = await driver.waitForComponent(ON.id('navigationBasicStackOperationBtn0060'), 1000);
      Logger.info('TEST', `Found component: navigationBasicStackOperationBtn0060`);
      if (!navigationBasicStackOperationBtn) {
        Logger.error('TEST', `Component not found: navigationBasicStackOperationBtn0060`);
        throw new Error('Component not found: navigationBasicStackOperationBtn0060');
      }
      await navigationBasicStackOperationBtn.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(1000);
      Logger.info('TEST', `After clicking navigationBasicStackOperationBtn, waiting for page to render`);
      
      // 2.点击"push pageOne"按钮
      let pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0060'), 1000);
      Logger.info('TEST', `Found component: pushPageOneBtn0060, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
      if (!pushPageOneBtn) {
        Logger.error('TEST', `Component not found: pushPageOneBtn0060 after navigation jump. Page may not be fully rendered.`);
        await Utils.sleep(1000);
        pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0060'), 1000);
        Logger.info('TEST', `Retry found component: pushPageOneBtn0060, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
        if (!pushPageOneBtn) {
          throw new Error('Component not found: pushPageOneBtn0060');
        }
      }
      await pushPageOneBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0060_01');
      await Utils.sleep(1000);
      
      // 3.点击"pushDestinationByName pageTwo"按钮
      let pushDestinationByNamePageTwoBtn = await driver.waitForComponent(ON.id('pushDestinationByNamePageTwoBtn0060'), 1000);
      Logger.info('TEST', `Found component: pushDestinationByNamePageTwoBtn0060`);
      if (!pushDestinationByNamePageTwoBtn) {
        Logger.error('TEST', `Component not found: pushDestinationByNamePageTwoBtn0060`);
        throw new Error('Component not found: pushDestinationByNamePageTwoBtn0060');
      }
      await pushDestinationByNamePageTwoBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0060_02');
      await Utils.sleep(1000);
      
      // 4.点击"replacePath pageOne"按钮
      let replacePathPageOneBtn = await driver.waitForComponent(ON.id('replacePathPageOneBtn0060'), 1000);
      Logger.info('TEST', `Found component: replacePathPageOneBtn0060`);
      if (!replacePathPageOneBtn) {
        Logger.error('TEST', `Component not found: replacePathPageOneBtn0060`);
        throw new Error('Component not found: replacePathPageOneBtn0060');
      }
      await replacePathPageOneBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0060_03');
      await Utils.sleep(1000);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0060 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0070
     * @tc.name   : NavDestination新增OnActive和OnInActive生命周期（栈操作replace接口，replace DIALOG页面）
     * @tc.desc   : NavDestination新增OnActive和OnInActive生命周期（栈操作replace接口，replace DIALOG页面）
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0070', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0070 start.`);
      Settings.createWindow("testability/pages/navigation_interface/activeOn/0070/navigationOnActiveOnInActive0070")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"Navigation基础栈操作场景"按钮
      let navigationBasicStackOperationBtn = await driver.waitForComponent(ON.id('navigationBasicStackOperationBtn0070'), 1000);
      Logger.info('TEST', `Found component: navigationBasicStackOperationBtn0070`);
      if (!navigationBasicStackOperationBtn) {
        Logger.error('TEST', `Component not found: navigationBasicStackOperationBtn0070`);
        throw new Error('Component not found: navigationBasicStackOperationBtn0070');
      }
      await navigationBasicStackOperationBtn.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(1000);
      Logger.info('TEST', `After clicking navigationBasicStackOperationBtn, waiting for page to render`);
      
      // 2.点击"push pageThree"按钮
      let pushPageThreeBtn = await driver.waitForComponent(ON.id('pushPageThreeBtn0070'), 1000);
      Logger.info('TEST', `Found component: pushPageThreeBtn0070, result: ${pushPageThreeBtn ? 'found' : 'not found'}`);
      if (!pushPageThreeBtn) {
        Logger.error('TEST', `Component not found: pushPageThreeBtn0070 after navigation jump. Page may not be fully rendered.`);
        await Utils.sleep(1000);
        pushPageThreeBtn = await driver.waitForComponent(ON.id('pushPageThreeBtn0070'), 1000);
        Logger.info('TEST', `Retry found component: pushPageThreeBtn0070, result: ${pushPageThreeBtn ? 'found' : 'not found'}`);
        if (!pushPageThreeBtn) {
          throw new Error('Component not found: pushPageThreeBtn0070');
        }
      }
      await pushPageThreeBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0070_01');
      await Utils.sleep(1000);
      
      // 3.点击"pushDestinationByName pageTwo"按钮
      let pushDestinationByNamePageTwoBtn = await driver.waitForComponent(ON.id('pushDestinationByNamePageTwoBtn0070'), 1000);
      Logger.info('TEST', `Found component: pushDestinationByNamePageTwoBtn0070`);
      if (!pushDestinationByNamePageTwoBtn) {
        Logger.error('TEST', `Component not found: pushDestinationByNamePageTwoBtn0070`);
        throw new Error('Component not found: pushDestinationByNamePageTwoBtn0070');
      }
      await pushDestinationByNamePageTwoBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0070_02');
      await Utils.sleep(1000);
      
      // 4.点击"replacePath pageFour"按钮
      let replacePathPageFourBtn = await driver.waitForComponent(ON.id('replacePathPageFourBtn0070'), 1000);
      Logger.info('TEST', `Found component: replacePathPageFourBtn0070`);
      if (!replacePathPageFourBtn) {
        Logger.error('TEST', `Component not found: replacePathPageFourBtn0070`);
        throw new Error('Component not found: replacePathPageFourBtn0070');
      }
      await replacePathPageFourBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0070_03');
      await Utils.sleep(1000);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0070 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0080
     * @tc.name   : NavDestination新增OnActive和OnInActive生命周期（栈操作replace接口，replace STANDARD页面，使用MOVE_TO_TOP_SINGLETON）
     * @tc.desc   : NavDestination新增OnActive和OnInActive生命周期（栈操作replace接口，replace STANDARD页面，使用MOVE_TO_TOP_SINGLETON）
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0080', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0080 start.`);
      Settings.createWindow("testability/pages/navigation_interface/activeOn/0080/navigationOnActiveOnInActive0080")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"Navigation基础栈操作场景"按钮
      let navigationBasicStackOperationBtn = await driver.waitForComponent(ON.id('navigationBasicStackOperationBtn0080'), 1000);
      Logger.info('TEST', `Found component: navigationBasicStackOperationBtn0080`);
      if (!navigationBasicStackOperationBtn) {
        Logger.error('TEST', `Component not found: navigationBasicStackOperationBtn0080`);
        throw new Error('Component not found: navigationBasicStackOperationBtn0080');
      }
      await navigationBasicStackOperationBtn.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(1000);
      Logger.info('TEST', `After clicking navigationBasicStackOperationBtn, waiting for page to render`);
      
      // 2.点击"push pageOne"按钮
      let pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0080'), 1000);
      Logger.info('TEST', `Found component: pushPageOneBtn0080, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
      if (!pushPageOneBtn) {
        Logger.error('TEST', `Component not found: pushPageOneBtn0080 after navigation jump. Page may not be fully rendered.`);
        await Utils.sleep(1000);
        pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0080'), 1000);
        Logger.info('TEST', `Retry found component: pushPageOneBtn0080, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
        if (!pushPageOneBtn) {
          throw new Error('Component not found: pushPageOneBtn0080');
        }
      }
      await pushPageOneBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0080_01');
      await Utils.sleep(1000);
      
      // 3.点击"pushDestinationByName pageTwo"按钮
      let pushDestinationByNamePageTwoBtn = await driver.waitForComponent(ON.id('pushDestinationByNamePageTwoBtn0080'), 1000);
      Logger.info('TEST', `Found component: pushDestinationByNamePageTwoBtn0080`);
      if (!pushDestinationByNamePageTwoBtn) {
        Logger.error('TEST', `Component not found: pushDestinationByNamePageTwoBtn0080`);
        throw new Error('Component not found: pushDestinationByNamePageTwoBtn0080');
      }
      await pushDestinationByNamePageTwoBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0080_02');
      await Utils.sleep(1000);
      
      // 4.点击"replacePath pageOne MOVE_TO_TOP_SINGLETON"按钮
      let replacePathPageOneMoveToTopSingletonBtn = await driver.waitForComponent(ON.id('replacePathPageOneMoveToTopSingletonBtn0080'), 1000);
      Logger.info('TEST', `Found component: replacePathPageOneMoveToTopSingletonBtn0080`);
      if (!replacePathPageOneMoveToTopSingletonBtn) {
        Logger.error('TEST', `Component not found: replacePathPageOneMoveToTopSingletonBtn0080`);
        throw new Error('Component not found: replacePathPageOneMoveToTopSingletonBtn0080');
      }
      await replacePathPageOneMoveToTopSingletonBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0080_03');
      await Utils.sleep(1000);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0080 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0090
     * @tc.name   : NavDestination新增OnActive和OnInActive生命周期（栈操作replace接口，replace STANDARD页面，使用POP_TO_SINGLETON）
     * @tc.desc   : NavDestination新增OnActive和OnInActive生命周期（栈操作replace接口，replace STANDARD页面，使用POP_TO_SINGLETON）
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0090', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0090 start.`);
      Settings.createWindow("testability/pages/navigation_interface/activeOn/0090/navigationOnActiveOnInActive0090")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"Navigation基础栈操作场景"按钮
      let navigationBasicStackOperationBtn = await driver.waitForComponent(ON.id('navigationBasicStackOperationBtn0090'), 1000);
      Logger.info('TEST', `Found component: navigationBasicStackOperationBtn0090`);
      if (!navigationBasicStackOperationBtn) {
        Logger.error('TEST', `Component not found: navigationBasicStackOperationBtn0090`);
        throw new Error('Component not found: navigationBasicStackOperationBtn0090');
      }
      await navigationBasicStackOperationBtn.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(1000);
      Logger.info('TEST', `After clicking navigationBasicStackOperationBtn, waiting for page to render`);
      
      // 2.点击"push pageOne"按钮
      let pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0090'), 1000);
      Logger.info('TEST', `Found component: pushPageOneBtn0090, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
      if (!pushPageOneBtn) {
        Logger.error('TEST', `Component not found: pushPageOneBtn0090 after navigation jump. Page may not be fully rendered.`);
        await Utils.sleep(1000);
        pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0090'), 1000);
        Logger.info('TEST', `Retry found component: pushPageOneBtn0090, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
        if (!pushPageOneBtn) {
          throw new Error('Component not found: pushPageOneBtn0090');
        }
      }
      await pushPageOneBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0090_01');
      await Utils.sleep(1000);
      
      // 3.点击"pushDestinationByName pageTwo"按钮
      let pushDestinationByNamePageTwoBtn = await driver.waitForComponent(ON.id('pushDestinationByNamePageTwoBtn0090'), 1000);
      Logger.info('TEST', `Found component: pushDestinationByNamePageTwoBtn0090`);
      if (!pushDestinationByNamePageTwoBtn) {
        Logger.error('TEST', `Component not found: pushDestinationByNamePageTwoBtn0090`);
        throw new Error('Component not found: pushDestinationByNamePageTwoBtn0090');
      }
      await pushDestinationByNamePageTwoBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0090_02');
      await Utils.sleep(1000);
      
      // 4.点击"replacePath pageOne POP_TO_SINGLETON"按钮
      let replacePathPageOnePopToSingletonBtn = await driver.waitForComponent(ON.id('replacePathPageOnePopToSingletonBtn0090'), 1000);
      Logger.info('TEST', `Found component: replacePathPageOnePopToSingletonBtn0090`);
      if (!replacePathPageOnePopToSingletonBtn) {
        Logger.error('TEST', `Component not found: replacePathPageOnePopToSingletonBtn0090`);
        throw new Error('Component not found: replacePathPageOnePopToSingletonBtn0090');
      }
      await replacePathPageOnePopToSingletonBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0090_03');
      await Utils.sleep(1000);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0090 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0100
     * @tc.name   : NavDestination新增OnActive和OnInActive生命周期（栈操作moveIndexToTop STANDARD页面）
     * @tc.desc   : NavDestination新增OnActive和OnInActive生命周期（栈操作moveIndexToTop STANDARD页面）
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0100', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0100 start.`);
      Settings.createWindow("testability/pages/navigation_interface/activeOn/0100/navigationOnActiveOnInActive0100")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"Navigation基础栈操作场景"按钮
      let navigationBasicStackOperationBtn = await driver.waitForComponent(ON.id('navigationBasicStackOperationBtn0100'), 1000);
      Logger.info('TEST', `Found component: navigationBasicStackOperationBtn0100`);
      if (!navigationBasicStackOperationBtn) {
        Logger.error('TEST', `Component not found: navigationBasicStackOperationBtn0100`);
        throw new Error('Component not found: navigationBasicStackOperationBtn0100');
      }
      await navigationBasicStackOperationBtn.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(1000);
      Logger.info('TEST', `After clicking navigationBasicStackOperationBtn, waiting for page to render`);
      
      // 2.点击"push pageOne"按钮
      let pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0100'), 1000);
      Logger.info('TEST', `Found component: pushPageOneBtn0100, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
      if (!pushPageOneBtn) {
        Logger.error('TEST', `Component not found: pushPageOneBtn0100 after navigation jump. Page may not be fully rendered.`);
        await Utils.sleep(1000);
        pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0100'), 1000);
        Logger.info('TEST', `Retry found component: pushPageOneBtn0100, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
        if (!pushPageOneBtn) {
          throw new Error('Component not found: pushPageOneBtn0100');
        }
      }
      await pushPageOneBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0100_01');
      await Utils.sleep(1000);
      
      // 3.点击"push pageTwo"按钮
      let pushPageTwoBtn = await driver.waitForComponent(ON.id('pushPageTwoBtn0100'), 1000);
      Logger.info('TEST', `Found component: pushPageTwoBtn0100`);
      if (!pushPageTwoBtn) {
        Logger.error('TEST', `Component not found: pushPageTwoBtn0100`);
        throw new Error('Component not found: pushPageTwoBtn0100');
      }
      await pushPageTwoBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0100_02');
      await Utils.sleep(1000);
      
      // 4.点击"push pageThree"按钮
      let pushPageThreeBtn = await driver.waitForComponent(ON.id('pushPageThreeBtn0100'), 1000);
      Logger.info('TEST', `Found component: pushPageThreeBtn0100`);
      if (!pushPageThreeBtn) {
        Logger.error('TEST', `Component not found: pushPageThreeBtn0100`);
        throw new Error('Component not found: pushPageThreeBtn0100');
      }
      await pushPageThreeBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0100_03');
      await Utils.sleep(1000);
      
      // 5.点击"moveIndexToTop 0"按钮
      let moveIndexToTop0Btn = await driver.waitForComponent(ON.id('moveIndexToTop0Btn0100'), 1000);
      Logger.info('TEST', `Found component: moveIndexToTop0Btn0100`);
      if (!moveIndexToTop0Btn) {
        Logger.error('TEST', `Component not found: moveIndexToTop0Btn0100`);
        throw new Error('Component not found: moveIndexToTop0Btn0100');
      }
      await moveIndexToTop0Btn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0100_04');
      await Utils.sleep(1000);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0100 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0110
     * @tc.name   : NavDestination新增OnActive和OnInActive生命周期（栈操作moveIndexToTop DIALOG页面）
     * @tc.desc   : NavDestination新增OnActive和OnInActive生命周期（栈操作moveIndexToTop DIALOG页面）
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0110', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0110 start.`);
      Settings.createWindow("testability/pages/navigation_interface/activeOn/0110/navigationOnActiveOnInActive0110")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"Navigation基础栈操作场景"按钮
      let navigationBasicStackOperationBtn = await driver.waitForComponent(ON.id('navigationBasicStackOperationBtn0110'), 1000);
      Logger.info('TEST', `Found component: navigationBasicStackOperationBtn0110`);
      if (!navigationBasicStackOperationBtn) {
        Logger.error('TEST', `Component not found: navigationBasicStackOperationBtn0110`);
        throw new Error('Component not found: navigationBasicStackOperationBtn0110');
      }
      await navigationBasicStackOperationBtn.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(1000);
      Logger.info('TEST', `After clicking navigationBasicStackOperationBtn, waiting for page to render`);
      
      // 2.点击"push pageOne"按钮
      let pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0110'), 1000);
      Logger.info('TEST', `Found component: pushPageOneBtn0110, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
      if (!pushPageOneBtn) {
        Logger.error('TEST', `Component not found: pushPageOneBtn0110 after navigation jump. Page may not be fully rendered.`);
        await Utils.sleep(1000);
        pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0110'), 1000);
        Logger.info('TEST', `Retry found component: pushPageOneBtn0110, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
        if (!pushPageOneBtn) {
          throw new Error('Component not found: pushPageOneBtn0110');
        }
      }
      await pushPageOneBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0110_01');
      await Utils.sleep(1000);
      
      // 3.点击"push pageThree"按钮
      let pushPageThreeBtn = await driver.waitForComponent(ON.id('pushPageThreeBtn0110'), 1000);
      Logger.info('TEST', `Found component: pushPageThreeBtn0110`);
      if (!pushPageThreeBtn) {
        Logger.error('TEST', `Component not found: pushPageThreeBtn0110`);
        throw new Error('Component not found: pushPageThreeBtn0110');
      }
      await pushPageThreeBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0110_02');
      await Utils.sleep(1000);
      
      // 4.点击"push pageTwo"按钮
      let pushPageTwoBtn = await driver.waitForComponent(ON.id('pushPageTwoBtn0110'), 1000);
      Logger.info('TEST', `Found component: pushPageTwoBtn0110`);
      if (!pushPageTwoBtn) {
        Logger.error('TEST', `Component not found: pushPageTwoBtn0110`);
        throw new Error('Component not found: pushPageTwoBtn0110');
      }
      await pushPageTwoBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0110_03');
      await Utils.sleep(1000);
      
      // 5.点击"push pageFour"按钮
      let pushPageFourBtn = await driver.waitForComponent(ON.id('pushPageFourBtn0110'), 1000);
      Logger.info('TEST', `Found component: pushPageFourBtn0110`);
      if (!pushPageFourBtn) {
        Logger.error('TEST', `Component not found: pushPageFourBtn0110`);
        throw new Error('Component not found: pushPageFourBtn0110');
      }
      await pushPageFourBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0110_04');
      await Utils.sleep(1000);
      
      // 6.点击"moveIndexToTop 1"按钮
      let moveIndexToTop1Btn = await driver.waitForComponent(ON.id('moveIndexToTop1Btn0110'), 1000);
      Logger.info('TEST', `Found component: moveIndexToTop1Btn0110`);
      if (!moveIndexToTop1Btn) {
        Logger.error('TEST', `Component not found: moveIndexToTop1Btn0110`);
        throw new Error('Component not found: moveIndexToTop1Btn0110');
      }
      await moveIndexToTop1Btn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0110_05');
      await Utils.sleep(1000);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0110 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0120
     * @tc.name   : NavDestination新增OnActive和OnInActive生命周期（栈操作pop接口，pop STANDARD、DIALOG页面）
     * @tc.desc   : NavDestination新增OnActive和OnInActive生命周期（栈操作pop接口，pop STANDARD、DIALOG页面）
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0120', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0120 start.`);
      Settings.createWindow("testability/pages/navigation_interface/activeOn/0120/navigationOnActiveOnInActive0120")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"Navigation基础栈操作场景"按钮
      let navigationBasicStackOperationBtn = await driver.waitForComponent(ON.id('navigationBasicStackOperationBtn0120'), 1000);
      Logger.info('TEST', `Found component: navigationBasicStackOperationBtn0120`);
      if (!navigationBasicStackOperationBtn) {
        Logger.error('TEST', `Component not found: navigationBasicStackOperationBtn0120`);
        throw new Error('Component not found: navigationBasicStackOperationBtn0120');
      }
      await navigationBasicStackOperationBtn.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(1000);
      Logger.info('TEST', `After clicking navigationBasicStackOperationBtn, waiting for page to render`);
      
      // 2.点击"push pageOne"按钮
      let pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0120'), 1000);
      Logger.info('TEST', `Found component: pushPageOneBtn0120, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
      if (!pushPageOneBtn) {
        Logger.error('TEST', `Component not found: pushPageOneBtn0120 after navigation jump. Page may not be fully rendered.`);
        await Utils.sleep(1000);
        pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0120'), 1000);
        Logger.info('TEST', `Retry found component: pushPageOneBtn0120, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
        if (!pushPageOneBtn) {
          throw new Error('Component not found: pushPageOneBtn0120');
        }
      }
      await pushPageOneBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0120_01');
      await Utils.sleep(1000);
      
      // 3.点击"push pageThree"按钮
      let pushPageThreeBtn = await driver.waitForComponent(ON.id('pushPageThreeBtn0120'), 1000);
      Logger.info('TEST', `Found component: pushPageThreeBtn0120`);
      if (!pushPageThreeBtn) {
        Logger.error('TEST', `Component not found: pushPageThreeBtn0120`);
        throw new Error('Component not found: pushPageThreeBtn0120');
      }
      await pushPageThreeBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0120_02');
      await Utils.sleep(1000);
      
      // 4.点击"pop"按钮
      let popBtn = await driver.waitForComponent(ON.id('popBtn0120'), 1000);
      Logger.info('TEST', `Found component: popBtn0120`);
      if (!popBtn) {
        Logger.error('TEST', `Component not found: popBtn0120`);
        throw new Error('Component not found: popBtn0120');
      }
      await popBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0120_03');
      await Utils.sleep(1000);
      
      // 5.点击"pop"按钮
      let popBtn2 = await driver.waitForComponent(ON.id('popBtn0120'), 1000);
      Logger.info('TEST', `Found component: popBtn0120 (second time)`);
      if (!popBtn2) {
        Logger.error('TEST', `Component not found: popBtn0120 (second time)`);
        throw new Error('Component not found: popBtn0120 (second time)');
      }
      await popBtn2.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0120_04');
      await Utils.sleep(1000);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0120 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0130
     * @tc.name   : NavDestination新增OnActive和OnInActive生命周期（栈操作pop接口，popToIndex STANDARD、DIALOG页面）
     * @tc.desc   : NavDestination新增OnActive和OnInActive生命周期（栈操作pop接口，popToIndex STANDARD、DIALOG页面）
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0130', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0130 start.`);
      Settings.createWindow("testability/pages/navigation_interface/activeOn/0130/navigationOnActiveOnInActive0130")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"Navigation基础栈操作场景"按钮
      let navigationBasicStackOperationBtn = await driver.waitForComponent(ON.id('navigationBasicStackOperationBtn0130'), 1000);
      Logger.info('TEST', `Found component: navigationBasicStackOperationBtn0130`);
      if (!navigationBasicStackOperationBtn) {
        Logger.error('TEST', `Component not found: navigationBasicStackOperationBtn0130`);
        throw new Error('Component not found: navigationBasicStackOperationBtn0130');
      }
      await navigationBasicStackOperationBtn.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(1000);
      Logger.info('TEST', `After clicking navigationBasicStackOperationBtn, waiting for page to render`);
      
      // 2.点击"push pageOne"按钮
      let pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0130'), 1000);
      Logger.info('TEST', `Found component: pushPageOneBtn0130, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
      if (!pushPageOneBtn) {
        Logger.error('TEST', `Component not found: pushPageOneBtn0130 after navigation jump. Page may not be fully rendered.`);
        await Utils.sleep(1000);
        pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0130'), 1000);
        Logger.info('TEST', `Retry found component: pushPageOneBtn0130, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
        if (!pushPageOneBtn) {
          throw new Error('Component not found: pushPageOneBtn0130');
        }
      }
      await pushPageOneBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0130_01');
      await Utils.sleep(1000);
      
      // 3.点击"push pageTwo"按钮
      let pushPageTwoBtn = await driver.waitForComponent(ON.id('pushPageTwoBtn0130'), 1000);
      Logger.info('TEST', `Found component: pushPageTwoBtn0130`);
      if (!pushPageTwoBtn) {
        Logger.error('TEST', `Component not found: pushPageTwoBtn0130`);
        throw new Error('Component not found: pushPageTwoBtn0130');
      }
      await pushPageTwoBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0130_02');
      await Utils.sleep(1000);
      
      // 4.点击"push pageThree"按钮
      let pushPageThreeBtn = await driver.waitForComponent(ON.id('pushPageThreeBtn0130'), 1000);
      Logger.info('TEST', `Found component: pushPageThreeBtn0130`);
      if (!pushPageThreeBtn) {
        Logger.error('TEST', `Component not found: pushPageThreeBtn0130`);
        throw new Error('Component not found: pushPageThreeBtn0130');
      }
      await pushPageThreeBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0130_03');
      await Utils.sleep(1000);
      
      // 5.点击"popToIndex 0"按钮
      let popToIndex0Btn = await driver.waitForComponent(ON.id('popToIndex0Btn0130'), 1000);
      Logger.info('TEST', `Found component: popToIndex0Btn0130`);
      if (!popToIndex0Btn) {
        Logger.error('TEST', `Component not found: popToIndex0Btn0130`);
        throw new Error('Component not found: popToIndex0Btn0130');
      }
      await popToIndex0Btn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0130_04');
      await Utils.sleep(1000);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0130 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0140
     * @tc.name   : NavDestination新增OnActive和OnInActive生命周期（栈操作remove STANDARD页面）
     * @tc.desc   : NavDestination新增OnActive和OnInActive生命周期（栈操作remove STANDARD页面）
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0140', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0140 start.`);
      Settings.createWindow("testability/pages/navigation_interface/activeOn/0140/navigationOnActiveOnInActive0140")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"Navigation基础栈操作场景"按钮
      let navigationBasicStackOperationBtn = await driver.waitForComponent(ON.id('navigationBasicStackOperationBtn0140'), 1000);
      Logger.info('TEST', `Found component: navigationBasicStackOperationBtn0140`);
      if (!navigationBasicStackOperationBtn) {
        Logger.error('TEST', `Component not found: navigationBasicStackOperationBtn0140`);
        throw new Error('Component not found: navigationBasicStackOperationBtn0140');
      }
      await navigationBasicStackOperationBtn.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(1000);
      Logger.info('TEST', `After clicking navigationBasicStackOperationBtn, waiting for page to render`);
      
      // 2.点击"push pageOne"按钮
      let pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0140'), 1000);
      Logger.info('TEST', `Found component: pushPageOneBtn0140, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
      if (!pushPageOneBtn) {
        Logger.error('TEST', `Component not found: pushPageOneBtn0140 after navigation jump. Page may not be fully rendered.`);
        await Utils.sleep(1000);
        pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0140'), 1000);
        Logger.info('TEST', `Retry found component: pushPageOneBtn0140, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
        if (!pushPageOneBtn) {
          throw new Error('Component not found: pushPageOneBtn0140');
        }
      }
      await pushPageOneBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0140_01');
      await Utils.sleep(1000);
      
      // 3.点击"push pageTwo"按钮
      let pushPageTwoBtn = await driver.waitForComponent(ON.id('pushPageTwoBtn0140'), 1000);
      Logger.info('TEST', `Found component: pushPageTwoBtn0140`);
      if (!pushPageTwoBtn) {
        Logger.error('TEST', `Component not found: pushPageTwoBtn0140`);
        throw new Error('Component not found: pushPageTwoBtn0140');
      }
      await pushPageTwoBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0140_02');
      await Utils.sleep(1000);
      
      // 4.点击"removeByIndexes[1]"按钮
      let removeByIndexes1Btn = await driver.waitForComponent(ON.id('removeByIndexes1Btn0140'), 1000);
      Logger.info('TEST', `Found component: removeByIndexes1Btn0140`);
      if (!removeByIndexes1Btn) {
        Logger.error('TEST', `Component not found: removeByIndexes1Btn0140`);
        throw new Error('Component not found: removeByIndexes1Btn0140');
      }
      await removeByIndexes1Btn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0140_03');
      await Utils.sleep(1000);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0140 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0150
     * @tc.name   : NavDestination新增OnActive和OnInActive生命周期（栈操作remove DIALOG页面）
     * @tc.desc   : NavDestination新增OnActive和OnInActive生命周期（栈操作remove DIALOG页面）
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0150', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0150 start.`);
      Settings.createWindow("testability/pages/navigation_interface/activeOn/0150/navigationOnActiveOnInActive0150")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"Navigation基础栈操作场景"按钮
      let navigationBasicStackOperationBtn = await driver.waitForComponent(ON.id('navigationBasicStackOperationBtn0150'), 1000);
      Logger.info('TEST', `Found component: navigationBasicStackOperationBtn0150`);
      if (!navigationBasicStackOperationBtn) {
        Logger.error('TEST', `Component not found: navigationBasicStackOperationBtn0150`);
        throw new Error('Component not found: navigationBasicStackOperationBtn0150');
      }
      await navigationBasicStackOperationBtn.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(1000);
      Logger.info('TEST', `After clicking navigationBasicStackOperationBtn, waiting for page to render`);
      
      // 2.点击"push pageOne"按钮
      let pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0150'), 1000);
      Logger.info('TEST', `Found component: pushPageOneBtn0150, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
      if (!pushPageOneBtn) {
        Logger.error('TEST', `Component not found: pushPageOneBtn0150 after navigation jump. Page may not be fully rendered.`);
        await Utils.sleep(1000);
        pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0150'), 1000);
        Logger.info('TEST', `Retry found component: pushPageOneBtn0150, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
        if (!pushPageOneBtn) {
          throw new Error('Component not found: pushPageOneBtn0150');
        }
      }
      await pushPageOneBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0150_01');
      await Utils.sleep(1000);
      
      // 3.点击"push pageThree"按钮
      let pushPageThreeBtn = await driver.waitForComponent(ON.id('pushPageThreeBtn0150'), 1000);
      Logger.info('TEST', `Found component: pushPageThreeBtn0150`);
      if (!pushPageThreeBtn) {
        Logger.error('TEST', `Component not found: pushPageThreeBtn0150`);
        throw new Error('Component not found: pushPageThreeBtn0150');
      }
      await pushPageThreeBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0150_02');
      await Utils.sleep(1000);
      
      // 4.点击"push pageTwo"按钮
      let pushPageTwoBtn = await driver.waitForComponent(ON.id('pushPageTwoBtn0150'), 1000);
      Logger.info('TEST', `Found component: pushPageTwoBtn0150`);
      if (!pushPageTwoBtn) {
        Logger.error('TEST', `Component not found: pushPageTwoBtn0150`);
        throw new Error('Component not found: pushPageTwoBtn0150');
      }
      await pushPageTwoBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0150_03');
      await Utils.sleep(1000);
      
      // 5.点击"push pageFour"按钮
      let pushPageFourBtn = await driver.waitForComponent(ON.id('pushPageFourBtn0150'), 1000);
      Logger.info('TEST', `Found component: pushPageFourBtn0150`);
      if (!pushPageFourBtn) {
        Logger.error('TEST', `Component not found: pushPageFourBtn0150`);
        throw new Error('Component not found: pushPageFourBtn0150');
      }
      await pushPageFourBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0150_04');
      await Utils.sleep(1000);
      
      // 6.点击"removeByIndexes[1,3]"按钮
      let removeByIndexes13Btn = await driver.waitForComponent(ON.id('removeByIndexes13Btn0150'), 1000);
      Logger.info('TEST', `Found component: removeByIndexes13Btn0150`);
      if (!removeByIndexes13Btn) {
        Logger.error('TEST', `Component not found: removeByIndexes13Btn0150`);
        throw new Error('Component not found: removeByIndexes13Btn0150');
      }
      await removeByIndexes13Btn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0150_05');
      await Utils.sleep(1000);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0150 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0160
     * @tc.name   : NavDestination新增OnActive和OnInActive生命周期（栈操作remove STANDARD、DIALOG页面）
     * @tc.desc   : NavDestination新增OnActive和OnInActive生命周期（栈操作remove STANDARD、DIALOG页面）
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0160', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0160 start.`);
      Settings.createWindow("testability/pages/navigation_interface/activeOn/0160/navigationOnActiveOnInActive0160")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"Navigation基础栈操作场景"按钮
      let navigationBasicStackOperationBtn = await driver.waitForComponent(ON.id('navigationBasicStackOperationBtn0160'), 1000);
      Logger.info('TEST', `Found component: navigationBasicStackOperationBtn0160`);
      if (!navigationBasicStackOperationBtn) {
        Logger.error('TEST', `Component not found: navigationBasicStackOperationBtn0160`);
        throw new Error('Component not found: navigationBasicStackOperationBtn0160');
      }
      await navigationBasicStackOperationBtn.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(1000);
      Logger.info('TEST', `After clicking navigationBasicStackOperationBtn, waiting for page to render`);
      
      // 2.点击"push pageOne"按钮
      let pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0160'), 1000);
      Logger.info('TEST', `Found component: pushPageOneBtn0160, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
      if (!pushPageOneBtn) {
        Logger.error('TEST', `Component not found: pushPageOneBtn0160 after navigation jump. Page may not be fully rendered.`);
        await Utils.sleep(1000);
        pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0160'), 1000);
        Logger.info('TEST', `Retry found component: pushPageOneBtn0160, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
        if (!pushPageOneBtn) {
          throw new Error('Component not found: pushPageOneBtn0160');
        }
      }
      await pushPageOneBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0160_01');
      await Utils.sleep(1000);
      
      // 3.点击"push pageThree"按钮
      let pushPageThreeBtn = await driver.waitForComponent(ON.id('pushPageThreeBtn0160'), 1000);
      Logger.info('TEST', `Found component: pushPageThreeBtn0160`);
      if (!pushPageThreeBtn) {
        Logger.error('TEST', `Component not found: pushPageThreeBtn0160`);
        throw new Error('Component not found: pushPageThreeBtn0160');
      }
      await pushPageThreeBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0160_02');
      await Utils.sleep(1000);
      
      // 4.点击"push pageTwo"按钮
      let pushPageTwoBtn = await driver.waitForComponent(ON.id('pushPageTwoBtn0160'), 1000);
      Logger.info('TEST', `Found component: pushPageTwoBtn0160`);
      if (!pushPageTwoBtn) {
        Logger.error('TEST', `Component not found: pushPageTwoBtn0160`);
        throw new Error('Component not found: pushPageTwoBtn0160');
      }
      await pushPageTwoBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0160_03');
      await Utils.sleep(1000);
      
      // 5.点击"push pageFour"按钮
      let pushPageFourBtn = await driver.waitForComponent(ON.id('pushPageFourBtn0160'), 1000);
      Logger.info('TEST', `Found component: pushPageFourBtn0160`);
      if (!pushPageFourBtn) {
        Logger.error('TEST', `Component not found: pushPageFourBtn0160`);
        throw new Error('Component not found: pushPageFourBtn0160');
      }
      await pushPageFourBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0160_04');
      await Utils.sleep(1000);
      
      // 6.点击"removeByIndexes[2,3]"按钮
      let removeByIndexes23Btn = await driver.waitForComponent(ON.id('removeByIndexes23Btn0160'), 1000);
      Logger.info('TEST', `Found component: removeByIndexes23Btn0160`);
      if (!removeByIndexes23Btn) {
        Logger.error('TEST', `Component not found: removeByIndexes23Btn0160`);
        throw new Error('Component not found: removeByIndexes23Btn0160');
      }
      await removeByIndexes23Btn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0160_05');
      await Utils.sleep(1000);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0160 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0170
     * @tc.name   : NavDestination新增OnActive和OnInActive生命周期（栈操作clear）
     * @tc.desc   : NavDestination新增OnActive和OnInActive生命周期（栈操作clear）
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0170', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0170 start.`);
      Settings.createWindow("testability/pages/navigation_interface/activeOn/0170/navigationOnActiveOnInActive0170")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"Navigation基础栈操作场景"按钮
      let navigationBasicStackOperationBtn = await driver.waitForComponent(ON.id('navigationBasicStackOperationBtn0170'), 1000);
      Logger.info('TEST', `Found component: navigationBasicStackOperationBtn0170`);
      if (!navigationBasicStackOperationBtn) {
        Logger.error('TEST', `Component not found: navigationBasicStackOperationBtn0170`);
        throw new Error('Component not found: navigationBasicStackOperationBtn0170');
      }
      await navigationBasicStackOperationBtn.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(1000);
      Logger.info('TEST', `After clicking navigationBasicStackOperationBtn, waiting for page to render`);
      
      // 2.点击"push pageOne"按钮
      let pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0170'), 1000);
      Logger.info('TEST', `Found component: pushPageOneBtn0170, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
      if (!pushPageOneBtn) {
        Logger.error('TEST', `Component not found: pushPageOneBtn0170 after navigation jump. Page may not be fully rendered.`);
        await Utils.sleep(1000);
        pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0170'), 1000);
        Logger.info('TEST', `Retry found component: pushPageOneBtn0170, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
        if (!pushPageOneBtn) {
          throw new Error('Component not found: pushPageOneBtn0170');
        }
      }
      await pushPageOneBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0170_01');
      await Utils.sleep(1000);
      
      // 3.点击"push pageThree"按钮
      let pushPageThreeBtn = await driver.waitForComponent(ON.id('pushPageThreeBtn0170'), 1000);
      Logger.info('TEST', `Found component: pushPageThreeBtn0170`);
      if (!pushPageThreeBtn) {
        Logger.error('TEST', `Component not found: pushPageThreeBtn0170`);
        throw new Error('Component not found: pushPageThreeBtn0170');
      }
      await pushPageThreeBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0170_02');
      await Utils.sleep(1000);
      
      // 4.点击"clear"按钮
      let clearBtn = await driver.waitForComponent(ON.id('clearBtn0170'), 1000);
      Logger.info('TEST', `Found component: clearBtn0170`);
      if (!clearBtn) {
        Logger.error('TEST', `Component not found: clearBtn0170`);
        throw new Error('Component not found: clearBtn0170');
      }
      await clearBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0170_03');
      await Utils.sleep(1000);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0170 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0180
     * @tc.name   : NavDestination新增OnActive和OnInActive生命周期（返回键+侧滑返回）
     * @tc.desc   : NavDestination新增OnActive和OnInActive生命周期（返回键+侧滑返回）
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0180', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0180 start.`);
      Settings.createWindow("testability/pages/navigation_interface/activeOn/0180/navigationOnActiveOnInActive0180")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      // 1.点击"Navigation基础栈操作场景"按钮
      let navigationBasicStackOperationBtn = await driver.waitForComponent(ON.id('navigationBasicStackOperationBtn0180'), 1000);
      Logger.info('TEST', `Found component: navigationBasicStackOperationBtn0180, result: ${navigationBasicStackOperationBtn ? 'found' : 'not found'}`);
      if (!navigationBasicStackOperationBtn) {
        Logger.error('TEST', `Component not found: navigationBasicStackOperationBtn0180 after initial load. Page may not be fully rendered.`);
        await Utils.sleep(1000);
        navigationBasicStackOperationBtn = await driver.waitForComponent(ON.id('navigationBasicStackOperationBtn0180'), 1000);
        Logger.info('TEST', `Retry found component: navigationBasicStackOperationBtn0180, result: ${navigationBasicStackOperationBtn ? 'found' : 'not found'}`);
        if (!navigationBasicStackOperationBtn) {
          throw new Error('Component not found: navigationBasicStackOperationBtn0180');
        }
      }
      await navigationBasicStackOperationBtn.click();
      await driver.waitForIdle(1000, 2000);
      await Utils.sleep(1000);
      Logger.info('TEST', `After clicking navigationBasicStackOperationBtn, waiting for page to render`);
      
      // 2.点击"push pageOne"按钮
      let pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0180'), 1000);
      Logger.info('TEST', `Found component: pushPageOneBtn0180, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
      if (!pushPageOneBtn) {
        Logger.error('TEST', `Component not found: pushPageOneBtn0180 after navigation jump. Page may not be fully rendered.`);
        await Utils.sleep(1000);
        pushPageOneBtn = await driver.waitForComponent(ON.id('pushPageOneBtn0180'), 1000);
        Logger.info('TEST', `Retry found component: pushPageOneBtn0180, result: ${pushPageOneBtn ? 'found' : 'not found'}`);
        if (!pushPageOneBtn) {
          throw new Error('Component not found: pushPageOneBtn0180');
        }
      }
      await pushPageOneBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0180_01');
      await Utils.sleep(1000);
      
      // 3.点击"push pageThree"按钮
      let pushPageThreeBtn = await driver.waitForComponent(ON.id('pushPageThreeBtn0180'), 1000);
      Logger.info('TEST', `Found component: pushPageThreeBtn0180`);
      if (!pushPageThreeBtn) {
        Logger.error('TEST', `Component not found: pushPageThreeBtn0180`);
        throw new Error('Component not found: pushPageThreeBtn0180');
      }
      await pushPageThreeBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0180_02');
      await Utils.sleep(1000);
      
      // 4.点击"push pageTwo"按钮
      let pushPageTwoBtn = await driver.waitForComponent(ON.id('pushPageTwoBtn0180'), 1000);
      Logger.info('TEST', `Found component: pushPageTwoBtn0180`);
      if (!pushPageTwoBtn) {
        Logger.error('TEST', `Component not found: pushPageTwoBtn0180`);
        throw new Error('Component not found: pushPageTwoBtn0180');
      }
      await pushPageTwoBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0180_03');
      await Utils.sleep(1000);
      
      // 5.点击"push pageFour"按钮
      let pushPageFourBtn = await driver.waitForComponent(ON.id('pushPageFourBtn0180'), 1000);
      Logger.info('TEST', `Found component: pushPageFourBtn0180`);
      if (!pushPageFourBtn) {
        Logger.error('TEST', `Component not found: pushPageFourBtn0180`);
        throw new Error('Component not found: pushPageFourBtn0180');
      }
      await pushPageFourBtn.click();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0180_04');
      await Utils.sleep(1000);
      
      // 6.点击返回键
      await driver.pressBack();
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0180_05');
      await Utils.sleep(1000);
      
      // 7.侧滑返回
      await driver.swipe(50, 500, 500, 500, 1000);
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0180_06');
      await Utils.sleep(1000);
      
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_NAVIGATION_ONACTIVEONINACTIVE_0180 finish.`);
      done()
    })
  })
}

