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
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';
import Utils from '../model/Utils';
import { Driver, ON, Component } from '@kit.TestKit';

export default function UiComponentTextRicheditorActionTest() {
  describe('UiComponentTextRicheditorActionTest', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return;
      }
      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`);
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      });
      await Utils.sleep(1000);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorACTION0070');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      Logger.info('TEST', '步骤1: 点击setFontSizeBtn按钮');
      let btn1 = await driver.waitForComponent(ON.id('setFontSizeBtn'), 2000);
      await btn1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_200 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorACTION0070200');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      Logger.info('TEST', '步骤1: 点击setFontSizeBtn按钮');
      let btn1 = await driver.waitForComponent(ON.id('setFontSizeBtn'), 2000);
      await btn1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_200 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_971', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_971 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorACTION0070971');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      Logger.info('TEST', '步骤1: 点击setFontSizeBtn按钮');
      let btn1 = await driver.waitForComponent(ON.id('setFontSizeBtn'), 2000);
      await btn1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_971 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_971_619', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_971_619 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorACTION0070971619');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      Logger.info('TEST', '步骤1: 点击setFontSizeBtn按钮');
      let btn1 = await driver.waitForComponent(ON.id('setFontSizeBtn'), 2000);
      await btn1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_971_619 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_971_619_030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_971_619_030 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorACTION0070971619030');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      Logger.info('TEST', '步骤1: 点击setFontSizeBtn按钮');
      let btn1 = await driver.waitForComponent(ON.id('setFontSizeBtn'), 2000);
      await btn1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0070_971_619_030 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0330 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorACTION0330');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0330 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CROSS_END_PHOTOGRAPHING_AND_SCANNING_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CROSS_END_PHOTOGRAPHING_AND_SCANNING_0010 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorCROSSENDPHOTOGRAPHINGANDSCANNING0010');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CROSS_END_PHOTOGRAPHING_AND_SCANNING_0010 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CROSS_END_PHOTOGRAPHING_AND_SCANNING_0011', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CROSS_END_PHOTOGRAPHING_AND_SCANNING_0011 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorCROSSENDPHOTOGRAPHINGANDSCANNING0011');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CROSS_END_PHOTOGRAPHING_AND_SCANNING_0011 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CROSS_END_PHOTOGRAPHING_AND_SCANNING_0012', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CROSS_END_PHOTOGRAPHING_AND_SCANNING_0012 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorCROSSENDPHOTOGRAPHINGANDSCANNING0012');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CROSS_END_PHOTOGRAPHING_AND_SCANNING_0012 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CROSS_END_PHOTOGRAPHING_AND_SCANNING_0014', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CROSS_END_PHOTOGRAPHING_AND_SCANNING_0014 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorCROSSENDPHOTOGRAPHINGANDSCANNING0014');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CROSS_END_PHOTOGRAPHING_AND_SCANNING_0014 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CROSS_END_PHOTOGRAPHING_AND_SCANNING_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CROSS_END_PHOTOGRAPHING_AND_SCANNING_0020 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorCROSSENDPHOTOGRAPHINGANDSCANNING0020');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CROSS_END_PHOTOGRAPHING_AND_SCANNING_0020 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMLAYOUT_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMLAYOUT_0140 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorCUSTOMLAYOUT0140');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_CUSTOMLAYOUT_0140 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_DFXREINFORCIN_0001', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_DFXREINFORCIN_0001 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorDFXREINFORCIN0001');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_DFXREINFORCIN_0001 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_DFXREINFORCIN_0002', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_DFXREINFORCIN_0002 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorDFXREINFORCIN0002');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_DFXREINFORCIN_0002 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_DFXREINFORCIN_0003', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_DFXREINFORCIN_0003 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorDFXREINFORCIN0003');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_DFXREINFORCIN_0003 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_DRAGPLAINTEXT_0021', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_DRAGPLAINTEXT_0021 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorDRAGPLAINTEXT0021');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_DRAGPLAINTEXT_0021 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_DRAGPLAINTEXT_0022', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_DRAGPLAINTEXT_0022 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorDRAGPLAINTEXT0022');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_DRAGPLAINTEXT_0022 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0015_765', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0015_765 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorLINEHEIGHTAndLETTERSPACING0015765');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      Logger.info('TEST', '步骤1: 点击addTextBtn按钮');
      let btn1 = await driver.waitForComponent(ON.id('addTextBtn'), 2000);
      await btn1.click();
      await driver.waitForIdle(500, 1000);
      
      Logger.info('TEST', '步骤2: 点击deleteBtn按钮');
      let btn2 = await driver.waitForComponent(ON.id('deleteBtn'), 2000);
      await btn2.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_LINEHEIGHT&LETTERSPACING_0015_765 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ONDRAGSTART_002', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ONDRAGSTART_002 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorONDRAGSTART002');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      Logger.info('TEST', '步骤1: 点击simulateDragBtn按钮');
      let btn1 = await driver.waitForComponent(ON.id('simulateDragBtn'), 2000);
      await btn1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ONDRAGSTART_002 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ONDRAGSTART_004', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ONDRAGSTART_004 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorONDRAGSTART004');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      Logger.info('TEST', '步骤1: 点击simulateDragBtn按钮');
      let btn1 = await driver.waitForComponent(ON.id('simulateDragBtn'), 2000);
      await btn1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ONDRAGSTART_004 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ONDRAGSTART_007', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ONDRAGSTART_007 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorONDRAGSTART007');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      Logger.info('TEST', '步骤1: 点击simulateDragBtn按钮');
      let btn1 = await driver.waitForComponent(ON.id('simulateDragBtn'), 2000);
      await btn1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ONDRAGSTART_007 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ONDRAGSTART_012', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ONDRAGSTART_012 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorONDRAGSTART012');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      Logger.info('TEST', '步骤1: 点击simulateDragBtn按钮');
      let btn1 = await driver.waitForComponent(ON.id('simulateDragBtn'), 2000);
      await btn1.click();
      await driver.waitForIdle(500, 1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ONDRAGSTART_012 finish.`);
      done();
    });

    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PRELOADING_SCREEN_0024_108', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PRELOADING_SCREEN_0024_108 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorPRELOADINGSCREEN0024108');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_PRELOADING_SCREEN_0024_108 finish.`);
      done();
    });

    it('SUB_ACE_UI_PC_MENU_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_PC_MENU_0010 start.`);
      Settings.createWindow('testability/pages/UiComponentTextRicheditorAction/UiComponentTextRicheditorMENU0010');
      let driver: Driver = Driver.create();
      await driver.waitForIdle(500, 2000);
      
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_PC_MENU_0010 finish.`);
      done();
    });

  });
}
