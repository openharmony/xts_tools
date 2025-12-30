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

export default function UiComponentCalendarPicker() {
  describe('UiComponentCalendarPicker', () => {
    const TAG: string = 'UiComponentCalendarPicker';
    let driver = Driver.create();

    afterEach(async () => {
      if (Settings.windowClass) {
        await Settings.destroyWindow(Settings.windowClass);
      }
    });

    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_BARRIERFREE_0010', 0, async () => {
      await Settings.createWindow('testability/pages/UiComponentCalendarPicker/CalendarBarrierfree0010');
      await driver.delayMs(500);
      
      let btn = await driver.findComponent(ON.id('btn'));
      await btn.click();
      await driver.delayMs(2000);
      
      Logger.info(TAG, 'SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_BARRIERFREE_0010: CalendarPickerDialog无障碍播报测试');
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_BARRIERFREE_0010');
    });

    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_HABIT_0020', 0, async () => {
      await Settings.createWindow('testability/pages/UiComponentCalendarPicker/CalendarHabit0020');
      await driver.delayMs(500);
      
      let btn = await driver.findComponent(ON.id('btn'));
      await btn.click();
      await driver.delayMs(2000);
      
      Logger.info(TAG, 'SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_HABIT_0020: 简体中文CalendarPickerDialog');
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_HABIT_0020');
    });

    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_HABIT_0160', 0, async () => {
      await Settings.createWindow('testability/pages/UiComponentCalendarPicker/CalendarHabit0160');
      await driver.delayMs(500);
      
      let btn = await driver.findComponent(ON.id('btn'));
      await btn.click();
      await driver.delayMs(2000);
      
      Logger.info(TAG, 'SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_HABIT_0160: 维吾尔语CalendarPickerDialog');
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_HABIT_0160');
    });

    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_HABIT_0300', 0, async () => {
      await Settings.createWindow('testability/pages/UiComponentCalendarPicker/CalendarHabit0300');
      await driver.delayMs(500);
      
      let btn = await driver.findComponent(ON.id('btn'));
      await btn.click();
      await driver.delayMs(2000);
      
      Logger.info(TAG, 'SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_HABIT_0300: 藏语CalendarPickerDialog');
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_HABIT_0300');
    });

    it('ARKUI_COMPONENTFUNCTION_BASICCONTAINER_FORMSELECTION_TIMEPICKER_LANGUAGEORDER_0010_DUPLICATE', 0, async () => {
      await Settings.createWindow('testability/pages/UiComponentCalendarPicker/TimePicker0010');
      await driver.delayMs(500);
      
      let btn = await driver.findComponent(ON.id('btn'));
      await btn.click();
      await driver.delayMs(1000);
      
      Logger.info(TAG, 'TimePicker英文渲染补充测试');
      await windowSnap.snapShot('ARKUI_TIMEPICKER_0010_DUPLICATE');
    });
  });
}

