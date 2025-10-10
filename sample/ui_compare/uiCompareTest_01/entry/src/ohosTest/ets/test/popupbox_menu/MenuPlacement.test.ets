/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
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

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@kit.TestKit';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';
import Utils from '../model/Utils';
import { Driver, ON, Component } from '@kit.TestKit';

export default function MenuPlacementTest() {
  describe('MenuPlacementTest', () => {
    afterEach(() => {
      Settings.windowClass.destroyWindow();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0720
     * @tc.name Menu placement BottomRight with width 48vp
     * @tc.desc Test menu placement BottomRight with specific width
     * @tc.type FUNC
     * @tc.require I7QZ3Q
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0720', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/popupbox_menu/menuPlacement01");
      await driver.waitForIdle(500, 2000);

      try {
        console.info('TEST_0720: 开始查找Button组件');
        let buttonComponent: Component = await driver.waitForComponent(ON.id('button_01'), 1000);
        console.info('TEST_0720: 成功找到Button组件');

        await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0720');
        await Utils.sleep(1000);

        console.info('TEST_0720: 测试用例执行成功');
        done();
      } catch (error) {
        console.error('TEST_0720: 测试用例执行失败 - ' + JSON.stringify(error));
        console.error('TEST_0720: 错误堆栈: ' + error.message);
        expect().assertFail();
      }
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0500
     * @tc.name Menu placement Right without width
     * @tc.desc Test menu placement Right without specific width
     * @tc.type FUNC
     * @tc.require I7QZ3Q
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0500', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/popupbox_menu/menuPlacement02");
      await driver.waitForIdle(500, 2000);

      try {
        console.info('TEST_0500: 开始查找Button组件');
        let buttonComponent: Component = await driver.waitForComponent(ON.id('button_02'), 1000);
        console.info('TEST_0500: 成功找到Button组件');

        await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0500');
        await Utils.sleep(1000);

        console.info('TEST_0500: 测试用例执行成功');
        done();
      } catch (error) {
        console.error('TEST_0500: 测试用例执行失败 - ' + JSON.stringify(error));
        console.error('TEST_0500: 错误堆栈: ' + error.message);
        expect().assertFail();
      }
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0750
     * @tc.name Menu placement RightTop with width 100vp
     * @tc.desc Test menu placement RightTop with specific width
     * @tc.type FUNC
     * @tc.require I7QZ3Q
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0750', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/popupbox_menu/menuPlacement03");
      await driver.waitForIdle(500, 2000);

      try {
        console.info('TEST_0750: 开始查找Button组件');
        let buttonComponent: Component = await driver.waitForComponent(ON.id('button_03'), 1000);
        console.info('TEST_0750: 成功找到Button组件');

        await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0750');
        await Utils.sleep(1000);

        console.info('TEST_0750: 测试用例执行成功');
        done();
      } catch (error) {
        console.error('TEST_0750: 测试用例执行失败 - ' + JSON.stringify(error));
        console.error('TEST_0750: 错误堆栈: ' + error.message);
        expect().assertFail();
      }
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0600
     * @tc.name Menu placement TopLeft with width 48vp
     * @tc.desc Test menu placement TopLeft with specific width
     * @tc.type FUNC
     * @tc.require I7QZ3Q
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0600', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/popupbox_menu/menuPlacement04");
      await driver.waitForIdle(500, 2000);

      try {
        console.info('TEST_0600: 开始查找Button组件');
        let buttonComponent: Component = await driver.waitForComponent(ON.id('button_04'), 1000);
        console.info('TEST_0600: 成功找到Button组件');

        await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0600');
        await Utils.sleep(1000);

        console.info('TEST_0600: 测试用例执行成功');
        done();
      } catch (error) {
        console.error('TEST_0600: 测试用例执行失败 - ' + JSON.stringify(error));
        console.error('TEST_0600: 错误堆栈: ' + error.message);
        expect().assertFail();
      }
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0550
     * @tc.name Menu placement Bottom with width 100vp
     * @tc.desc Test menu placement Bottom with specific width
     * @tc.type FUNC
     * @tc.require I7QZ3Q
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0550', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/popupbox_menu/menuPlacement05");
      await driver.waitForIdle(500, 2000);

      try {
        console.info('TEST_0550: 开始查找Button组件');
        let buttonComponent: Component = await driver.waitForComponent(ON.id('button_05'), 1000);
        console.info('TEST_0550: 成功找到Button组件');

        await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0550');
        await Utils.sleep(1000);

        console.info('TEST_0550: 测试用例执行成功');
        done();
      } catch (error) {
        console.error('TEST_0550: 测试用例执行失败 - ' + JSON.stringify(error));
        console.error('TEST_0550: 错误堆栈: ' + error.message);
        expect().assertFail();
      }
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0480
     * @tc.name Menu placement Right with width 48vp
     * @tc.desc Test menu placement Right with specific width
     * @tc.type FUNC
     * @tc.require I7QZ3Q
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0480', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/popupbox_menu/menuPlacement06");
      await driver.waitForIdle(500, 2000);

      try {
        console.info('TEST_0480: 开始查找Button组件');
        let buttonComponent: Component = await driver.waitForComponent(ON.id('button_06'), 1000);
        console.info('TEST_0480: 成功找到Button组件');

        await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0480');
        await Utils.sleep(1000);

        console.info('TEST_0480: 测试用例执行成功');
        done();
      } catch (error) {
        console.error('TEST_0480: 测试用例执行失败 - ' + JSON.stringify(error));
        console.error('TEST_0480: 错误堆栈: ' + error.message);
        expect().assertFail();
      }
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0470
     * @tc.name Menu placement Right with width 100vp
     * @tc.desc Test menu placement Right with specific width
     * @tc.type FUNC
     * @tc.require I7QZ3Q
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0470', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/popupbox_menu/menuPlacement07");
      await driver.waitForIdle(500, 2000);

      try {
        console.info('TEST_0470: 开始查找Button组件');
        let buttonComponent: Component = await driver.waitForComponent(ON.id('button_07'), 1000);
        console.info('TEST_0470: 成功找到Button组件');

        await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0470');
        await Utils.sleep(1000);

        console.info('TEST_0470: 测试用例执行成功');
        done();
      } catch (error) {
        console.error('TEST_0470: 测试用例执行失败 - ' + JSON.stringify(error));
        console.error('TEST_0470: 错误堆栈: ' + error.message);
        expect().assertFail();
      }
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0760
     * @tc.name Menu placement RightTop with width 48vp
     * @tc.desc Test menu placement RightTop with specific width
     * @tc.type FUNC
     * @tc.require I7QZ3Q
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0760', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/popupbox_menu/menuPlacement08");
      await driver.waitForIdle(500, 2000);

      try {
        console.info('TEST_0760: 开始查找Button组件');
        let buttonComponent: Component = await driver.waitForComponent(ON.id('button_08'), 1000);
        console.info('TEST_0760: 成功找到Button组件');

        await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0760');
        await Utils.sleep(1000);

        console.info('TEST_0760: 测试用例执行成功');
        done();
      } catch (error) {
        console.error('TEST_0760: 测试用例执行失败 - ' + JSON.stringify(error));
        console.error('TEST_0760: 错误堆栈: ' + error.message);
        expect().assertFail();
      }
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_1770
     * @tc.name Menu with submenu placement BottomLeft
     * @tc.desc Test menu with submenu placement BottomLeft
     * @tc.type FUNC
     * @tc.require I7QZ3Q
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_1770', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/popupbox_menu/menuPlacement09");
      await driver.waitForIdle(500, 2000);

      try {
        console.info('TEST_1770: 开始查找Button组件');
        let buttonComponent: Component = await driver.waitForComponent(ON.id('button_09'), 1000);
        console.info('TEST_1770: 成功找到Button组件');

        await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_1770');
        await Utils.sleep(1000);

        console.info('TEST_1770: 测试用例执行成功');
        done();
      } catch (error) {
        console.error('TEST_1770: 测试用例执行失败 - ' + JSON.stringify(error));
        console.error('TEST_1770: 错误堆栈: ' + error.message);
        expect().assertFail();
      }
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0610
     * @tc.name Menu placement TopLeft with width 64vp
     * @tc.desc Test menu placement TopLeft with specific width
     * @tc.type FUNC
     * @tc.require I7QZ3Q
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0610', Level.LEVEL3, async (done: Function) => {
      let driver: Driver = Driver.create();
      Settings.createWindow("testability/pages/popupbox_menu/menuPlacement10");
      await driver.waitForIdle(500, 2000);

      try {
        console.info('TEST_0610: 开始查找Button组件');
        let buttonComponent: Component = await driver.waitForComponent(ON.id('button_10'), 1000);
        console.info('TEST_0610: 成功找到Button组件');

        await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_WIDTHANDPLACEMENTCONFORMUX_0610');
        await Utils.sleep(1000);

        console.info('TEST_0610: 测试用例执行成功');
        done();
      } catch (error) {
        console.error('TEST_0610: 测试用例执行失败 - ' + JSON.stringify(error));
        console.error('TEST_0610: 错误堆栈: ' + error.message);
        expect().assertFail();
      }
    });
  });
}
