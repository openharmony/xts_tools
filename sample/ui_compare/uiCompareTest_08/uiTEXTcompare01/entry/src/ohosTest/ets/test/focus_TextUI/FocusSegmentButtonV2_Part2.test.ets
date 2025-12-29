/*
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

import { describe, afterEach, it, Level } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON, } from '@kit.TestKit';

export default function FocusSegmentButtonV2TestPart2() {

  describe('FocusSegmentButtonV2TestPart2', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return
      }

      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      })
      await Utils.sleep(1000);
      done()
    })

    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1230', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1230 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSelectedFontSize with -1');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21230");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSelectedFontSize接口按钮，设置为-1
      Logger.info('TEST', 'Step 2-4: Click itemSelectedFontSize interface button with -1');
      let negativeFontSizeButton = await driver.findComponent(ON.id('negativeFontSizeButton'));
      if (negativeFontSizeButton) {
        await negativeFontSizeButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示，为默认值14fp');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1230 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1240
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1240
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedFontSize with 20vp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1240', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1240 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSelectedFontSize with 20vp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21240");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSelectedFontSize接口按钮，设置为20vp
      Logger.info('TEST', 'Step 2-4: Click itemSelectedFontSize interface button with 20vp');
      let vpFontSizeButton = await driver.findComponent(ON.id('vpFontSizeButton'));
      if (vpFontSizeButton) {
        await vpFontSizeButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示，为20vp');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1240 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1250
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1250
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedFontSize with 40%
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1250', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1250 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSelectedFontSize with 40%');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21250");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSelectedFontSize接口按钮，设置为40%
      Logger.info('TEST', 'Step 2-4: Click itemSelectedFontSize interface button with 40%');
      let percentFontSizeButton = await driver.findComponent(ON.id('percentFontSizeButton'));
      if (percentFontSizeButton) {
        await percentFontSizeButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1250 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1260
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1260
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedFontSize with 40fp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1260', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1260 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSelectedFontSize with 40fp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21260");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSelectedFontSize接口按钮，设置为40fp
      Logger.info('TEST', 'Step 2-4: Click itemSelectedFontSize interface button with 40fp');
      let fpFontSizeButton = await driver.findComponent(ON.id('fpFontSizeButton'));
      if (fpFontSizeButton) {
        await fpFontSizeButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1260 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1270
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1270
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedFontSize with 40lpx
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1270', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1270 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSelectedFontSize with 40lpx');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21270");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSelectedFontSize接口按钮，设置为40lpx
      Logger.info('TEST', 'Step 2-4: Click itemSelectedFontSize interface button with 40lpx');
      let lpxFontSizeButton = await driver.findComponent(ON.id('lpxFontSizeButton'));
      if (lpxFontSizeButton) {
        await lpxFontSizeButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1270 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1280
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1280
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedFontSize with 40px
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1280', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1280 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSelectedFontSize with 40px');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21280");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSelectedFontSize接口按钮，设置为40px
      Logger.info('TEST', 'Step 2-4: Click itemSelectedFontSize interface button with 40px');
      let pxFontSizeButton = await driver.findComponent(ON.id('pxFontSizeButton'));
      if (pxFontSizeButton) {
        await pxFontSizeButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1280 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1290
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1290
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedFontSize with resource
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1290', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1290 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSelectedFontSize with resource');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21290");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSelectedFontSize接口按钮，设置为resource
      Logger.info('TEST', 'Step 2-4: Click itemSelectedFontSize interface button with resource');
      let resourceFontSizeButton = await driver.findComponent(ON.id('resourceFontSizeButton'));
      if (resourceFontSizeButton) {
        await resourceFontSizeButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1290 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1300
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1300
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedFontSize with undefined
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1300', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1300 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSelectedFontSize with undefined');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21300");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSelectedFontSize接口按钮，设置为undefined
      Logger.info('TEST', 'Step 2-4: Click itemSelectedFontSize interface button with undefined');
      let undefinedFontSizeButton = await driver.findComponent(ON.id('undefinedFontSizeButton'));
      if (undefinedFontSizeButton) {
        await undefinedFontSizeButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选择的item的字体大小是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font size displays normally');
      Logger.info('TEST', 'Expected: 已选择的item的字体大小按照预设的大小正常显示，为默认值14fp');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1300 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1310
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1310
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedFontWeight with Bolder
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1310', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1310 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSelectedFontWeight with Bolder');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21310");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSelectedFontWeight接口按钮，设置为Bolder
      Logger.info('TEST', 'Step 2-4: Click itemSelectedFontWeight interface button with Bolder');
      let bolderFontWeightButton = await driver.findComponent(ON.id('bolderFontWeightButton'));
      if (bolderFontWeightButton) {
        await bolderFontWeightButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选中的分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font weight displays normally');
      Logger.info('TEST', 'Expected: 已选中的分段按钮文字粗细按照预设的大小正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1310 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1320
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1320
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedFontWeight with Bold
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1320', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1320 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSelectedFontWeight with Bold');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21320");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSelectedFontWeight接口按钮，设置为Bold
      Logger.info('TEST', 'Step 2-4: Click itemSelectedFontWeight interface button with Bold');
      let boldFontWeightButton = await driver.findComponent(ON.id('boldFontWeightButton'));
      if (boldFontWeightButton) {
        await boldFontWeightButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选中的分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font weight displays normally');
      Logger.info('TEST', 'Expected: 已选中的分段按钮文字粗细按照预设的大小正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1320 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1330
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1330
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedFontWeight with Lighter
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1330', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1330 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSelectedFontWeight with Lighter');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21330");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSelectedFontWeight接口按钮，设置为Lighter
      Logger.info('TEST', 'Step 2-4: Click itemSelectedFontWeight interface button with Lighter');
      let lighterFontWeightButton = await driver.findComponent(ON.id('lighterFontWeightButton'));
      if (lighterFontWeightButton) {
        await lighterFontWeightButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选中的分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font weight displays normally');
      Logger.info('TEST', 'Expected: 已选中的分段按钮文字粗细按照预设的大小正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1330 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1340
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1340
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedFontWeight with Medium
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1340', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1340 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSelectedFontWeight with Medium');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21340");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSelectedFontWeight接口按钮，设置为Medium
      Logger.info('TEST', 'Step 2-4: Click itemSelectedFontWeight interface button with Medium');
      let mediumFontWeightButton = await driver.findComponent(ON.id('mediumFontWeightButton'));
      if (mediumFontWeightButton) {
        await mediumFontWeightButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选中的分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font weight displays normally');
      Logger.info('TEST', 'Expected: 已选中的分段按钮文字粗细按照预设的大小正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1340 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1350
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1350
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedFontWeight with Normal
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1350', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1350 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSelectedFontWeight with Normal');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21350");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSelectedFontWeight接口按钮，设置为Normal
      Logger.info('TEST', 'Step 2-4: Click itemSelectedFontWeight interface button with Normal');
      let normalFontWeightButton = await driver.findComponent(ON.id('normalFontWeightButton'));
      if (normalFontWeightButton) {
        await normalFontWeightButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选中的分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font weight displays normally');
      Logger.info('TEST', 'Expected: 已选中的分段按钮文字粗细按照预设的大小正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1350 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1360
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1360
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedFontWeight with Regular
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1360', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1360 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSelectedFontWeight with Regular');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21360");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSelectedFontWeight接口按钮，设置为Regular
      Logger.info('TEST', 'Step 2-4: Click itemSelectedFontWeight interface button with Regular');
      let regularFontWeightButton = await driver.findComponent(ON.id('regularFontWeightButton'));
      if (regularFontWeightButton) {
        await regularFontWeightButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选中的分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font weight displays normally');
      Logger.info('TEST', 'Expected: 已选中的分段按钮文字粗细按照预设的大小正常显示，Regular和Normal的字体大小是一致的');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1360 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1370
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1370
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedFontWeight with undefined
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1370', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1370 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSelectedFontWeight with undefined');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21370");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSelectedFontWeight接口按钮，设置为undefined
      Logger.info('TEST', 'Step 2-4: Click itemSelectedFontWeight interface button with undefined');
      let undefinedFontWeightButton = await driver.findComponent(ON.id('undefinedFontWeightButton'));
      if (undefinedFontWeightButton) {
        await undefinedFontWeightButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选中的分段按钮文字粗细是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item font weight displays normally');
      Logger.info('TEST', 'Expected: 已选中的分段按钮文字粗细按照预设的大小正常显示，取得默认值medium');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1370 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1380
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1380
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedIconFillColor with rgba yellow
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1380', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1380 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSelectedIconFillColor with rgba yellow');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21380");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSelectedIconFillColor接口按钮，设置为rgba黄色
      Logger.info('TEST', 'Step 2-4: Click itemSelectedIconFillColor interface button with rgba yellow');
      let rgbaColorButton = await driver.findComponent(ON.id('rgbaColorButton'));
      if (rgbaColorButton) {
        await rgbaColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选择的分段按钮的图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item icon displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的图标按照预设颜色正常显示，为黄色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1380 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1390
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1390
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedIconFillColor with custom colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1390', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1390 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSelectedIconFillColor with custom colors');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21390");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：依次点击所有自定义颜色按钮
      Logger.info('TEST', 'Step 2-4: Click all custom color buttons');
      let redColorButton = await driver.findComponent(ON.id('redColorButton'));
      if (redColorButton) {
        await redColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      let greenColorButton = await driver.findComponent(ON.id('greenColorButton'));
      if (greenColorButton) {
        await greenColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      let blueColorButton = await driver.findComponent(ON.id('blueColorButton'));
      if (blueColorButton) {
        await blueColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      let yellowColorButton = await driver.findComponent(ON.id('yellowColorButton'));
      if (yellowColorButton) {
        await yellowColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      let cyanColorButton = await driver.findComponent(ON.id('cyanColorButton'));
      if (cyanColorButton) {
        await cyanColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      let magentaColorButton = await driver.findComponent(ON.id('magentaColorButton'));
      if (magentaColorButton) {
        await magentaColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      let whiteColorButton = await driver.findComponent(ON.id('whiteColorButton'));
      if (whiteColorButton) {
        await whiteColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      let semiTransparentRedButton = await driver.findComponent(ON.id('semiTransparentRedButton'));
      if (semiTransparentRedButton) {
        await semiTransparentRedButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选择的分段按钮的图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item icon displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的图标按照预设颜色正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1390 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1400
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1400
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedIconFillColor with preset colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1400', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1400 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSelectedIconFillColor with preset colors');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21400");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：依次点击预设颜色按钮
      Logger.info('TEST', 'Step 2-4: Click preset color buttons (blue, gray, white)');
      let presetBlueButton = await driver.findComponent(ON.id('presetBlueButton'));
      if (presetBlueButton) {
        await presetBlueButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      let presetGrayButton = await driver.findComponent(ON.id('presetGrayButton'));
      if (presetGrayButton) {
        await presetGrayButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      let presetWhiteButton = await driver.findComponent(ON.id('presetWhiteButton'));
      if (presetWhiteButton) {
        await presetWhiteButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选择的分段按钮的图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item icon displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的图标按照预设颜色正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1400 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1410
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1410
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedSymbolFontColor with rgba yellow
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1410', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1410 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSelectedSymbolFontColor with rgba yellow');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21410");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSelectedSymbolFontColor接口按钮，设置为rgba黄色
      Logger.info('TEST', 'Step 2-4: Click itemSelectedSymbolFontColor interface button with rgba yellow');
      let rgbaColorButton = await driver.findComponent(ON.id('rgbaColorButton'));
      if (rgbaColorButton) {
        await rgbaColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选择的分段按钮的HM Symbol类型图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item HM Symbol icon displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示，为黄色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1410 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1420
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1420
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedSymbolFontColor with custom colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1420', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1420 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSelectedSymbolFontColor with custom colors');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21420");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：依次点击所有自定义颜色按钮
      Logger.info('TEST', 'Step 2-4: Click all custom color buttons');
      let redColorButton = await driver.findComponent(ON.id('redColorButton'));
      if (redColorButton) {
        await redColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      let greenColorButton = await driver.findComponent(ON.id('greenColorButton'));
      if (greenColorButton) {
        await greenColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      let blueColorButton = await driver.findComponent(ON.id('blueColorButton'));
      if (blueColorButton) {
        await blueColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      let yellowColorButton = await driver.findComponent(ON.id('yellowColorButton'));
      if (yellowColorButton) {
        await yellowColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      let cyanColorButton = await driver.findComponent(ON.id('cyanColorButton'));
      if (cyanColorButton) {
        await cyanColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      let magentaColorButton = await driver.findComponent(ON.id('magentaColorButton'));
      if (magentaColorButton) {
        await magentaColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      let whiteColorButton = await driver.findComponent(ON.id('whiteColorButton'));
      if (whiteColorButton) {
        await whiteColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      let semiTransparentRedButton = await driver.findComponent(ON.id('semiTransparentRedButton'));
      if (semiTransparentRedButton) {
        await semiTransparentRedButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选择的分段按钮的HM Symbol类型图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item HM Symbol icon displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1420 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1430
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1430
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSelectedSymbolFontColor with preset colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1430', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1430 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSelectedSymbolFontColor with preset colors');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21430");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：依次点击预设颜色按钮
      Logger.info('TEST', 'Step 2-4: Click preset color buttons (blue, gray, white)');
      let presetBlueButton = await driver.findComponent(ON.id('presetBlueButton'));
      if (presetBlueButton) {
        await presetBlueButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      let presetGrayButton = await driver.findComponent(ON.id('presetGrayButton'));
      if (presetGrayButton) {
        await presetGrayButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      let presetWhiteButton = await driver.findComponent(ON.id('presetWhiteButton'));
      if (presetWhiteButton) {
        await presetWhiteButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察已选择的分段按钮的HM Symbol类型图标是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the selected item HM Symbol icon displays normally');
      Logger.info('TEST', 'Expected: 已选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1430 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1440
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1440
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemShadow with black shadow and fill true
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1440', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1440 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemShadow with black shadow');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21440");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemShadow接口按钮，设置黑色阴影
      Logger.info('TEST', 'Step 2-4: Click itemShadow interface button with black shadow');
      let shadowOption1Button = await driver.findComponent(ON.id('shadowOption1Button'));
      if (shadowOption1Button) {
        await shadowOption1Button.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为黑色阴影，向右下偏移（50，50），填充');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1440 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1450
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1450
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemShadow with green shadow and fill false
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1450', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1450 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemShadow with green shadow');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21450");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemShadow接口按钮，设置绿色阴影
      Logger.info('TEST', 'Step 2-4: Click itemShadow interface button with green shadow');
      let shadowOption2Button = await driver.findComponent(ON.id('shadowOption2Button'));
      if (shadowOption2Button) {
        await shadowOption2Button.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为绿色阴影，向右下偏移（50，50），未填充');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1450 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1460
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1460
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemShadow with pink shadow and fill false
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1460', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1460 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemShadow with pink shadow');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21460");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemShadow接口按钮，设置粉色阴影
      Logger.info('TEST', 'Step 2-4: Click itemShadow interface button with pink shadow');
      let shadowOption3Button = await driver.findComponent(ON.id('shadowOption3Button'));
      if (shadowOption3Button) {
        await shadowOption3Button.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为粉色阴影，向右下偏移（50，50），未填充');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1460 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1470
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1470
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemShadow with ColoringStrategy.INVERT
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1470', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1470 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemShadow with ColoringStrategy.INVERT');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21470");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemShadow接口按钮，设置ColoringStrategy.INVERT
      Logger.info('TEST', 'Step 2-4: Click itemShadow interface button with ColoringStrategy.INVERT');
      let shadowOption4Button = await driver.findComponent(ON.id('shadowOption4Button'));
      if (shadowOption4Button) {
        await shadowOption4Button.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为黑色阴影（走反色逻辑），向右下偏移（50，50），填充');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1470 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1480
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1480
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemShadow with ColoringStrategy.AVERAGE
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1480', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1480 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemShadow with ColoringStrategy.AVERAGE');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21480");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemShadow接口按钮，设置ColoringStrategy.AVERAGE
      Logger.info('TEST', 'Step 2-4: Click itemShadow interface button with ColoringStrategy.AVERAGE');
      let shadowOption5Button = await driver.findComponent(ON.id('shadowOption5Button'));
      if (shadowOption5Button) {
        await shadowOption5Button.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为灰色阴影（走平均色逻辑），向右下偏移（50，50），填充');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1480 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1490
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1490
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemShadow with ColoringStrategy.PRIMARY
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1490', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1490 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemShadow with ColoringStrategy.PRIMARY');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21490");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemShadow接口按钮，设置ColoringStrategy.PRIMARY
      Logger.info('TEST', 'Step 2-4: Click itemShadow interface button with ColoringStrategy.PRIMARY');
      let shadowOption6Button = await driver.findComponent(ON.id('shadowOption6Button'));
      if (shadowOption6Button) {
        await shadowOption6Button.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为灰色阴影（走平均色逻辑），向右下偏移（50，50），填充');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1490 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1500
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1500
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemShadow with undefined (枚举值7)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1500', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1500 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemShadow with undefined');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21500");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemShadow接口按钮，设置undefined
      Logger.info('TEST', 'Step 2-4: Click itemShadow interface button with undefined');
      let shadowOption7Button = await driver.findComponent(ON.id('shadowOption7Button'));
      if (shadowOption7Button) {
        await shadowOption7Button.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item无阴影显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1500 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1510
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1510
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemShadow with ShadowStyle.OUTER_DEFAULT_LG
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1510', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1510 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemShadow with OUTER_DEFAULT_LG');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21510");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemShadow接口按钮，设置OUTER_DEFAULT_LG
      Logger.info('TEST', 'Step 2-4: Click itemShadow interface button with OUTER_DEFAULT_LG');
      let shadowStyleLGButton = await driver.findComponent(ON.id('shadowStyleLGButton'));
      if (shadowStyleLGButton) {
        await shadowStyleLGButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为大阴影');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1510 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1520
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1520
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemShadow with ShadowStyle.OUTER_DEFAULT_MD
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1520', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1520 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemShadow with OUTER_DEFAULT_MD');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21520");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemShadow接口按钮，设置OUTER_DEFAULT_MD
      Logger.info('TEST', 'Step 2-4: Click itemShadow interface button with OUTER_DEFAULT_MD');
      let shadowStyleMDButton = await driver.findComponent(ON.id('shadowStyleMDButton'));
      if (shadowStyleMDButton) {
        await shadowStyleMDButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为中阴影');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1520 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1530
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1530
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemShadow with ShadowStyle.OUTER_DEFAULT_SM
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1530', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1530 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemShadow with OUTER_DEFAULT_SM');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21530");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemShadow接口按钮，设置OUTER_DEFAULT_SM
      Logger.info('TEST', 'Step 2-4: Click itemShadow interface button with OUTER_DEFAULT_SM');
      let shadowStyleSMButton = await driver.findComponent(ON.id('shadowStyleSMButton'));
      if (shadowStyleSMButton) {
        await shadowStyleSMButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为小阴影');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1530 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1540
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1540
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemShadow with ShadowStyle.OUTER_DEFAULT_XS
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1540', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1540 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemShadow with OUTER_DEFAULT_XS');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21540");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemShadow接口按钮，设置OUTER_DEFAULT_XS
      Logger.info('TEST', 'Step 2-4: Click itemShadow interface button with OUTER_DEFAULT_XS');
      let shadowStyleXSButton = await driver.findComponent(ON.id('shadowStyleXSButton'));
      if (shadowStyleXSButton) {
        await shadowStyleXSButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为超小阴影');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1540 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1550
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1550
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemShadow with ShadowStyle.OUTER_FLOATING_MD
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1550', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1550 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemShadow with OUTER_FLOATING_MD');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21550");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemShadow接口按钮，设置OUTER_FLOATING_MD
      Logger.info('TEST', 'Step 2-4: Click itemShadow interface button with OUTER_FLOATING_MD');
      let shadowStyleFloatingMDButton = await driver.findComponent(ON.id('shadowStyleFloatingMDButton'));
      if (shadowStyleFloatingMDButton) {
        await shadowStyleFloatingMDButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为浮动中阴影');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1550 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1560
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1560
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemShadow with ShadowStyle.OUTER_FLOATING_SM
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1560', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1560 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemShadow with OUTER_FLOATING_SM');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21560");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemShadow接口按钮，设置OUTER_FLOATING_SM
      Logger.info('TEST', 'Step 2-4: Click itemShadow interface button with OUTER_FLOATING_SM');
      let shadowStyleFloatingSMButton = await driver.findComponent(ON.id('shadowStyleFloatingSMButton'));
      if (shadowStyleFloatingSMButton) {
        await shadowStyleFloatingSMButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮的item的阴影
      Logger.info('TEST', 'Step 5: Observe if the item shadow displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的item阴影为浮动小阴影');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1560 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1570
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1570
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSpace with -1 (default 0)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1570', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1570 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSpace with -1');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21570");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSpace接口按钮，设置-1
      Logger.info('TEST', 'Step 2-4: Click itemSpace interface button with -1');
      let itemSpaceNegativeButton = await driver.findComponent(ON.id('itemSpaceNegativeButton'));
      if (itemSpaceNegativeButton) {
        await itemSpaceNegativeButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察item之间的间隙
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示，为默认值0');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1570 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1580
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1580
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSpace with 20vp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1580', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1580 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSpace with 20vp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21580");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSpace接口按钮，设置20vp
      Logger.info('TEST', 'Step 2-4: Click itemSpace interface button with 20vp');
      let itemSpace20vpButton = await driver.findComponent(ON.id('itemSpace20vpButton'));
      if (itemSpace20vpButton) {
        await itemSpace20vpButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察item之间的间隙
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示，为20vp');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1580 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1590
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1590
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSpace with 40%
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1590', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1590 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSpace with 40%');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21590");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSpace接口按钮，设置40%
      Logger.info('TEST', 'Step 2-4: Click itemSpace interface button with 40%');
      let itemSpace40PercentButton = await driver.findComponent(ON.id('itemSpace40PercentButton'));
      if (itemSpace40PercentButton) {
        await itemSpace40PercentButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察item之间的间隙
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1590 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1600
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1600
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSpace with 40fp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1600', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1600 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSpace with 40fp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21600");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSpace接口按钮，设置40fp
      Logger.info('TEST', 'Step 2-4: Click itemSpace interface button with 40fp');
      let itemSpace40fpButton = await driver.findComponent(ON.id('itemSpace40fpButton'));
      if (itemSpace40fpButton) {
        await itemSpace40fpButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察item之间的间隙
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1600 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1610
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1610
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSpace with 40lpx
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1610', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1610 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSpace with 40lpx');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21610");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSpace接口按钮，设置40lpx
      Logger.info('TEST', 'Step 2-4: Click itemSpace interface button with 40lpx');
      let itemSpace40lpxButton = await driver.findComponent(ON.id('itemSpace40lpxButton'));
      if (itemSpace40lpxButton) {
        await itemSpace40lpxButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察item之间的间隙
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1610 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1620
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1620
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSpace with 40px
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1620', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1620 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSpace with 40px');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21620");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSpace接口按钮，设置40px
      Logger.info('TEST', 'Step 2-4: Click itemSpace interface button with 40px');
      let itemSpace40pxButton = await driver.findComponent(ON.id('itemSpace40pxButton'));
      if (itemSpace40pxButton) {
        await itemSpace40pxButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察item之间的间隙
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1620 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1630
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1630
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSpace with resource($r("app.string.string1"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1630', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1630 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSpace with resource');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21630");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSpace接口按钮，设置resource
      Logger.info('TEST', 'Step 2-4: Click itemSpace interface button with resource');
      let itemSpaceResourceButton = await driver.findComponent(ON.id('itemSpaceResourceButton'));
      if (itemSpaceResourceButton) {
        await itemSpaceResourceButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察item之间的间隙
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1630 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1640
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1640
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSpace with undefined (default 0)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1640', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1640 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSpace with undefined');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21640");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSpace接口按钮，设置undefined
      Logger.info('TEST', 'Step 2-4: Click itemSpace interface button with undefined');
      let itemSpaceUndefinedButton = await driver.findComponent(ON.id('itemSpaceUndefinedButton'));
      if (itemSpaceUndefinedButton) {
        await itemSpaceUndefinedButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察item之间的间隙
      Logger.info('TEST', 'Step 5: Observe if the item space displays normally');
      Logger.info('TEST', 'Expected: item之间的间隙按照预设的大小正常显示，为默认值0');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1640 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1650
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1650
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSymbolFontColor with rgba yellow
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1650', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1650 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSymbolFontColor with rgba yellow');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21650");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSymbolFontColor接口按钮，设置rgba黄色
      Logger.info('TEST', 'Step 2-4: Click itemSymbolFontColor interface button with rgba yellow');
      let rgbaColorButton = await driver.findComponent(ON.id('rgbaColorButton'));
      if (rgbaColorButton) {
        await rgbaColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察未选择的分段按钮的HM Symbol类型图标
      Logger.info('TEST', 'Step 5: Observe if the unselected item symbol font color displays normally');
      Logger.info('TEST', 'Expected: 未选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示，为黄色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1650 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1660
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1660
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSymbolFontColor with custom colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1660', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1660 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSymbolFontColor with custom colors');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21660");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：依次点击所有自定义颜色按钮
      Logger.info('TEST', 'Step 2-4: Click all custom color buttons');

      let redColorButton = await driver.findComponent(ON.id('redColorButton'));
      if (redColorButton) {
        await redColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let greenColorButton = await driver.findComponent(ON.id('greenColorButton'));
      if (greenColorButton) {
        await greenColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let blueColorButton = await driver.findComponent(ON.id('blueColorButton'));
      if (blueColorButton) {
        await blueColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let yellowColorButton = await driver.findComponent(ON.id('yellowColorButton'));
      if (yellowColorButton) {
        await yellowColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let cyanColorButton = await driver.findComponent(ON.id('cyanColorButton'));
      if (cyanColorButton) {
        await cyanColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let magentaColorButton = await driver.findComponent(ON.id('magentaColorButton'));
      if (magentaColorButton) {
        await magentaColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let whiteColorButton = await driver.findComponent(ON.id('whiteColorButton'));
      if (whiteColorButton) {
        await whiteColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let semiTransparentRedButton = await driver.findComponent(ON.id('semiTransparentRedButton'));
      if (semiTransparentRedButton) {
        await semiTransparentRedButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察未选择的分段按钮的HM Symbol类型图标
      Logger.info('TEST', 'Step 5: Observe if the unselected item symbol font color displays normally');
      Logger.info('TEST', 'Expected: 未选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1660 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1670
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1670
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSymbolFontColor with preset colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1670', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1670 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSymbolFontColor with preset colors');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21670");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：依次点击所有预设颜色按钮
      Logger.info('TEST', 'Step 2-4: Click all preset color buttons');

      let presetBlueButton = await driver.findComponent(ON.id('presetBlueButton'));
      if (presetBlueButton) {
        await presetBlueButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let presetGrayButton = await driver.findComponent(ON.id('presetGrayButton'));
      if (presetGrayButton) {
        await presetGrayButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let presetWhiteButton = await driver.findComponent(ON.id('presetWhiteButton'));
      if (presetWhiteButton) {
        await presetWhiteButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察未选择的分段按钮的HM Symbol类型图标
      Logger.info('TEST', 'Step 5: Observe if the unselected item symbol font color displays normally');
      Logger.info('TEST', 'Expected: 未选择的分段按钮的HM Symbol类型图标按照预设颜色正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1670 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1680
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1680
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSymbolFontSize with -1 (default 20fp)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1680', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1680 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSymbolFontSize with -1');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21680");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSymbolFontSize接口按钮，设置-1
      Logger.info('TEST', 'Step 2-4: Click itemSymbolFontSize interface button with -1');
      let symbolFontSizeNegativeButton = await driver.findComponent(ON.id('symbolFontSizeNegativeButton'));
      if (symbolFontSizeNegativeButton) {
        await symbolFontSizeNegativeButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察HM Symbol类型图标的大小
      Logger.info('TEST', 'Step 5: Observe if the HM Symbol font size displays normally');
      Logger.info('TEST', 'Expected: HM Symbol类型图标按照预设的大小正常显示，为默认值20fp');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1680 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1690
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1690
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSymbolFontSize with 20vp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1690', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1690 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSymbolFontSize with 20vp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21690");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSymbolFontSize接口按钮，设置20vp
      Logger.info('TEST', 'Step 2-4: Click itemSymbolFontSize interface button with 20vp');
      let symbolFontSize20vpButton = await driver.findComponent(ON.id('symbolFontSize20vpButton'));
      if (symbolFontSize20vpButton) {
        await symbolFontSize20vpButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察HM Symbol类型图标的大小
      Logger.info('TEST', 'Step 5: Observe if the HM Symbol font size displays normally');
      Logger.info('TEST', 'Expected: HM Symbol类型图标按照预设的大小正常显示，为20vp');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1690 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1700
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1700
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSymbolFontSize with 40%
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1700', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1700 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSymbolFontSize with 40%');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21700");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSymbolFontSize接口按钮，设置40%
      Logger.info('TEST', 'Step 2-4: Click itemSymbolFontSize interface button with 40%');
      let symbolFontSize40PercentButton = await driver.findComponent(ON.id('symbolFontSize40PercentButton'));
      if (symbolFontSize40PercentButton) {
        await symbolFontSize40PercentButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察HM Symbol类型图标的大小
      Logger.info('TEST', 'Step 5: Observe if the HM Symbol font size displays normally');
      Logger.info('TEST', 'Expected: HM Symbol类型图标按照预设的大小正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1700 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1710
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1710
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSymbolFontSize with 40fp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1710', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1710 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSymbolFontSize with 40fp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21710");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSymbolFontSize接口按钮，设置40fp
      Logger.info('TEST', 'Step 2-4: Click itemSymbolFontSize interface button with 40fp');
      let symbolFontSize40fpButton = await driver.findComponent(ON.id('symbolFontSize40fpButton'));
      if (symbolFontSize40fpButton) {
        await symbolFontSize40fpButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察HM Symbol类型图标的大小
      Logger.info('TEST', 'Step 5: Observe if the HM Symbol font size displays normally');
      Logger.info('TEST', 'Expected: HM Symbol类型图标按照预设的大小正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1710 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1720
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1720
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSymbolFontSize with 40lpx
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1720', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1720 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSymbolFontSize with 40lpx');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21720");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSymbolFontSize接口按钮，设置40lpx
      Logger.info('TEST', 'Step 2-4: Click itemSymbolFontSize interface button with 40lpx');
      let symbolFontSize40lpxButton = await driver.findComponent(ON.id('symbolFontSize40lpxButton'));
      if (symbolFontSize40lpxButton) {
        await symbolFontSize40lpxButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察HM Symbol类型图标的大小
      Logger.info('TEST', 'Step 5: Observe if the HM Symbol font size displays normally');
      Logger.info('TEST', 'Expected: HM Symbol类型图标按照预设的大小正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1720 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1730
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1730
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSymbolFontSize with 40px
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1730', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1730 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSymbolFontSize with 40px');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21730");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSymbolFontSize接口按钮，设置40px
      Logger.info('TEST', 'Step 2-4: Click itemSymbolFontSize interface button with 40px');
      let symbolFontSize40pxButton = await driver.findComponent(ON.id('symbolFontSize40pxButton'));
      if (symbolFontSize40pxButton) {
        await symbolFontSize40pxButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察HM Symbol类型图标的大小
      Logger.info('TEST', 'Step 5: Observe if the HM Symbol font size displays normally');
      Logger.info('TEST', 'Expected: HM Symbol类型图标按照预设的大小正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1730 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1740
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1740
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSymbolFontSize with resource($r("app.string.string1"))
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1740', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1740 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSymbolFontSize with resource');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21740");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSymbolFontSize接口按钮，设置resource
      Logger.info('TEST', 'Step 2-4: Click itemSymbolFontSize interface button with resource');
      let symbolFontSizeResourceButton = await driver.findComponent(ON.id('symbolFontSizeResourceButton'));
      if (symbolFontSizeResourceButton) {
        await symbolFontSizeResourceButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察HM Symbol类型图标的大小
      Logger.info('TEST', 'Step 5: Observe if the HM Symbol font size displays normally');
      Logger.info('TEST', 'Expected: HM Symbol类型图标按照预设的大小正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1740 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1750
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1750
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 itemSymbolFontSize with undefined (default 20fp)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1750', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1750 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 itemSymbolFontSize with undefined');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21750");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击itemSymbolFontSize接口按钮，设置undefined
      Logger.info('TEST', 'Step 2-4: Click itemSymbolFontSize interface button with undefined');
      let symbolFontSizeUndefinedButton = await driver.findComponent(ON.id('symbolFontSizeUndefinedButton'));
      if (symbolFontSizeUndefinedButton) {
        await symbolFontSizeUndefinedButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察HM Symbol类型图标的大小
      Logger.info('TEST', 'Step 5: Observe if the HM Symbol font size displays normally');
      Logger.info('TEST', 'Expected: HM Symbol类型图标按照预设的大小正常显示，为默认值20fp');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1750 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1760
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1760
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 languageDirection with Auto (Chinese system)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1760', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1760 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 languageDirection with Auto');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21760");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击languageDirection接口按钮，设置Auto
      Logger.info('TEST', 'Step 2-4: Click languageDirection interface button with Auto');
      let directionAutoButton = await driver.findComponent(ON.id('directionAutoButton'));
      if (directionAutoButton) {
        await directionAutoButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮整体布局
      Logger.info('TEST', 'Step 5: Observe if the segment button layout displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的语言阅读方向符合从左往右布局（简体中文）');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1760 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1770
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1770
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 languageDirection with Ltr (Chinese system)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1770', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1770 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 languageDirection with Ltr');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21770");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击languageDirection接口按钮，设置Ltr
      Logger.info('TEST', 'Step 2-4: Click languageDirection interface button with Ltr');
      let directionLtrButton = await driver.findComponent(ON.id('directionLtrButton'));
      if (directionLtrButton) {
        await directionLtrButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮整体布局
      Logger.info('TEST', 'Step 5: Observe if the segment button layout displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的语言阅读方向符合从左往右布局');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1770 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1780
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1780
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 languageDirection with Rtl (Chinese system)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1780', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1780 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 languageDirection with Rtl');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21780");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击languageDirection接口按钮，设置Rtl
      Logger.info('TEST', 'Step 2-4: Click languageDirection interface button with Rtl');
      let directionRtlButton = await driver.findComponent(ON.id('directionRtlButton'));
      if (directionRtlButton) {
        await directionRtlButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮整体布局
      Logger.info('TEST', 'Step 5: Observe if the segment button layout displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的语言阅读方向符合从右往左布局');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1780 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1820
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1820
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 onItemClicked callback displays toast correctly
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1820', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1820 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 onItemClicked test');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21820");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击分段按钮的不同item，观察toast提示
      Logger.info('TEST', 'Step 2-4: Click different items on segment button');
      let segmentButton = await driver.findComponent(ON.id('segmentButton'));
      if (segmentButton) {
        await segmentButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察弹出的toast是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the toast displays correctly');
      Logger.info('TEST', 'Expected: 点击的第几个item，toast能正常显示（索引从0开始）');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1820 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1830
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1830
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 OnSelectedIndexChange callback works correctly
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1830', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1830 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 OnSelectedIndexChange test');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21830");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-3：点击分段按钮的不同item，观察日志回调
      Logger.info('TEST', 'Step 2-3: Click different items on segment button');
      let segmentButton = await driver.findComponent(ON.id('segmentButton'));
      if (segmentButton) {
        await segmentButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 观察日志回调是否正常
      Logger.info('TEST', 'Expected: 来回点击不同item，回调符合预期，已选中的item点击没有回调');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1830 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1840
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1840
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 SelectedIndex=-1 defaults to first item
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1840', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1840 start`);

      // 步骤1：进入测试页面（代码中设置SelectedIndex为-1）
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 SelectedIndex=-1 test');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21840");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2：观察分段按钮已选中的item是否符合预期
      Logger.info('TEST', 'Step 2: Observe if the selected item is as expected');
      Logger.info('TEST', 'Expected: 分段按钮已选中的item符合预期，第一块item被选中（-1为无效值，默认选中索引0）');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1840 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1850
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1850
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 SelectedIndex=1 selects second item
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1850', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1850 start`);

      // 步骤1：进入测试页面（代码中设置SelectedIndex为1）
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 SelectedIndex=1 test');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21850");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2：观察分段按钮已选中的item是否符合预期
      Logger.info('TEST', 'Step 2: Observe if the selected item is as expected');
      Logger.info('TEST', 'Expected: 分段按钮已选中的item符合预期，第二块item被选中');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1850 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1860
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1860
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify CapsuleSegmentButtonV2 SelectedIndex=999 selects last item
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1860', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1860 start`);

      // 步骤1：进入测试页面（代码中设置SelectedIndex为999）
      Logger.info('TEST', 'Step 1: Open test page - CapsuleSegmentButtonV2 SelectedIndex=999 test');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21860");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2：观察分段按钮已选中的item是否符合预期
      Logger.info('TEST', 'Step 2: Observe if the selected item is as expected');
      Logger.info('TEST', 'Expected: 分段按钮已选中的item符合预期，最后一块item被选中（999超出范围）');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1860 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1870
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1870
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 BackgroundBlurStyleOptions with colorMode DARK
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1870', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1870 start`);

      // 步骤1-2：进入测试页面（代码中设置buttonBackgroundBlurStyleOptions colorMode为DARK）
      Logger.info('TEST', 'Step 1-2: Open test page - MultiCapsuleSegmentButtonV2 BackgroundBlurStyleOptions DARK');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21870");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤3：观察分段按钮背景模糊是否正常显示
      Logger.info('TEST', 'Step 3: Observe if the background blur displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景模糊是暗色模式');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1870 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1880
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1880
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 BackgroundBlurStyleOptions with colorMode LIGHT
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1880', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1880 start`);

      // 步骤1-2：进入测试页面（代码中设置buttonBackgroundBlurStyleOptions colorMode为LIGHT）
      Logger.info('TEST', 'Step 1-2: Open test page - MultiCapsuleSegmentButtonV2 BackgroundBlurStyleOptions LIGHT');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21880");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤3：观察分段按钮背景模糊是否正常显示
      Logger.info('TEST', 'Step 3: Observe if the background blur displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景模糊是亮色模式');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1880 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1890
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1890
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 BackgroundBlurStyleOptions with colorMode SYSTEM
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1890', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1890 start`);

      // 步骤1-2：进入测试页面（代码中设置buttonBackgroundBlurStyleOptions colorMode为SYSTEM）
      Logger.info('TEST', 'Step 1-2: Open test page - MultiCapsuleSegmentButtonV2 BackgroundBlurStyleOptions SYSTEM');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21890");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤3：观察分段按钮背景模糊是否正常显示
      Logger.info('TEST', 'Step 3: Observe if the background blur displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景模糊跟随系统');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1890 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1900
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1900
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 BackgroundBlurStyle with COMPONENT_REGULAR
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1900', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1900 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 BackgroundBlurStyle COMPONENT_REGULAR');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21900");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set COMPONENT_REGULAR');
      let componentRegularButton = await driver.findComponent(ON.id('componentRegularButton'));
      if (componentRegularButton) {
        await componentRegularButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background blur displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 COMPONENT_REGULAR 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1900 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1910
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1910
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 BackgroundBlurStyle with COMPONENT_THICK
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1910', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1910 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 BackgroundBlurStyle COMPONENT_THICK');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21910");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set COMPONENT_THICK');
      let componentThickButton = await driver.findComponent(ON.id('componentThickButton'));
      if (componentThickButton) {
        await componentThickButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background blur displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 COMPONENT_THICK 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1910 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1920
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1920
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 BackgroundBlurStyle with COMPONENT_THIN
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1920', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1920 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 BackgroundBlurStyle COMPONENT_THIN');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21920");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set COMPONENT_THIN');
      let componentThinButton = await driver.findComponent(ON.id('componentThinButton'));
      if (componentThinButton) {
        await componentThinButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background blur displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 COMPONENT_THIN 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1920 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1930
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1930
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 BackgroundBlurStyle with COMPONENT_ULTRA_THICK
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1930', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1930 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 BackgroundBlurStyle COMPONENT_ULTRA_THICK');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21930");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set COMPONENT_ULTRA_THICK');
      let componentUltraThickButton = await driver.findComponent(ON.id('componentUltraThickButton'));
      if (componentUltraThickButton) {
        await componentUltraThickButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background blur displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 COMPONENT_ULTRA_THICK 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1930 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1940
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1940
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 BackgroundBlurStyle with BACKGROUND_REGULAR
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1940', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1940 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 BackgroundBlurStyle BACKGROUND_REGULAR');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21940");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set BACKGROUND_REGULAR');
      let backgroundRegularButton = await driver.findComponent(ON.id('backgroundRegularButton'));
      if (backgroundRegularButton) {
        await backgroundRegularButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background blur displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 BACKGROUND_REGULAR 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1940 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1950
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1950
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 BackgroundBlurStyle with BACKGROUND_THICK
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1950', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1950 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 BackgroundBlurStyle BACKGROUND_THICK');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21950");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set BACKGROUND_THICK');
      let backgroundThickButton = await driver.findComponent(ON.id('backgroundThickButton'));
      if (backgroundThickButton) {
        await backgroundThickButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background blur displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 BACKGROUND_THICK 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1950 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1960
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1960
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 BackgroundBlurStyle with BACKGROUND_THIN
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1960', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1960 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 BackgroundBlurStyle BACKGROUND_THIN');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21960");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set BACKGROUND_THIN');
      let backgroundThinButton = await driver.findComponent(ON.id('backgroundThinButton'));
      if (backgroundThinButton) {
        await backgroundThinButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background blur displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 BACKGROUND_THIN 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1960 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1970
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1970
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 BackgroundBlurStyle with BACKGROUND_ULTRA_THICK
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1970', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1970 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 BackgroundBlurStyle BACKGROUND_ULTRA_THICK');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21970");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set BACKGROUND_ULTRA_THICK');
      let backgroundUltraThickButton = await driver.findComponent(ON.id('backgroundUltraThickButton'));
      if (backgroundUltraThickButton) {
        await backgroundUltraThickButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background blur displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 BACKGROUND_ULTRA_THICK 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1970 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1980
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1980
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 BackgroundBlurStyle with COMPONENT_ULTRA_THIN
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1980', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1980 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 BackgroundBlurStyle COMPONENT_ULTRA_THIN');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21980");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set COMPONENT_ULTRA_THIN');
      let componentUltraThinButton = await driver.findComponent(ON.id('componentUltraThinButton'));
      if (componentUltraThinButton) {
        await componentUltraThinButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background blur displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 COMPONENT_ULTRA_THIN 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1980 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1990
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1990
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 BackgroundBlurStyle with NONE
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1990', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1990 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 BackgroundBlurStyle NONE');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV21990");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set NONE');
      let noneButton = await driver.findComponent(ON.id('noneButton'));
      if (noneButton) {
        await noneButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background blur displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 NONE 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_1990 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2000
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2000
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 BackgroundBlurStyle with Regular
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2000', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2000 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 BackgroundBlurStyle Regular');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22000");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set Regular');
      let regularButton = await driver.findComponent(ON.id('regularButton'));
      if (regularButton) {
        await regularButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background blur displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 Regular 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2000 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2010
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2010
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 BackgroundBlurStyle with Thick
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2010 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 BackgroundBlurStyle Thick');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22010");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set Thick');
      let thickButton = await driver.findComponent(ON.id('thickButton'));
      if (thickButton) {
        await thickButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background blur displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 Thick 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2010 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2020
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2020
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 BackgroundBlurStyle with Thin
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2020 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 BackgroundBlurStyle Thin');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22020");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set Thin');
      let thinButton = await driver.findComponent(ON.id('thinButton'));
      if (thinButton) {
        await thinButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景模糊是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background blur displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设模糊 Thin 正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2020 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2030
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2030
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemBackgroundColor with rgba yellow
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2030 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemBackgroundColor rgba');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22030");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set rgba yellow color');
      let rgbaColorButton = await driver.findComponent(ON.id('rgbaColorButton'));
      if (rgbaColorButton) {
        await rgbaColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background color displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设颜色正常显示，为黄色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2030 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2040
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2040
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemBackgroundColor with custom colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2040', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2040 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemBackgroundColor custom');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22040");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击各种自定义颜色按钮
      Logger.info('TEST', 'Step 2-4: Click custom color buttons');

      let redColorButton = await driver.findComponent(ON.id('redColorButton'));
      if (redColorButton) {
        await redColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let greenColorButton = await driver.findComponent(ON.id('greenColorButton'));
      if (greenColorButton) {
        await greenColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let blueColorButton = await driver.findComponent(ON.id('blueColorButton'));
      if (blueColorButton) {
        await blueColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let yellowColorButton = await driver.findComponent(ON.id('yellowColorButton'));
      if (yellowColorButton) {
        await yellowColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let cyanColorButton = await driver.findComponent(ON.id('cyanColorButton'));
      if (cyanColorButton) {
        await cyanColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let magentaColorButton = await driver.findComponent(ON.id('magentaColorButton'));
      if (magentaColorButton) {
        await magentaColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let whiteColorButton = await driver.findComponent(ON.id('whiteColorButton'));
      if (whiteColorButton) {
        await whiteColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let semiTransparentButton = await driver.findComponent(ON.id('semiTransparentButton'));
      if (semiTransparentButton) {
        await semiTransparentButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮背景是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background color displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设颜色正常显示，透明度调节功能正常');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2040 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2050
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2050
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemBackgroundColor with preset colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2050 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemBackgroundColor preset');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22050");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击预设颜色按钮
      Logger.info('TEST', 'Step 2-4: Click preset color buttons');

      let bluePresetButton = await driver.findComponent(ON.id('bluePresetButton'));
      if (bluePresetButton) {
        await bluePresetButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let grayPresetButton = await driver.findComponent(ON.id('grayPresetButton'));
      if (grayPresetButton) {
        await grayPresetButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let whitePresetButton = await driver.findComponent(ON.id('whitePresetButton'));
      if (whitePresetButton) {
        await whitePresetButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮背景是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background color displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设颜色正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2050 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2060
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2060
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemBackgroundEffect with abnormal values
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2060', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2060 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemBackgroundEffect abnormal values');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22060");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set abnormal values (-1,-1,-1,pink)');
      let abnormalValueButton = await driver.findComponent(ON.id('abnormalValueButton'));
      if (abnormalValueButton) {
        await abnormalValueButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景效果是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background effect displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设背景效果正常显示，全部为默认值时颜色不会生效');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2060 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2070
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2070
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemBackgroundEffect with normal values
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2070', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2070 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemBackgroundEffect normal values');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22070");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set normal values (99,2,2,pink)');
      let normalValueButton = await driver.findComponent(ON.id('normalValueButton'));
      if (normalValueButton) {
        await normalValueButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景效果是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background effect displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设背景效果正常显示，能够正常显示预设的粉色效果');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2070 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2080
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2080
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemBackgroundEffect with full params including adaptiveColor and blurOptions
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2080', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2080 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemBackgroundEffect full params');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22080");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set full params (10,2,2,pink,AVERAGE,[0.5,0.5])');
      let fullParamsButton = await driver.findComponent(ON.id('fullParamsButton'));
      if (fullParamsButton) {
        await fullParamsButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景效果是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background effect displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设背景效果正常显示，背板颜色为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2080 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2090
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2090
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemBackgroundEffect with AdaptiveColor.DEFAULT and blurOptions [0,0]
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2090', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2090 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemBackgroundEffect DEFAULT');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22090");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set DEFAULT params (10,2,2,pink,DEFAULT,[0,0])');
      let defaultParamsButton = await driver.findComponent(ON.id('defaultParamsButton'));
      if (defaultParamsButton) {
        await defaultParamsButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景效果是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background effect displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设背景效果正常显示，背板颜色为粉色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2090 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2100
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2100
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemBackgroundEffect with missing params (default values)
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2100', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2100 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemBackgroundEffect missing params');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22100");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击各种缺省参数按钮
      Logger.info('TEST', 'Step 2-4: Click buttons to test missing params');

      let missingColorButton = await driver.findComponent(ON.id('missingColorButton'));
      if (missingColorButton) {
        await missingColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let missingSaturationButton = await driver.findComponent(ON.id('missingSaturationButton'));
      if (missingSaturationButton) {
        await missingSaturationButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let missingBrightnessButton = await driver.findComponent(ON.id('missingBrightnessButton'));
      if (missingBrightnessButton) {
        await missingBrightnessButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察分段按钮背景效果是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background effect displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设背景效果正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2100 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2110
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2110
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemBackgroundEffect with partial abnormal values
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2110', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2110 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemBackgroundEffect partial abnormal');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22110");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set partial abnormal values (-1,-1,2,pink)');
      let partialAbnormalButton = await driver.findComponent(ON.id('partialAbnormalButton'));
      if (partialAbnormalButton) {
        await partialAbnormalButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮背景效果是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the background effect displays normally');
      Logger.info('TEST', 'Expected: 分段按钮背景按照预设背景效果正常显示，能够正常显示预设的粉色效果');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2110 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2120
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2120
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemBorderRadius with resource reference
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2120', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2120 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemBorderRadius resource');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22120");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set $r(app.string.string1) - 100vp');
      let resourceBorderRadiusButton = await driver.findComponent(ON.id('resourceBorderRadiusButton'));
      if (resourceBorderRadiusButton) {
        await resourceBorderRadiusButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮圆角是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the border radius displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的圆角正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2120 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2130
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2130
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemBorderRadius with 10%
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2130', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2130 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemBorderRadius 10%');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22130");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set 10%');
      let percentBorderRadiusButton = await driver.findComponent(ON.id('percentBorderRadiusButton'));
      if (percentBorderRadiusButton) {
        await percentBorderRadiusButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮圆角是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the border radius displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的圆角正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2130 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2140
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2140
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemBorderRadius with 10fp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2140', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2140 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemBorderRadius 10fp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22140");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set 10fp');
      let fpBorderRadiusButton = await driver.findComponent(ON.id('fpBorderRadiusButton'));
      if (fpBorderRadiusButton) {
        await fpBorderRadiusButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮圆角是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the border radius displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的圆角正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2140 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2150
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2150
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemBorderRadius with 10lpx
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2150', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2150 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemBorderRadius 10lpx');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22150");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set 10lpx');
      let lpxBorderRadiusButton = await driver.findComponent(ON.id('lpxBorderRadiusButton'));
      if (lpxBorderRadiusButton) {
        await lpxBorderRadiusButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮圆角是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the border radius displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的圆角正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2150 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2160
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2160
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemBorderRadius with 10px
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2160', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2160 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemBorderRadius 10px');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22160");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set 10px');
      let pxBorderRadiusButton = await driver.findComponent(ON.id('pxBorderRadiusButton'));
      if (pxBorderRadiusButton) {
        await pxBorderRadiusButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮圆角是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the border radius displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的圆角正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2160 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2170
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2170
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemBorderRadius with 10vp
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2170', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2170 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemBorderRadius 10vp');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22170");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set 10vp');
      let vpBorderRadiusButton = await driver.findComponent(ON.id('vpBorderRadiusButton'));
      if (vpBorderRadiusButton) {
        await vpBorderRadiusButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮圆角是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the border radius displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的圆角正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2170 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2180
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2180
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemBorderRadius with undefined
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2180', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2180 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemBorderRadius undefined');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22180");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set undefined');
      let undefinedBorderRadiusButton = await driver.findComponent(ON.id('undefinedBorderRadiusButton'));
      if (undefinedBorderRadiusButton) {
        await undefinedBorderRadiusButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察分段按钮圆角是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the border radius displays normally');
      Logger.info('TEST', 'Expected: 分段按钮的圆角正常显示（使用默认值）');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2180 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2190
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2190
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemFontColor with rgba yellow
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2190', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2190 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemFontColor rgba');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22190");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击设置按钮
      Logger.info('TEST', 'Step 2-4: Click button to set rgba yellow font color');
      let rgbaFontColorButton = await driver.findComponent(ON.id('rgbaFontColorButton'));
      if (rgbaFontColorButton) {
        await rgbaFontColorButton.click();
        await driver.waitForIdle(1000, 2000);
      }

      // 步骤5：观察非选中的分段按钮的字体颜色是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the font color displays normally');
      Logger.info('TEST', 'Expected: 非选中的分段按钮的字体颜色按照预设颜色正常显示，为黄色');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2190 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2200
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2200
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemFontColor with custom colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2200', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2200 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemFontColor custom');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22200");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击各种自定义颜色按钮
      Logger.info('TEST', 'Step 2-4: Click custom font color buttons');

      let redFontColorButton = await driver.findComponent(ON.id('redFontColorButton'));
      if (redFontColorButton) {
        await redFontColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let greenFontColorButton = await driver.findComponent(ON.id('greenFontColorButton'));
      if (greenFontColorButton) {
        await greenFontColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let blueFontColorButton = await driver.findComponent(ON.id('blueFontColorButton'));
      if (blueFontColorButton) {
        await blueFontColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let yellowFontColorButton = await driver.findComponent(ON.id('yellowFontColorButton'));
      if (yellowFontColorButton) {
        await yellowFontColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let cyanFontColorButton = await driver.findComponent(ON.id('cyanFontColorButton'));
      if (cyanFontColorButton) {
        await cyanFontColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let magentaFontColorButton = await driver.findComponent(ON.id('magentaFontColorButton'));
      if (magentaFontColorButton) {
        await magentaFontColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let whiteFontColorButton = await driver.findComponent(ON.id('whiteFontColorButton'));
      if (whiteFontColorButton) {
        await whiteFontColorButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let semiTransparentFontButton = await driver.findComponent(ON.id('semiTransparentFontButton'));
      if (semiTransparentFontButton) {
        await semiTransparentFontButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察非选中的分段按钮的字体颜色是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the font color displays normally');
      Logger.info('TEST', 'Expected: 非选中的分段按钮的字体颜色按照预设颜色正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2200 end`);
      done();
    })

    /*
    * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2210
    * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2210
    * @tc.type   : Function
    * @tc.size   : MediumTest
    * @tc.level  : 3
    * @tc.desc   : Verify MultiCapsuleSegmentButtonV2 itemFontColor with preset colors
    */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2210', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2210 start`);

      // 步骤1：进入测试页面
      Logger.info('TEST', 'Step 1: Open test page - MultiCapsuleSegmentButtonV2 itemFontColor preset');
      Settings.createWindow("testability/pages/focus_SegmentButtonV2/SegmentButtonV22210");

      let driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 步骤2-4：点击预设颜色按钮
      Logger.info('TEST', 'Step 2-4: Click preset font color buttons');

      let bluePresetFontButton = await driver.findComponent(ON.id('bluePresetFontButton'));
      if (bluePresetFontButton) {
        await bluePresetFontButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let grayPresetFontButton = await driver.findComponent(ON.id('grayPresetFontButton'));
      if (grayPresetFontButton) {
        await grayPresetFontButton.click();
        await driver.waitForIdle(500, 1000);
      }

      let whitePresetFontButton = await driver.findComponent(ON.id('whitePresetFontButton'));
      if (whitePresetFontButton) {
        await whitePresetFontButton.click();
        await driver.waitForIdle(500, 1000);
      }

      // 步骤5：观察非选中的分段按钮的字体颜色是否正常显示
      Logger.info('TEST', 'Step 5: Observe if the font color displays normally');
      Logger.info('TEST', 'Expected: 非选中的分段按钮的字体颜色按照预设颜色正常显示');

      // 截图验证
      await windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SEGMENTBUTTONV2_2210 end`);
      done();
    })



