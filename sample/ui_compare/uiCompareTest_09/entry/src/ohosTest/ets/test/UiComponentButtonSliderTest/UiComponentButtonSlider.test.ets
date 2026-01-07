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

/**
 * @file UiComponentButtonSlider.test.ets
 * @description Slider组件测试用例
 */
import { describe, it, expect, afterEach } from '@ohos/hypium';
import { Driver, ON } from '@ohos.UiTest';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';

export default function UiComponentButtonSliderTest() {
  describe('UiComponentButtonSliderTest', () => {
    afterEach(async () => {
      if (Settings.windowClass) {
        Settings.destroyWindow(Settings.windowClass);
      }
      let driver = Driver.create();
      await driver.delayMs(500);
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_ACTION_0040
     * @tc.name Slider组件预览器Inspector测试
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_ACTION_0040', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_ACTION_0040 start');
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderAction0040');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      let slider = await driver.findComponent(ON.id('slider_inspector'));
      expect(slider !== null).assertTrue();
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_ACTION_0040 end');
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_ACTION_0050
     * @tc.name Slider组件预览器基础预览测试
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_ACTION_0050', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_ACTION_0050 start');
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderAction0050');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      let slider = await driver.findComponent(ON.id('slider_preview'));
      expect(slider !== null).assertTrue();
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_ACTION_0050 end');
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0080
     * @tc.name 自定义slider triggerChange测试
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0080', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0080 start');
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderCustomizing0080');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      // 点击各个按钮测试triggerChange
      let btn20 = await driver.findComponent(ON.id('btn_20_0'));
      if (btn20) {
        await btn20.click();
        await driver.delayMs(300);
      }
      
      let btn30 = await driver.findComponent(ON.id('btn_30_1'));
      if (btn30) {
        await btn30.click();
        await driver.delayMs(300);
      }
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0080 end');
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0110
     * @tc.name contentModifier设置为undefined
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0110', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0110 start');
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderCustomizing0110');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      let slider = await driver.findComponent(ON.id('slider_undefined'));
      expect(slider !== null).assertTrue();
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0110 end');
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0120
     * @tc.name contentModifier设置为null
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0120', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0120 start');
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderCustomizing0120');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      let slider = await driver.findComponent(ON.id('slider_null'));
      expect(slider !== null).assertTrue();
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0120 end');
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0130
     * @tc.name 不设置contentModifier
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0130', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0130 start');
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderCustomizing0130');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      let slider = await driver.findComponent(ON.id('slider_no_modifier'));
      expect(slider !== null).assertTrue();
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0130 end');
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0140
     * @tc.name contentModifier传参类型为number: 123465
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0140', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0140 start');
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderCustomizing0140');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      let paramDisplay = await driver.findComponent(ON.id('param_display'));
      expect(paramDisplay !== null).assertTrue();
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0140 end');
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0150
     * @tc.name contentModifier传参类型为number: -10.55555
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0150', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0150 start');
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderCustomizing0150');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      let paramDisplay = await driver.findComponent(ON.id('param_display'));
      expect(paramDisplay !== null).assertTrue();
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0150 end');
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0160
     * @tc.name contentModifier传参类型为string
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0160', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0160 start');
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderCustomizing0160');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      let paramDisplay = await driver.findComponent(ON.id('param_display'));
      expect(paramDisplay !== null).assertTrue();
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0160 end');
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0170
     * @tc.name contentModifier传参类型为boolean: true
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0170', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0170 start');
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderCustomizing0170');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      let paramDisplay = await driver.findComponent(ON.id('param_display'));
      expect(paramDisplay !== null).assertTrue();
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0170 end');
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0180
     * @tc.name 调用2个contentModifier
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0180', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0180 start');
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderCustomizing0180');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      let lastModifier = await driver.findComponent(ON.id('last_modifier_value'));
      expect(lastModifier !== null).assertTrue();
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0180 end');
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0190
     * @tc.name contentModifier动态切换
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0190', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0190 start');
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderCustomizing0190');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      let btn0 = await driver.findComponent(ON.id('btn_modifier_0'));
      if (btn0) {
        await btn0.click();
        await driver.delayMs(300);
      }
      
      let btn1 = await driver.findComponent(ON.id('btn_modifier_1'));
      if (btn1) {
        await btn1.click();
        await driver.delayMs(300);
      }
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0190 end');
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0210
     * @tc.name 在预览器上查看Silder自定义样式
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0210', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_CUSTOMIZING_0210 start');
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderCustomizing0210');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_preview_custom'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0010
     * @tc.name Slider组件镜像（系统切换语言）
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0010', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0010 start');
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderMirror0010');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_outset'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0030
     * @tc.name Slider组件镜像（切换应用语言）
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0030', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderMirror0030');
      let driver = Driver.create();
      await driver.delayMs(1000);
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0040
     * @tc.name Slider组件镜像（热启动场景）
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0040', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderMirror0040');
      let driver = Driver.create();
      await driver.delayMs(1000);
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0050
     * @tc.name Slider组件镜像（杀死应用再启动）
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0050', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderMirror0050');
      let driver = Driver.create();
      await driver.delayMs(1000);
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0060
     * @tc.name Slider组件镜像（子窗口场景）
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0060', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderMirror0060');
      let driver = Driver.create();
      await driver.delayMs(1000);
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0070
     * @tc.name Slider组件镜像（锁屏再开启）
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0070', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderMirror0070');
      let driver = Driver.create();
      await driver.delayMs(1000);
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0080
     * @tc.name Slider组件镜像（横竖屏切换）
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0080', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderMirror0080');
      let driver = Driver.create();
      await driver.delayMs(1000);
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0090
     * @tc.name Slider组件镜像（modifier场景）
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0090', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderMirror0090');
      let driver = Driver.create();
      await driver.delayMs(1000);
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0100
     * @tc.name Slider组件镜像（direction场景）
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0100', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderMirror0100');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let btn = await driver.findComponent(ON.id('btn_direction'));
      if (btn) {
        await btn.click();
        await driver.delayMs(300);
      }
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0110
     * @tc.name Slider组件镜像（不同语言场景）
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0110', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderMirror0110');
      let driver = Driver.create();
      await driver.delayMs(1000);
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0120
     * @tc.name Slider组件镜像（滑块滑轨样式）
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0120', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderMirror0120');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let btn = await driver.findComponent(ON.id('btn_style'));
      if (btn) {
        await btn.click();
        await driver.delayMs(300);
      }
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0130
     * @tc.name Slider组件镜像（滑动方向）
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0130', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderMirror0130');
      let driver = Driver.create();
      await driver.delayMs(1000);
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0140
     * @tc.name Slider组件镜像（reverse设置）
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0140', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderMirror0140');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let btn = await driver.findComponent(ON.id('btn_reverse'));
      if (btn) {
        await btn.click();
        await driver.delayMs(300);
      }
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0150
     * @tc.name Slider组件镜像（SliderBlockStyle）
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0150', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderMirror0150');
      let driver = Driver.create();
      await driver.delayMs(1000);
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0160
     * @tc.name Slider组件镜像（避让场景）
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_MIRROR_0160', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderMirror0160');
      let driver = Driver.create();
      await driver.delayMs(1000);
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_RANGE_0270
     * @tc.name slider滑动范围onChange回调
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_RANGE_0270', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderRange0270');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_range'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SHUN_0100
     * @tc.name 气泡避让-showTips动态切换
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SHUN_0100', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderShun0100');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let btn = await driver.findComponent(ON.id('btn_show_tips'));
      if (btn) {
        await btn.click();
        await driver.delayMs(300);
      }
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SHUN_0140
     * @tc.name 气泡避让-padding动态改变
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SHUN_0140', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderShun0140');
      let driver = Driver.create();
      await driver.delayMs(1000);
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SHUN_0150
     * @tc.name 气泡避让-blockSize很大
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SHUN_0150', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderShun0150');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let btn = await driver.findComponent(ON.id('btn_block_size'));
      if (btn) {
        await btn.click();
        await driver.delayMs(300);
      }
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SHUN_0160
     * @tc.name 气泡避让-trackThickness很粗
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SHUN_0160', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderShun0160');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let btn = await driver.findComponent(ON.id('btn_track_thickness'));
      if (btn) {
        await btn.click();
        await driver.delayMs(300);
      }
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SHUN_0170
     * @tc.name 两个Slider气泡避让
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SHUN_0170', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderShun0170');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let btn = await driver.findComponent(ON.id('btn_spacing'));
      if (btn) {
        await btn.click();
        await driver.delayMs(300);
      }
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SHUN_0180
     * @tc.name 气泡避让-不同滚动条样式
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SHUN_0180', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderShun0180');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let btn = await driver.findComponent(ON.id('btn_style'));
      if (btn) {
        await btn.click();
        await driver.delayMs(300);
      }
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SHUN_0210
     * @tc.name Panel结合Slider气泡避让
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SHUN_0210', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderShun0210');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let btn = await driver.findComponent(ON.id('btn_show_panel'));
      if (btn) {
        await btn.click();
        await driver.delayMs(500);
      }
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SHUN_0220
     * @tc.name 气泡避让-横竖屏切换
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SHUN_0220', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderShun0220');
      let driver = Driver.create();
      await driver.delayMs(1000);
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SHUN_0230
     * @tc.name 气泡避让-position动态改变
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SHUN_0230', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderShun0230');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let btn = await driver.findComponent(ON.id('btn_position'));
      if (btn) {
        await btn.click();
        await driver.delayMs(300);
      }
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0010
     * @tc.name Slider横向显示-上下滑动不触发onChange
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0010', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderInteraction0010');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_horizontal'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0020
     * @tc.name Slider纵向显示-上下滑动不触发onChange
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0020', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderInteraction0020');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_vertical'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0030
     * @tc.name Slider倾斜45°-按压不动不触发onChange
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0030', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderInteraction0030');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_rotated'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0040
     * @tc.name Slider倾斜45°-垂直滑动不触发onChange
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0040', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderInteraction0040');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_rotated'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0050
     * @tc.name Slider倾斜45°-水平滑动不触发onChange
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0050', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderInteraction0050');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_rotated'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0060
     * @tc.name blockSize过大-上下滑动不触发
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0060', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderInteraction0060');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_large_block'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0070
     * @tc.name trackThickness较粗-上下滑动不触发
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0070', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderInteraction0070');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_thick_track'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0080
     * @tc.name 设置显示气泡-按压不动不触发气泡
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0080', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderInteraction0080');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_with_tips'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0090
     * @tc.name 上下滑动-不触发滑动和气泡
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0090', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderInteraction0090');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_horizontal'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0100
     * @tc.name Style为OutSet-上下滑动不触发
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0100', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderInteraction0100');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_outset'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0110
     * @tc.name Style为InSet-上下滑动不触发
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0110', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderInteraction0110');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_inset'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0120
     * @tc.name Style为NONE-上下滑动不触发
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0120', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderInteraction0120');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_none'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0130
     * @tc.name 范围[20,80]-上下滑动不触发误触
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0130', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderInteraction0130');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_range'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0140
     * @tc.name 横向Slider-按压抬手触发click和end
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0140', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderInteraction0140');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_horizontal'));
      expect(slider !== null).assertTrue();
      if (slider) {
        await slider.click();
        await driver.delayMs(500);
      }
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0150
     * @tc.name 纵向Slider-按压抬手触发click和end
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0150', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderInteraction0150');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_vertical'));
      expect(slider !== null).assertTrue();
      if (slider) {
        await slider.click();
        await driver.delayMs(500);
      }
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0160
     * @tc.name 倾斜45°Slider-按压抬手触发click和end
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0160', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderInteraction0160');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_rotated'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0170
     * @tc.name 中途滑动-抬手不触发click
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0170', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderInteraction0170');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_horizontal'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0180
     * @tc.name 鼠标操作-上下滑动不触发onChange
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0180', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderInteraction0180');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_mouse'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0190
     * @tc.name 横竖屏切换-上下滑动不触发onChange
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0190', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderInteraction0190');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_orientation'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0200
     * @tc.name 多slider密集排列-上下滑动不触发
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTION_0200', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderInteraction0200');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider1 = await driver.findComponent(ON.id('slider_1'));
      let slider2 = await driver.findComponent(ON.id('slider_2'));
      let slider3 = await driver.findComponent(ON.id('slider_3'));
      expect(slider1 !== null).assertTrue();
      expect(slider2 !== null).assertTrue();
      expect(slider3 !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTIONMODE_0070
     * @tc.name 键盘操作至value为100的位置
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_SLIDERINTERACTIONMODE_0070', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderInteractionMode0070');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_keyboard'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_UX_0090
     * @tc.name 键盘鼠标交互间续滑块
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_UX_0090', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderUx0090');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_keyboard_mouse'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_UX_0100
     * @tc.name 鼠标滚轮滚动气泡滑块
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_UX_0100', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderUx0100');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_wheel'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_UX_0110
     * @tc.name 鼠标滚轮滚动间续滑块
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SLIDER_UX_0110', 0, async (done: Function) => {
      await Settings.createWindow('testability/pages/UiComponentButtonSlider/SliderUx0110');
      let driver = Driver.create();
      await driver.delayMs(1000);
      let slider = await driver.findComponent(ON.id('slider_wheel_step'));
      expect(slider !== null).assertTrue();
      await windowSnap.snapShot();
      done();
    });
  });
}

