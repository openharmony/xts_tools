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

export default function UiComponentCalendarPickerBorder() {
  describe('UiComponentCalendarPickerBorder', () => {

    afterEach(async () => {
      if (Settings.windowClass) {
        await Settings.destroyWindow(Settings.windowClass);
      }
    });

    /**
     * 用例ID: ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0110
     * 用例描述: CalendarPicker border异常值测试
     * 自动化程度: 80%
     * 说明: 截图验证边框样式，需手动观察边框宽度
     */
    it('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0110', 0, async () => {
      Logger.info('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0110 begin');
      await Settings.createWindow('testability/pages/UiComponentCalendarPickerBorder/CalendarPickerBorder0110');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('CalendarPickerBorder0110_1_Initial');
      
      const calendarPicker = await driver.findComponent(ON.id('CalendarPickerBorder0110_Component'));
      if (calendarPicker) {
        await calendarPicker.click();
        Logger.info('CalendarPicker clicked - dialog opened');
        await driver.delayMs(2000);
        await windowSnap.snapShot('CalendarPickerBorder0110_2_DialogOpen');
        
        // 关闭日历对话框
        await driver.pressBack();
        await driver.delayMs(500);
      }
      
      Logger.info('ARKUI_COMPONENTFUNCTION_SPECIALCOMPONENTS_DIALOG_SPECIFICATIONS_UI_0110 end');
      Logger.info('Manual verification: Check border styles - top: 2vp, others: 1vp (default)');
    });
  });
}

