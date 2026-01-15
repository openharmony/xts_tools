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

import { describe, it, afterEach } from '@ohos/hypium';
import { Driver, ON } from '@ohos.UiTest';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';

export default function UiComponentTextinputTv() {
  describe('UiComponentTextinputTv', () => {
    const TAG: string = 'UiComponentTextinputTv';
    let driver = Driver.create();

    afterEach(async () => {
      if (Settings.windowClass) {
        await Settings.destroyWindow(Settings.windowClass);
      }
    });

    it('SUB_ACE_UI_COMPONENT_TEXTINPUT_TV_0010', 0, async () => {
      await Settings.createWindow('testability/pages/UiComponentTextinputTv/TextinputTv0010');
      await driver.delayMs(500);
      
      let btn = await driver.findComponent(ON.id('btn'));
      await btn.click();
      await driver.delayMs(1000);
      
      Logger.info(TAG, 'SUB_ACE_UI_COMPONENT_TEXTINPUT_TV_0010: 错误提示文本超长UX检视');
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXTINPUT_TV_0010');
    });

    it('SUB_ACE_UI_COMPONENT_TEXTINPUT_TV_0030', 0, async () => {
      await Settings.createWindow('testability/pages/UiComponentTextinputTv/TextinputTv0030');
      await driver.delayMs(500);
      
      let btn = await driver.findComponent(ON.id('btn'));
      await btn.click();
      await driver.delayMs(1000);
      
      Logger.info(TAG, 'SUB_ACE_UI_COMPONENT_TEXTINPUT_TV_0030: 普通文本输入框hover态UX检视');
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXTINPUT_TV_0030');
    });

    it('SUB_ACE_UI_COMPONENT_TEXTINPUT_TV_0100', 0, async () => {
      await Settings.createWindow('testability/pages/UiComponentTextinputTv/TextinputTv0100');
      await driver.delayMs(500);
      
      let btn = await driver.findComponent(ON.id('btn'));
      await btn.click();
      await driver.delayMs(1000);
      
      Logger.info(TAG, 'SUB_ACE_UI_COMPONENT_TEXTINPUT_TV_0100: 输入框提示文本超长UX检视');
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXTINPUT_TV_0100');
    });

    it('SUB_ACE_UI_COMPONENT_TEXTINPUT_TV_0130', 0, async () => {
      await Settings.createWindow('testability/pages/UiComponentTextinputTv/TextinputTv0130');
      await driver.delayMs(500);
      
      let btn = await driver.findComponent(ON.id('btn'));
      await btn.click();
      await driver.delayMs(1000);
      
      Logger.info(TAG, 'SUB_ACE_UI_COMPONENT_TEXTINPUT_TV_0130: 自定义参数-输入框背板颜色');
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXTINPUT_TV_0130');
    });

    it('SUB_ACE_UI_COMPONENT_TEXTINPUT_TV_0240', 0, async () => {
      await Settings.createWindow('testability/pages/UiComponentTextinputTv/TextinputTv0240');
      await driver.delayMs(500);
      
      let btn = await driver.findComponent(ON.id('btn'));
      await btn.click();
      await driver.delayMs(1000);
      
      Logger.info(TAG, 'SUB_ACE_UI_COMPONENT_TEXTINPUT_TV_0240: 输入法避让测试');
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXTINPUT_TV_0240');
    });

    it('SUB_ACE_UI_COMPONENT_TEXTINPUT_SEARCH_TV_FOCUS_0310', 0, async () => {
      await Settings.createWindow('testability/pages/UiComponentTextinputTv/TextinputTv0310');
      await driver.delayMs(500);
      
      let btn = await driver.findComponent(ON.id('btn'));
      await btn.click();
      await driver.delayMs(500);
      await btn.click();
      await driver.delayMs(500);
      
      Logger.info(TAG, 'SUB_ACE_UI_COMPONENT_TEXTINPUT_SEARCH_TV_FOCUS_0310: 切换镜像语言后走焦功能');
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_TEXTINPUT_SEARCH_TV_FOCUS_0310');
    });

    it('ARKUI_COMPONENTFUNCTION_BASICCONTAINER_FORMSELECTION_TIMEPICKER_LANGUAGEORDER_0010', 0, async () => {
      await Settings.createWindow('testability/pages/UiComponentTextinputTv/TextinputTvTimepicker');
      await driver.delayMs(500);
      
      let btn = await driver.findComponent(ON.id('btn'));
      await btn.click();
      await driver.delayMs(1000);
      
      Logger.info(TAG, 'ARKUI_COMPONENTFUNCTION_BASICCONTAINER_FORMSELECTION_TIMEPICKER_LANGUAGEORDER_0010: TimePicker英文渲染');
      await windowSnap.snapShot('ARKUI_COMPONENTFUNCTION_BASICCONTAINER_FORMSELECTION_TIMEPICKER_LANGUAGEORDER_0010');
    });

    it('SUB_ACE_UI_COMPONENT_SEARCH_TV_0510', 0, async () => {
      await Settings.createWindow('testability/pages/UiComponentTextinputTv/SearchTv0510');
      await driver.delayMs(500);
      
      let btn = await driver.findComponent(ON.id('btn'));
      await btn.click();
      await driver.delayMs(1000);
      
      Logger.info(TAG, 'SUB_ACE_UI_COMPONENT_SEARCH_TV_0510: 搜索框输入法避让测试');
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_SEARCH_TV_0510');
    });

    it('TextInput_Focus_Test', 0, async () => {
      await Settings.createWindow('testability/pages/UiComponentTextinputTv/TextinputFocusTest');
      await driver.delayMs(500);
      
      let btn = await driver.findComponent(ON.id('btn'));
      await btn.click();
      await driver.delayMs(500);
      await btn.click();
      await driver.delayMs(500);
      
      Logger.info(TAG, 'TextInput_Focus_Test: 综合焦点管理测试');
      await windowSnap.snapShot('TextInput_Focus_Test');
    });
  });
}

