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

    