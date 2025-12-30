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
import { Driver, ON, MatchPattern } from '@ohos.UiTest';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';

export default function UiComponentPopupboxMenuBlur() {
  describe('UiComponentPopupboxMenuBlur', () => {
    const TAG: string = 'UiComponentPopupboxMenuBlur';
    let driver = Driver.create();

    afterEach(async () => {
      if (Settings.windowClass) {
        await Settings.destroyWindow(Settings.windowClass);
      }
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_BLUR_004
     * @tc.name bindcontextmenu（入参为CustomBuilder，使用Menu()）
     * @tc.desc 验证bindContextMenu使用Menu()时有模糊材质
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_BLUR_004', 0, async () => {
      await Settings.createWindow('testability/pages/UiComponentPopupboxMenuBlur/MenuBlur004');
      await driver.delayMs(500);
      
      // 长按按钮弹出菜单
      let menuBtn = await driver.findComponent(ON.id('btn'));
      await menuBtn.longClick();
      await driver.delayMs(1500);
      
      Logger.info(TAG, 'SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_BLUR_004: bindContextMenu菜单已弹出，应有模糊材质');
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_BLUR_004');
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_BLUR_007
     * @tc.name bindmenu入参为MenuElement-API10
     * @tc.desc 验证bindMenu使用MenuElement时无模糊材质
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_BLUR_007', 0, async () => {
      await Settings.createWindow('testability/pages/UiComponentPopupboxMenuBlur/MenuBlur007');
      await driver.delayMs(500);
      
      // 点击按钮弹出菜单
      let menuBtn = await driver.findComponent(ON.id('btn'));
      await menuBtn.click();
      await driver.delayMs(1500);
      
      Logger.info(TAG, 'SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_BLUR_007: bindMenu-MenuElement菜单已弹出，无模糊材质');
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_BLUR_007');
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_BLUR_008
     * @tc.name bindmenu入参为CustomBuilder（不使用Menu()）-API10
     * @tc.desc 验证bindMenu使用CustomBuilder不使用Menu()时无模糊材质
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_BLUR_008', 0, async () => {
      await Settings.createWindow('testability/pages/UiComponentPopupboxMenuBlur/MenuBlur008');
      await driver.delayMs(500);
      
      // 点击按钮弹出菜单
      let menuBtn = await driver.findComponent(ON.id('btn'));
      await menuBtn.click();
      await driver.delayMs(1500);
      
      Logger.info(TAG, 'SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_BLUR_008: bindMenu-CustomBuilder(不使用Menu)菜单已弹出，无模糊材质');
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_BLUR_008');
    });

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_BLUR_009
     * @tc.name bindmenu入参为CustomBuilder（使用Menu()）-API10
     * @tc.desc 验证bindMenu使用CustomBuilder+Menu()时无模糊材质（API10）
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_BLUR_009', 0, async () => {
      await Settings.createWindow('testability/pages/UiComponentPopupboxMenuBlur/MenuBlur009');
      await driver.delayMs(500);
      
      // 点击按钮弹出菜单
      let menuBtn = await driver.findComponent(ON.id('btn'));
      await menuBtn.click();
      await driver.delayMs(1500);
      
      Logger.info(TAG, 'SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_BLUR_009: bindMenu-CustomBuilder(使用Menu)菜单已弹出，API10无模糊材质');
      await windowSnap.snapShot('SUB_ACE_UI_COMPONENT_POPUPBOX_MENU_BLUR_009');
    });
  });
}

