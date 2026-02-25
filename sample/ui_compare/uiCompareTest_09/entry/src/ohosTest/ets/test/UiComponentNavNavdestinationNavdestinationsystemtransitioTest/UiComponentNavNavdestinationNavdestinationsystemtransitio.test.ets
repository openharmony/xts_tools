/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import Settings from '../../test/model/Settings';
import windowSnap from '../../test/model/snapShot';
import { Driver, ON, Component } from '@ohos.UiTest';
import Logger from '../../test/model/Logger';

export default function UiComponentNavNavdestinationNavdestinationsystemtransitio() {
  describe('UiComponentNavNavdestinationNavdestinationsystemtransitio', () => {
    let driver: Driver = Driver.create();

    afterEach(async () => {
      if (Settings.windowClass) {
        await Settings.destroyWindow(Settings.windowClass);
        Settings.windowClass = undefined;
      }
      await driver.delayMs(2000);
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0010
     * @tc.name: Navigation自定义转场动画能力增强（正常值测试）
     * @tc.desc: 测试DEFAULT/NONE/TITLE/CONTENT转场类型
     */
    it('testNavdestinationSystemtransitio0010', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0010');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      let btnPageOne: Component = await driver.findComponent(ON.id('btn_push_pageOne'));
      expect(btnPageOne !== null).assertTrue();
      await btnPageOne.click();
      await driver.delayMs(1000);

      let btnPageTwo: Component = await driver.findComponent(ON.id('btn_push_pageTwo'));
      expect(btnPageTwo !== null).assertTrue();
      await btnPageTwo.click();
      await driver.delayMs(1000);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0020
     * @tc.name: Navigation自定义转场动画能力增强（异常值测试）
     * @tc.desc: 测试undefined/null转场类型
     */
    it('testNavdestinationSystemtransitio0020', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0020');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      let btnPageNine: Component = await driver.findComponent(ON.id('btn_push_pageNine'));
      expect(btnPageNine !== null).assertTrue();
      await btnPageNine.click();
      await driver.delayMs(1000);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0030
     * @tc.name: Navigation自定义转场动画能力增强（push接口测试）
     * @tc.desc: 测试pushPath/pushPathByName/pushDestination等接口
     */
    it('testNavdestinationSystemtransitio0030', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0030');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      let btnPushPath: Component = await driver.findComponent(ON.id('btn_pushPath_pageThree'));
      expect(btnPushPath !== null).assertTrue();
      await btnPushPath.click();
      await driver.delayMs(1000);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0040
     * @tc.name: Navigation自定义转场动画能力增强（push接口测试，带有页面栈的操作模式）
     * @tc.desc: 测试MOVE_TO_TOP_SINGLETON/POP_TO_SINGLETON模式
     */
    it('testNavdestinationSystemtransitio0040', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0040');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      let btnPush: Component = await driver.findComponent(ON.id('btn_push_pageThree'));
      expect(btnPush !== null).assertTrue();
      await btnPush.click();
      await driver.delayMs(1000);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0050
     * @tc.name: Navigation自定义转场动画能力增强（replace接口）
     * @tc.desc: 测试replacePath/replacePathByName接口
     */
    it('testNavdestinationSystemtransitio0050', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0050');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      let btnPush: Component = await driver.findComponent(ON.id('btn_push_pageOne'));
      expect(btnPush !== null).assertTrue();
      await btnPush.click();
      await driver.delayMs(1000);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0060
     * @tc.name: Navigation自定义转场动画能力增强（replace接口，带有页面栈的操作模式）
     * @tc.desc: 测试replace + MOVE_TO_TOP_SINGLETON等模式
     */
    it('testNavdestinationSystemtransitio0060', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0060');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0070
     * @tc.name: Navigation自定义转场动画能力增强（pop、popToName接口）
     * @tc.desc: 测试pop/popToName接口转场动画
     */
    it('testNavdestinationSystemtransitio0070', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0070');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      let btnPush: Component = await driver.findComponent(ON.id('btn_push_pageThree'));
      expect(btnPush !== null).assertTrue();
      await btnPush.click();
      await driver.delayMs(1000);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0080
     * @tc.name: Navigation自定义转场动画能力增强（popToIndex接口）
     * @tc.desc: 测试popToIndex接口转场动画
     */
    it('testNavdestinationSystemtransitio0080', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0080');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0090
     * @tc.name: Navigation自定义转场动画能力增强（remove接口）
     * @tc.desc: 测试remove相关接口转场动画
     */
    it('testNavdestinationSystemtransitio0090', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0090');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0100
     * @tc.name: Navigation自定义转场动画能力增强（clear接口）
     * @tc.desc: 测试clear接口转场动画
     */
    it('testNavdestinationSystemtransitio0100', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0100');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      let btnClear: Component = await driver.findComponent(ON.id('btn_clear'));
      expect(btnClear !== null).assertTrue();
      await btnClear.click();
      await driver.delayMs(1000);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0110
     * @tc.name: Navigation自定义转场动画能力增强（move接口）
     * @tc.desc: 测试moveToTop/moveIndexToTop接口
     */
    it('testNavdestinationSystemtransitio0110', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0110');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0120
     * @tc.name: Navigation自定义转场动画能力增强（横竖屏切换场景）
     * @tc.desc: 测试横竖屏切换时的转场动画 - 需要手动切换屏幕方向
     */
    it('testNavdestinationSystemtransitio0120', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0120');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0130
     * @tc.name: Navigation自定义转场动画能力增强（DIALOG页面场景）
     * @tc.desc: 测试DIALOG类型页面转场动画
     */
    it('testNavdestinationSystemtransitio0130', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0130');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      let btnLandscape: Component = await driver.findComponent(ON.id('btn_landscape'));
      expect(btnLandscape !== null).assertTrue();
      await btnLandscape.click();
      await driver.delayMs(500);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0140
     * @tc.name: Navigation自定义转场动画能力增强（DIALOG+STANDARD场景）
     * @tc.desc: 测试DIALOG和STANDARD混合页面场景
     */
    it('testNavdestinationSystemtransitio0140', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0140');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0150
     * @tc.name: Navigation自定义转场动画能力增强（DIALOG+STANDARD moveToTop场景）
     * @tc.desc: 测试DIALOG和STANDARD混合 + moveToTop场景
     */
    it('testNavdestinationSystemtransitio0150', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0150');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0160
     * @tc.name: Navigation自定义转场动画能力增强（单双栏切换场景）
     * @tc.desc: 测试Stack/Split模式切换场景
     */
    it('testNavdestinationSystemtransitio0160', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0160');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      let btnMode: Component = await driver.findComponent(ON.id('btn_nav_mode'));
      expect(btnMode !== null).assertTrue();
      await btnMode.click();
      await driver.delayMs(500);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0170
     * @tc.name: Navigation自定义转场动画能力增强（子窗口场景）
     * @tc.desc: 测试子窗口中的转场动画
     */
    it('testNavdestinationSystemtransitio0170', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0170');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      let btnSub: Component = await driver.findComponent(ON.id('btn_sub_window'));
      expect(btnSub !== null).assertTrue();
      await btnSub.click();
      await driver.delayMs(500);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0180
     * @tc.name: Navigation自定义转场动画能力增强（NavDestination隐藏标题栏场景）
     * @tc.desc: 测试hideTitle=true时的转场动画
     */
    it('testNavdestinationSystemtransitio0180', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0180');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      let btnPush: Component = await driver.findComponent(ON.id('btn_push_page11'));
      expect(btnPush !== null).assertTrue();
      await btnPush.click();
      await driver.delayMs(1000);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0190
     * @tc.name: Navigation自定义转场动画能力增强（navBarPosition场景）
     * @tc.desc: 测试navBarPosition: Start/End场景
     */
    it('testNavdestinationSystemtransitio0190', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0190');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0200
     * @tc.name: Navigation自定义转场动画能力增强（镜像场景）
     * @tc.desc: 测试RTL语言环境下的转场动画 - 需要手动切换系统语言
     */
    it('testNavdestinationSystemtransitio0200', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0200');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0210
     * @tc.name: Navigation自定义转场动画能力增强（disableAnimation场景）
     * @tc.desc: 测试disableAnimation=true时禁用转场动画
     */
    it('testNavdestinationSystemtransitio0210', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0210');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      let btnDisable: Component = await driver.findComponent(ON.id('btn_disable_animation'));
      expect(btnDisable !== null).assertTrue();
      await btnDisable.click();
      await driver.delayMs(500);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0220
     * @tc.name: Navigation自定义转场动画能力增强（animated场景）
     * @tc.desc: 测试animated=false时禁用转场动画
     */
    it('testNavdestinationSystemtransitio0220', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0220');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0230
     * @tc.name: Navigation自定义转场动画能力增强（NavPathStack操作开发者自定义场景）
     * @tc.desc: 测试开发者自定义NavPathStack操作
     */
    it('testNavdestinationSystemtransitio0230', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0230');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_custom_nav'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0240
     * @tc.name: Navigation自定义转场动画能力增强（调用queryNavigationInfo场景）
     * @tc.desc: 测试queryNavigationInfo场景下的转场动画
     */
    it('testNavdestinationSystemtransitio0240', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0240');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_query_nav'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0250
     * @tc.name: Navigation自定义转场动画能力增强（调用OnReady场景）
     * @tc.desc: 测试OnReady回调中的转场动画
     */
    it('testNavdestinationSystemtransitio0250', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0250');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_onready_test'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0260
     * @tc.name: Navigation自定义转场动画能力增强（自定义动画场景）
     * @tc.desc: 测试自定义动画优先级
     */
    it('testNavdestinationSystemtransitio0260', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0260');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      let btnPush: Component = await driver.findComponent(ON.id('btn_push_page12'));
      expect(btnPush !== null).assertTrue();
      await btnPush.click();
      await driver.delayMs(1000);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0280
     * @tc.name: Navigation自定义转场动画能力增强（跳转HSP场景）
     * @tc.desc: 测试跳转HSP模块页面的转场动画
     */
    it('testNavdestinationSystemtransitio0280', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0280');
      await driver.delayMs(2000);

      let btnTest6: Component = await driver.findComponent(ON.id('btn_test6'));
      expect(btnTest6 !== null).assertTrue();
      await btnTest6.click();
      await driver.delayMs(500);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0290
     * @tc.name: Navigation自定义转场动画能力增强（跳转HAR场景）
     * @tc.desc: 测试跳转HAR模块页面的转场动画
     */
    it('testNavdestinationSystemtransitio0290', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0290');
      await driver.delayMs(2000);

      let btnTest6: Component = await driver.findComponent(ON.id('btn_test6'));
      expect(btnTest6 !== null).assertTrue();
      await btnTest6.click();
      await driver.delayMs(500);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0300
     * @tc.name: Navigation自定义转场动画能力增强（一次push DIALOG+STANDARD页面场景）
     * @tc.desc: 测试一次push多个DIALOG+STANDARD页面
     */
    it('testNavdestinationSystemtransitio0300', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0300');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      let btnPush: Component = await driver.findComponent(ON.id('btn_push_sd_content'));
      expect(btnPush !== null).assertTrue();
      await btnPush.click();
      await driver.delayMs(1000);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0310
     * @tc.name: Navigation自定义转场动画能力增强（一次push DIALOG页面场景）
     * @tc.desc: 测试一次push多个DIALOG页面
     */
    it('testNavdestinationSystemtransitio0310', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0310');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      let btnPush: Component = await driver.findComponent(ON.id('btn_push_dialogs'));
      expect(btnPush !== null).assertTrue();
      await btnPush.click();
      await driver.delayMs(1000);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0320
     * @tc.name: Navigation自定义转场动画能力增强（一次push STANDARD页面场景）
     * @tc.desc: 测试一次push多个STANDARD页面
     */
    it('testNavdestinationSystemtransitio0320', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0320');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      let btnPush: Component = await driver.findComponent(ON.id('btn_push_standards'));
      expect(btnPush !== null).assertTrue();
      await btnPush.click();
      await driver.delayMs(1000);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0330
     * @tc.name: Navigation自定义转场动画能力增强（一次push STANDARD页面异常值场景）
     * @tc.desc: 测试STANDARD页面异常TransitionType值
     */
    it('testNavdestinationSystemtransitio0330', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0330');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      let btnPush: Component = await driver.findComponent(ON.id('btn_push_abnormal_standard'));
      expect(btnPush !== null).assertTrue();
      await btnPush.click();
      await driver.delayMs(1000);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });

    /**
     * @tc.number: SUB_ACE_UI_COMPONENT_NAV_NAVDESTINATION_NAVDESTINATIONSYSTEMTRANSITIO_0340
     * @tc.name: Navigation自定义转场动画能力增强（一次push DIALOG页面异常值场景）
     * @tc.desc: 测试DIALOG页面异常TransitionType值
     */
    it('testNavdestinationSystemtransitio0340', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentNavNavdestinationNavdestinationsystemtransitio/NavdestinationSystemtransitio0340');
      await driver.delayMs(2000);

      let btnNav: Component = await driver.findComponent(ON.id('btn_nav_transition'));
      expect(btnNav !== null).assertTrue();
      await btnNav.click();
      await driver.delayMs(500);

      let btnPush: Component = await driver.findComponent(ON.id('btn_push_abnormal_dialog'));
      expect(btnPush !== null).assertTrue();
      await btnPush.click();
      await driver.delayMs(1000);

      await windowSnap.snapShot();
      await driver.delayMs(1000);
      done();
    });
  });
}

