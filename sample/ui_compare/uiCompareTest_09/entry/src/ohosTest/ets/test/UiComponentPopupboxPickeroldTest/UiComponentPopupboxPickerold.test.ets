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

export default function UiComponentPopupboxPickerold() {
  describe('UiComponentPopupboxPickerold', () => {
    afterEach(async () => {
      if (Settings.windowClass) {
        await Settings.destroyWindow(Settings.windowClass);
      }
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_POPUPBOX_PICKEROLD_0030
     * @tc.name Pickerold0030
     * @tc.desc CalendarPickerDialog组件验证宽高保持固定，调整系统字体大小，字体会发生变化
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PICKEROLD_0030', 0, async () => {
      Logger.info('SUB_ACE_UI_COMPONENT_POPUPBOX_PICKEROLD_0030 begin');
      
      await Settings.createWindow('testability/pages/UiComponentPopupboxPickerold/Pickerold0030');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      // 调起CalendarPickerDialog
      const dialogBtn = await driver.findComponent(ON.id('dialogBtn'));
      if (dialogBtn) {
        await dialogBtn.click();
        await driver.delayMs(1000);
        await driver.pressBack();
        await driver.delayMs(500);
      }
      
      await windowSnap.snapShot('POPUPBOX_PICKEROLD_0030');
      
      Logger.info('SUB_ACE_UI_COMPONENT_POPUPBOX_PICKEROLD_0030 end');
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_POPUPBOX_PICKEROLD_0040
     * @tc.name Pickerold0040
     * @tc.desc CalendarPickerDialog组件验证不同档位进行切换有无异常情况
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PICKEROLD_0040', 0, async () => {
      Logger.info('SUB_ACE_UI_COMPONENT_POPUPBOX_PICKEROLD_0040 begin');
      
      await Settings.createWindow('testability/pages/UiComponentPopupboxPickerold/Pickerold0040');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      const dialogBtn = await driver.findComponent(ON.id('dialogBtn'));
      if (dialogBtn) {
        await dialogBtn.click();
        await driver.delayMs(1000);
        await driver.pressBack();
        await driver.delayMs(500);
      }
      
      await windowSnap.snapShot('POPUPBOX_PICKEROLD_0040');
      
      Logger.info('SUB_ACE_UI_COMPONENT_POPUPBOX_PICKEROLD_0040 end');
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_POPUPBOX_PICKEROLD_0050
     * @tc.name Pickerold0050
     * @tc.desc 验证字体大小为小于1.75条件下，系统未给Picker组件进行适老化适配
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PICKEROLD_0050', 0, async () => {
      Logger.info('SUB_ACE_UI_COMPONENT_POPUPBOX_PICKEROLD_0050 begin');
      
      await Settings.createWindow('testability/pages/UiComponentPopupboxPickerold/Pickerold0050');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      const dialogBtn = await driver.findComponent(ON.id('dialogBtn'));
      if (dialogBtn) {
        await dialogBtn.click();
        await driver.delayMs(1000);
        await driver.pressBack();
        await driver.delayMs(500);
      }
      
      await windowSnap.snapShot('POPUPBOX_PICKEROLD_0050');
      
      Logger.info('SUB_ACE_UI_COMPONENT_POPUPBOX_PICKEROLD_0050 end');
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_POPUPBOX_PICKEROLD_0060
     * @tc.name Pickerold0060
     * @tc.desc 验证字体大小为特大一档（1.75）条件下，系统给Picker组件进行适老化适配
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PICKEROLD_0060', 0, async () => {
      Logger.info('SUB_ACE_UI_COMPONENT_POPUPBOX_PICKEROLD_0060 begin');
      
      await Settings.createWindow('testability/pages/UiComponentPopupboxPickerold/Pickerold0060');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      const dialogBtn = await driver.findComponent(ON.id('dialogBtn'));
      if (dialogBtn) {
        await dialogBtn.click();
        await driver.delayMs(1000);
        await driver.pressBack();
        await driver.delayMs(500);
      }
      
      await windowSnap.snapShot('POPUPBOX_PICKEROLD_0060');
      
      Logger.info('SUB_ACE_UI_COMPONENT_POPUPBOX_PICKEROLD_0060 end');
    });
  });
}
