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

import { describe, it, afterEach } from '@ohos/hypium';
import { Driver, ON } from '@ohos.UiTest';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';

export default function UiComponentMenuMirrorImageTest() {
  describe('UiComponentMenuMirrorImageTest', () => {
    afterEach(async () => {
      if (Settings.windowClass) {
        await Settings.destroyWindow(Settings.windowClass);
      }
    });

    /**
     * 用例ID: ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0010
     * 用例描述: bindContextMenu首次渲染：简体中文+Auto
     * 自动化程度: 70%（长按可自动化，右键和镜像效果需手动验证）
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0010', 0, async () => {
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0010 begin');
      await Settings.createWindow('testability/pages/UiComponentMenuMirrorImage/MenuMirrorImage0010');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('MenuMirrorImage0010_1_Initial');
      
      // 测试长按触发菜单
      const longPressButton = await driver.findComponent(ON.id('MenuMirrorImage0010_LongPressButton'));
      if (longPressButton) {
        await longPressButton.longClick();
        Logger.info('Long press button clicked, context menu should show');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0010_2_LongPressMenu');
        
        // 点击蒙层关闭菜单
        await driver.click(500, 100);
        await driver.delayMs(500);
      }
      
      // 测试自定义内容
      const customButton = await driver.findComponent(ON.id('MenuMirrorImage0010_CustomButton'));
      if (customButton) {
        await customButton.longClick();
        Logger.info('Custom content button long clicked');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0010_3_CustomContent');
        
        // 点击蒙层关闭
        await driver.click(500, 100);
        await driver.delayMs(500);
      }
      
      // 测试验证属性
      const attributeButton = await driver.findComponent(ON.id('MenuMirrorImage0010_AttributeButton'));
      if (attributeButton) {
        await attributeButton.longClick();
        Logger.info('Attribute button long clicked');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0010_4_Attributes');
      }
      
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0010 end');
      Logger.info('MANUAL TEST REQUIRED: Right-click button, verify Ltr layout');
    });

    /**
     * 用例ID: ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0020
     * 用例描述: bindContextMenu首次渲染：简体中文+Ltr
     * 自动化程度: 70%
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0020', 0, async () => {
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0020 begin');
      await Settings.createWindow('testability/pages/UiComponentMenuMirrorImage/MenuMirrorImage0020');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('MenuMirrorImage0020_1_Initial');
      
      // 测试长按触发菜单
      const longPressButton = await driver.findComponent(ON.id('MenuMirrorImage0020_LongPressButton'));
      if (longPressButton) {
        await longPressButton.longClick();
        Logger.info('Long press button clicked, menu with Ltr direction');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0020_2_LongPressMenu_Ltr');
        
        await driver.click(500, 100);
        await driver.delayMs(500);
      }
      
      // 测试自定义内容
      const customButton = await driver.findComponent(ON.id('MenuMirrorImage0020_CustomButton'));
      if (customButton) {
        await customButton.longClick();
        Logger.info('Custom content button long clicked');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0020_3_CustomContent');
        
        await driver.click(500, 100);
        await driver.delayMs(500);
      }
      
      // 测试验证属性
      const attributeButton = await driver.findComponent(ON.id('MenuMirrorImage0020_AttributeButton'));
      if (attributeButton) {
        await attributeButton.longClick();
        Logger.info('Attribute button long clicked');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0020_4_Attributes');
      }
      
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0020 end');
      Logger.info('MANUAL TEST REQUIRED: Right-click button, verify Ltr layout');
    });

    /**
     * 用例ID: ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0030
     * 用例描述: bindContextMenu首次渲染：简体中文+Rtl
     * 自动化程度: 70%
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0030', 0, async () => {
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0030 begin');
      await Settings.createWindow('testability/pages/UiComponentMenuMirrorImage/MenuMirrorImage0030');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('MenuMirrorImage0030_1_Initial');
      
      // 测试长按触发菜单（Rtl布局）
      const longPressButton = await driver.findComponent(ON.id('MenuMirrorImage0030_LongPressButton'));
      if (longPressButton) {
        await longPressButton.longClick();
        Logger.info('Long press button clicked, menu with Rtl direction (mirrored)');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0030_2_LongPressMenu_Rtl');
        
        await driver.click(500, 100);
        await driver.delayMs(500);
      }
      
      // 测试自定义内容（不支持镜像）
      const customButton = await driver.findComponent(ON.id('MenuMirrorImage0030_CustomButton'));
      if (customButton) {
        await customButton.longClick();
        Logger.info('Custom content button long clicked (should not mirror)');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0030_3_CustomContent_NoMirror');
        
        await driver.click(500, 100);
        await driver.delayMs(500);
      }
      
      // 测试验证属性
      const attributeButton = await driver.findComponent(ON.id('MenuMirrorImage0030_AttributeButton'));
      if (attributeButton) {
        await attributeButton.longClick();
        Logger.info('Attribute button long clicked');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0030_4_Attributes_Rtl');
      }
      
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0030 end');
      Logger.info('MANUAL TEST REQUIRED: Right-click button, verify Rtl layout (mirrored)');
    });

    /**
     * 用例ID: ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0040
     * 用例描述: bindContextMenu首次渲染：简体中文+undefined
     * 自动化程度: 70%
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0040', 0, async () => {
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0040 begin');
      await Settings.createWindow('testability/pages/UiComponentMenuMirrorImage/MenuMirrorImage0040');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('MenuMirrorImage0040_1_Initial');
      
      // 测试长按触发菜单
      const longPressButton = await driver.findComponent(ON.id('MenuMirrorImage0040_LongPressButton'));
      if (longPressButton) {
        await longPressButton.longClick();
        Logger.info('Long press button clicked, menu with undefined direction (default)');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0040_2_LongPressMenu_Undefined');
        
        await driver.click(500, 100);
        await driver.delayMs(500);
      }
      
      // 测试自定义内容
      const customButton = await driver.findComponent(ON.id('MenuMirrorImage0040_CustomButton'));
      if (customButton) {
        await customButton.longClick();
        Logger.info('Custom content button long clicked');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0040_3_CustomContent');
        
        await driver.click(500, 100);
        await driver.delayMs(500);
      }
      
      // 测试验证属性
      const attributeButton = await driver.findComponent(ON.id('MenuMirrorImage0040_AttributeButton'));
      if (attributeButton) {
        await attributeButton.longClick();
        Logger.info('Attribute button long clicked');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0040_4_Attributes');
      }
      
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0040 end');
      Logger.info('MANUAL TEST REQUIRED: Right-click button, verify default Ltr layout');
    });

    /**
     * 用例ID: ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0050
     * 用例描述: bindContextMenu首次渲染：繁体中文+Auto
     * 自动化程度: 70%
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0050', 0, async () => {
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0050 begin');
      await Settings.createWindow('testability/pages/UiComponentMenuMirrorImage/MenuMirrorImage0050');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('MenuMirrorImage0050_1_Initial');
      
      const longPressButton = await driver.findComponent(ON.id('MenuMirrorImage0050_LongPressButton'));
      if (longPressButton) {
        await longPressButton.longClick();
        Logger.info('TraditionalChinese + Auto test');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0050_2_MenuOpen');
        await driver.click(500, 100);
      }
      
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0050 end');
    });

    /**
     * 用例ID: ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0060
     * 用例描述: bindContextMenu首次渲染：繁体中文+Ltr
     * 自动化程度: 70%
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0060', 0, async () => {
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0060 begin');
      await Settings.createWindow('testability/pages/UiComponentMenuMirrorImage/MenuMirrorImage0060');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('MenuMirrorImage0060_1_Initial');
      
      const longPressButton = await driver.findComponent(ON.id('MenuMirrorImage0060_LongPressButton'));
      if (longPressButton) {
        await longPressButton.longClick();
        Logger.info('TraditionalChinese + Ltr test');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0060_2_MenuOpen');
        await driver.click(500, 100);
      }
      
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0060 end');
    });

    /**
     * 用例ID: ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0080
     * 用例描述: bindContextMenu首次渲染：繁体中文+undefined
     * 自动化程度: 70%
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0080', 0, async () => {
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0080 begin');
      await Settings.createWindow('testability/pages/UiComponentMenuMirrorImage/MenuMirrorImage0080');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('MenuMirrorImage0080_1_Initial');
      
      const longPressButton = await driver.findComponent(ON.id('MenuMirrorImage0080_LongPressButton'));
      if (longPressButton) {
        await longPressButton.longClick();
        Logger.info('TraditionalChinese + undefined test');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0080_2_MenuOpen');
        await driver.click(500, 100);
      }
      
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0080 end');
    });

    /**
     * 用例ID: ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0090
     * 用例描述: bindContextMenu首次渲染：英语+Auto
     * 自动化程度: 70%
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0090', 0, async () => {
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0090 begin');
      await Settings.createWindow('testability/pages/UiComponentMenuMirrorImage/MenuMirrorImage0090');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('MenuMirrorImage0090_1_Initial');
      
      const longPressButton = await driver.findComponent(ON.id('MenuMirrorImage0090_LongPressButton'));
      if (longPressButton) {
        await longPressButton.longClick();
        Logger.info('English + Auto test');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0090_2_MenuOpen');
        await driver.click(500, 100);
      }
      
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0090 end');
    });

    /**
     * 用例ID: ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0100
     * 用例描述: bindContextMenu首次渲染：英语+Ltr
     * 自动化程度: 70%
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0100', 0, async () => {
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0100 begin');
      await Settings.createWindow('testability/pages/UiComponentMenuMirrorImage/MenuMirrorImage0100');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('MenuMirrorImage0100_1_Initial');
      
      const longPressButton = await driver.findComponent(ON.id('MenuMirrorImage0100_LongPressButton'));
      if (longPressButton) {
        await longPressButton.longClick();
        Logger.info('English + Ltr test');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0100_2_MenuOpen');
        await driver.click(500, 100);
      }
      
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0100 end');
    });

    /**
     * 用例ID: ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0110
     * 用例描述: bindContextMenu首次渲染：英语+Rtl
     * 自动化程度: 70%
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0110', 0, async () => {
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0110 begin');
      await Settings.createWindow('testability/pages/UiComponentMenuMirrorImage/MenuMirrorImage0110');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('MenuMirrorImage0110_1_Initial');
      
      const longPressButton = await driver.findComponent(ON.id('MenuMirrorImage0110_LongPressButton'));
      if (longPressButton) {
        await longPressButton.longClick();
        Logger.info('English + Rtl test (mirrored)');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0110_2_MenuOpen_Rtl');
        await driver.click(500, 100);
      }
      
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0110 end');
    });

    /**
     * 用例ID: ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0130
     * 用例描述: bindContextMenu首次渲染：藏文+Auto
     * 自动化程度: 70%
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0130', 0, async () => {
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0130 begin');
      await Settings.createWindow('testability/pages/UiComponentMenuMirrorImage/MenuMirrorImage0130');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('MenuMirrorImage0130_1_Initial');
      
      const longPressButton = await driver.findComponent(ON.id('MenuMirrorImage0130_LongPressButton'));
      if (longPressButton) {
        await longPressButton.longClick();
        Logger.info('Tibetan + Auto test');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0130_2_MenuOpen');
        await driver.click(500, 100);
      }
      
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0130 end');
    });

    /**
     * 用例ID: ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0140
     * 用例描述: bindContextMenu首次渲染：藏文+Ltr
     * 自动化程度: 70%
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0140', 0, async () => {
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0140 begin');
      await Settings.createWindow('testability/pages/UiComponentMenuMirrorImage/MenuMirrorImage0140');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('MenuMirrorImage0140_1_Initial');
      
      const longPressButton = await driver.findComponent(ON.id('MenuMirrorImage0140_LongPressButton'));
      if (longPressButton) {
        await longPressButton.longClick();
        Logger.info('Tibetan + Ltr test');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0140_2_MenuOpen');
        await driver.click(500, 100);
      }
      
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0140 end');
    });

    /**
     * 用例ID: ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0150
     * 用例描述: bindContextMenu首次渲染：藏文+Rtl
     * 自动化程度: 70%
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0150', 0, async () => {
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0150 begin');
      await Settings.createWindow('testability/pages/UiComponentMenuMirrorImage/MenuMirrorImage0150');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('MenuMirrorImage0150_1_Initial');
      
      const longPressButton = await driver.findComponent(ON.id('MenuMirrorImage0150_LongPressButton'));
      if (longPressButton) {
        await longPressButton.longClick();
        Logger.info('Tibetan + Rtl test (mirrored)');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0150_2_MenuOpen_Rtl');
        await driver.click(500, 100);
      }
      
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0150 end');
    });

    /**
     * 用例ID: ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0160
     * 用例描述: bindContextMenu首次渲染：藏文+undefined
     * 自动化程度: 70%
     */
    it('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0160', 0, async () => {
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0160 begin');
      await Settings.createWindow('testability/pages/UiComponentMenuMirrorImage/MenuMirrorImage0160');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('MenuMirrorImage0160_1_Initial');
      
      const longPressButton = await driver.findComponent(ON.id('MenuMirrorImage0160_LongPressButton'));
      if (longPressButton) {
        await longPressButton.longClick();
        Logger.info('Tibetan + undefined test');
        await driver.delayMs(1500);
        await windowSnap.snapShot('MenuMirrorImage0160_2_MenuOpen');
        await driver.click(500, 100);
      }
      
      Logger.info('ARKUI_COMPONENTFUNCTION_COMMOMATTRIBUTES_MENU_MIRRORIMAG_0160 end');
    });
  });
}

