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
 * @file UiComponentButtonRadio.test.ets
 * @description Radio组件测试用例
 */
import { describe, it, expect, afterEach } from '@ohos/hypium';
import { Driver, ON } from '@ohos.UiTest';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';

export default function UiComponentButtonRadioTest() {
  describe('UiComponentButtonRadioTest', () => {
    afterEach(async () => {
      if (Settings.windowClass) {
        Settings.destroyWindow(Settings.windowClass);
      }
      let driver = Driver.create();
      await driver.delayMs(500);
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0020
     * @tc.name Radio为勾选类型选中，hover态
     * @tc.desc Radio为勾选类型选中，hover态
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0020', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0020 start');
      await Settings.createWindow('testability/pages/UiComponentButtonRadio/RadioCheckmark0020');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      let radio = await driver.findComponent(ON.id('radio_tick_checked_hover'));
      expect(radio !== null).assertTrue();
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0020 end');
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0040
     * @tc.name Radio为勾选类型选中，focus态
     * @tc.desc Radio为勾选类型选中，focus态
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0040', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0040 start');
      await Settings.createWindow('testability/pages/UiComponentButtonRadio/RadioCheckmark0040');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      let radio = await driver.findComponent(ON.id('radio_tick_checked_focus'));
      expect(radio !== null).assertTrue();
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0040 end');
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0070
     * @tc.name Radio为勾选类型未选中，hover态
     * @tc.desc Radio为勾选类型未选中，hover态
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0070', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0070 start');
      await Settings.createWindow('testability/pages/UiComponentButtonRadio/RadioCheckmark0070');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      let radio = await driver.findComponent(ON.id('radio_tick_unchecked_hover'));
      expect(radio !== null).assertTrue();
      
      if (radio) {
        await radio.click();
        await driver.delayMs(300);
      }
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0070 end');
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0090
     * @tc.name Radio为勾选类型未选中，focus态
     * @tc.desc Radio为勾选类型未选中，focus态
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0090', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0090 start');
      await Settings.createWindow('testability/pages/UiComponentButtonRadio/RadioCheckmark0090');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      let radio = await driver.findComponent(ON.id('radio_tick_unchecked_focus'));
      expect(radio !== null).assertTrue();
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0090 end');
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_0190
     * @tc.name 在预览器上查看Radio自定义样式
     * @tc.desc 在预览器上查看Radio自定义样式，预览器显示正常
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_0190', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_0190 start');
      await Settings.createWindow('testability/pages/UiComponentButtonRadio/RadioCustonmizing0190');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      let radio = await driver.findComponent(ON.id('radio_custom_1'));
      expect(radio !== null).assertTrue();
      
      let btnSwitch = await driver.findComponent(ON.id('btn_switch'));
      if (btnSwitch) {
        await btnSwitch.click();
        await driver.delayMs(500);
      }
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CUSTONMIZING_0190 end');
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LAYOUT_0010
     * @tc.name 通用属性内边距设置
     * @tc.desc 通用属性内边距设置
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LAYOUT_0010', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LAYOUT_0010 start');
      await Settings.createWindow('testability/pages/UiComponentButtonRadio/RadioLayout0010');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      let radioNoPadding = await driver.findComponent(ON.id('radio_no_padding'));
      expect(radioNoPadding !== null).assertTrue();
      
      let radioWithPadding = await driver.findComponent(ON.id('radio_with_padding'));
      expect(radioWithPadding !== null).assertTrue();
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LAYOUT_0010 end');
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_016
     * @tc.name indicatorBuilder值设置为image，设置padding为10
     * @tc.desc indicatorBuilder值设置为image，设置padding为10，传入image图片，添加onChange事件回调
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_016', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_016 start');
      await Settings.createWindow('testability/pages/UiComponentButtonRadio/RadioLconic0160');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      let radio = await driver.findComponent(ON.id('radio_image_indicator'));
      expect(radio !== null).assertTrue();
      
      if (radio) {
        await radio.click();
        await driver.delayMs(300);
      }
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_016 end');
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_017
     * @tc.name indicatorBuilder值设置为image，设置margin为10
     * @tc.desc indicatorBuilder值设置为image，设置margin为10，传入image图片，添加onChange事件回调
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_017', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_017 start');
      await Settings.createWindow('testability/pages/UiComponentButtonRadio/RadioLconic0170');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      let radio = await driver.findComponent(ON.id('radio_image_indicator_margin'));
      expect(radio !== null).assertTrue();
      
      if (radio) {
        await radio.click();
        await driver.delayMs(300);
      }
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_017 end');
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_023
     * @tc.name indicatorBuilder值设置为DOT，indicatorColor设为Pink
     * @tc.desc indicatorBuilder值设置为DOT，indicatorColor设为Pink，添加onChange事件回调
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_023', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_023 start');
      await Settings.createWindow('testability/pages/UiComponentButtonRadio/RadioLconic0230');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      let radio = await driver.findComponent(ON.id('radio_dot_pink'));
      expect(radio !== null).assertTrue();
      
      if (radio) {
        await radio.click();
        await driver.delayMs(300);
      }
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_RADIO_LCONIC_023 end');
      done();
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_BUTTON_RADIO_Rtl_0010
     * @tc.name 简体中文时，设置direction为Rtl
     * @tc.desc 简体中文时，设置direction为Rtl，查看radio显示样式
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_Rtl_0010', 0, async (done: Function) => {
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_RADIO_Rtl_0010 start');
      await Settings.createWindow('testability/pages/UiComponentButtonRadio/RadioRtl0010');
      let driver = Driver.create();
      await driver.delayMs(1000);
      
      let radio1 = await driver.findComponent(ON.id('radio_rtl_1'));
      expect(radio1 !== null).assertTrue();
      
      let radio2 = await driver.findComponent(ON.id('radio_rtl_2'));
      expect(radio2 !== null).assertTrue();
      
      if (radio2) {
        await radio2.click();
        await driver.delayMs(300);
      }
      
      await windowSnap.snapShot();
      Logger.info('TEST', 'SUB_ACE_UI_COMPONENT_BUTTON_RADIO_Rtl_0010 end');
      done();
    });
  });
}
