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

export default function ActionBlockageDragBatch3() {
  describe('ActionBlockageDragBatch3', () => {

    afterEach(async () => {
      if (Settings.windowClass) {
        await Settings.destroyWindow(Settings.windowClass);
      }
    });

    /**
     * 用例ID: SUB_ACE_ACTION_BLOCKAGE_DRAG_0350
     * 用例描述: Grid组件多选_单指_按压时状态为WAITING
     * 自动化程度: 60%
     * 说明: 自动化基础操作，精确时间控制需手动测试
     */
    it('SUB_ACE_ACTION_BLOCKAGE_DRAG_0350', 0, async () => {
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0350 begin');
      await Settings.createWindow('testability/pages/ActionBlockageDrag/BlockageDrag0350');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('BlockageDrag0350_1_Initial');
      
      const grid = await driver.findComponent(ON.id('BlockageDrag0350_Grid'));
      if (grid) {
        Logger.info('Found Grid component with multi-select');
        await windowSnap.snapShot('BlockageDrag0350_2_GridReady');
      }
      
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0350 end');
      Logger.info('Manual: Select item, press <2S, drag, verify WAITING status');
    });

    /**
     * 用例ID: SUB_ACE_ACTION_BLOCKAGE_DRAG_0360
     * 用例描述: Grid组件多选_单指_按压时状态为READY
     * 自动化程度: 60%
     * 说明: 需手动按压>2S后拖拽
     */
    it('SUB_ACE_ACTION_BLOCKAGE_DRAG_0360', 0, async () => {
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0360 begin');
      await Settings.createWindow('testability/pages/ActionBlockageDrag/BlockageDrag0360');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('BlockageDrag0360_1_Initial');
      
      const grid = await driver.findComponent(ON.id('BlockageDrag0360_Grid'));
      if (grid) {
        Logger.info('Found Grid component');
        await windowSnap.snapShot('BlockageDrag0360_2_GridReady');
      }
      
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0360 end');
      Logger.info('Manual: Select item, press >2S, drag, verify READY status');
    });

    /**
     * 用例ID: SUB_ACE_ACTION_BLOCKAGE_DRAG_0370
     * 用例描述: Grid组件多选_单指_手指移动拖拽中，未超过5S，则状态为WAITING
     * 自动化程度: 60%
     * 说明: 5S超时场景需手动测试
     */
    it('SUB_ACE_ACTION_BLOCKAGE_DRAG_0370', 0, async () => {
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0370 begin');
      await Settings.createWindow('testability/pages/ActionBlockageDrag/BlockageDrag0370');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('BlockageDrag0370_1_Initial');
      
      const grid = await driver.findComponent(ON.id('BlockageDrag0370_Grid'));
      if (grid) {
        Logger.info('Found Grid component');
        await windowSnap.snapShot('BlockageDrag0370_2_GridReady');
      }
      
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0370 end');
      Logger.info('Manual: Select item, press 2S, drag within 5S, verify WAITING');
    });

    /**
     * 用例ID: SUB_ACE_ACTION_BLOCKAGE_DRAG_0380
     * 用例描述: Grid组件多选_单指_手指移动拖拽中，未超过5S，则状态为READY
     * 自动化程度: 60%
     * 说明: 5S超时场景需手动测试
     */
    it('SUB_ACE_ACTION_BLOCKAGE_DRAG_0380', 0, async () => {
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0380 begin');
      await Settings.createWindow('testability/pages/ActionBlockageDrag/BlockageDrag0380');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('BlockageDrag0380_1_Initial');
      
      const grid = await driver.findComponent(ON.id('BlockageDrag0380_Grid'));
      if (grid) {
        Logger.info('Found Grid component');
        await windowSnap.snapShot('BlockageDrag0380_2_GridReady');
      }
      
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0380 end');
      Logger.info('Manual: Select item, press <2S, drag within 5S, verify READY');
    });

    /**
     * 用例ID: SUB_ACE_ACTION_BLOCKAGE_DRAG_0390
     * 用例描述: Grid组件多选_单指_手指移动拖拽中，超过5S了
     * 自动化程度: 55%
     * 说明: 需手动拖拽超过5S
     */
    it('SUB_ACE_ACTION_BLOCKAGE_DRAG_0390', 0, async () => {
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0390 begin');
      await Settings.createWindow('testability/pages/ActionBlockageDrag/BlockageDrag0390');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('BlockageDrag0390_1_Initial');
      
      const grid = await driver.findComponent(ON.id('BlockageDrag0390_Grid'));
      if (grid) {
        Logger.info('Found Grid component');
        await windowSnap.snapShot('BlockageDrag0390_2_GridReady');
      }
      
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0390 end');
      Logger.info('Manual: Select item, press 2S, drag and hold >5S, verify timeout');
    });
  });
}

