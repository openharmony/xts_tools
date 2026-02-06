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

export default function ActionBlockageDragBatch2() {
  describe('ActionBlockageDragBatch2', () => {

    afterEach(async () => {
      if (Settings.windowClass) {
        await Settings.destroyWindow(Settings.windowClass);
      }
    });

    /**
     * 用例ID: SUB_ACE_ACTION_BLOCKAGE_DRAG_0100
     * 用例描述: image_单指_按压时状态为WAITING
     * 自动化程度: 65%
     * 说明: 自动化基础操作，精确时间控制需手动测试
     */
    it('SUB_ACE_ACTION_BLOCKAGE_DRAG_0100', 0, async () => {
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0100 begin');
      await Settings.createWindow('testability/pages/ActionBlockageDrag/BlockageDrag0100');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('BlockageDrag0100_1_Initial');
      
      const dragImage = await driver.findComponent(ON.id('BlockageDrag0100_DragImage'));
      if (dragImage) {
        Logger.info('Found drag image component');
        const bounds = await dragImage.getBounds();
        const startX = (bounds.left + bounds.right) / 2;
        const startY = (bounds.top + bounds.bottom) / 2;
        
        // 快速拖拽（模拟按压<2S场景）
        await driver.drag(startX, startY, startX + 100, startY + 100, 1200);
        Logger.info('Quick drag completed - simulating <2S press scenario');
        await driver.delayMs(1000);
        
        await windowSnap.snapShot('BlockageDrag0100_2_AfterDrag');
      }
      
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0100 end');
      Logger.info('Manual: Verify WAITING status in page log');
    });

    /**
     * 用例ID: SUB_ACE_ACTION_BLOCKAGE_DRAG_0110
     * 用例描述: image_单指_按压时状态为READY
     * 自动化程度: 60%
     * 说明: 需手动按压>2S后拖拽
     */
    it('SUB_ACE_ACTION_BLOCKAGE_DRAG_0110', 0, async () => {
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0110 begin');
      await Settings.createWindow('testability/pages/ActionBlockageDrag/BlockageDrag0110');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('BlockageDrag0110_1_Initial');
      
      const dragImage = await driver.findComponent(ON.id('BlockageDrag0110_DragImage'));
      if (dragImage) {
        Logger.info('Found drag image component');
        await windowSnap.snapShot('BlockageDrag0110_2_Ready');
      }
      
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0110 end');
      Logger.info('Manual: Press >2S then drag, verify READY status');
    });

    /**
     * 用例ID: SUB_ACE_ACTION_BLOCKAGE_DRAG_0120
     * 用例描述: image_单指_手指移动拖拽中，未超过5S，则状态为WAITING
     * 自动化程度: 60%
     * 说明: 5S超时场景需手动测试
     */
    it('SUB_ACE_ACTION_BLOCKAGE_DRAG_0120', 0, async () => {
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0120 begin');
      await Settings.createWindow('testability/pages/ActionBlockageDrag/BlockageDrag0120');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('BlockageDrag0120_1_Initial');
      
      const dragImage = await driver.findComponent(ON.id('BlockageDrag0120_DragImage'));
      if (dragImage) {
        Logger.info('Found drag image component');
        await windowSnap.snapShot('BlockageDrag0120_2_Ready');
      }
      
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0120 end');
      Logger.info('Manual: Press 2S, drag, release within 5S, verify WAITING');
    });

    /**
     * 用例ID: SUB_ACE_ACTION_BLOCKAGE_DRAG_0130
     * 用例描述: image_单指_手指移动拖拽中，未超过5S，则状态为READY
     * 自动化程度: 60%
     * 说明: 5S超时场景需手动测试
     */
    it('SUB_ACE_ACTION_BLOCKAGE_DRAG_0130', 0, async () => {
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0130 begin');
      await Settings.createWindow('testability/pages/ActionBlockageDrag/BlockageDrag0130');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('BlockageDrag0130_1_Initial');
      
      const dragImage = await driver.findComponent(ON.id('BlockageDrag0130_DragImage'));
      if (dragImage) {
        Logger.info('Found drag image component');
        await windowSnap.snapShot('BlockageDrag0130_2_Ready');
      }
      
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0130 end');
      Logger.info('Manual: Press <2S, drag within 5S, verify READY');
    });

    /**
     * 用例ID: SUB_ACE_ACTION_BLOCKAGE_DRAG_0140
     * 用例描述: image_单指_手指移动拖拽中，超过5S了
     * 自动化程度: 55%
     * 说明: 需手动拖拽超过5S
     */
    it('SUB_ACE_ACTION_BLOCKAGE_DRAG_0140', 0, async () => {
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0140 begin');
      await Settings.createWindow('testability/pages/ActionBlockageDrag/BlockageDrag0140');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('BlockageDrag0140_1_Initial');
      
      const dragImage = await driver.findComponent(ON.id('BlockageDrag0140_DragImage'));
      if (dragImage) {
        Logger.info('Found drag image component');
        await windowSnap.snapShot('BlockageDrag0140_2_Ready');
      }
      
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0140 end');
      Logger.info('Manual: Press 2S, drag and hold >5S, verify timeout');
    });

    /**
     * 用例ID: SUB_ACE_ACTION_BLOCKAGE_DRAG_0150
     * 用例描述: image绑定菜单的_单指_按压时状态为WAITING
     * 自动化程度: 65%
     * 说明: 带菜单的拖拽，需手动测试菜单不冲突
     */
    it('SUB_ACE_ACTION_BLOCKAGE_DRAG_0150', 0, async () => {
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0150 begin');
      await Settings.createWindow('testability/pages/ActionBlockageDrag/BlockageDrag0150');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('BlockageDrag0150_1_Initial');
      
      const dragImage = await driver.findComponent(ON.id('BlockageDrag0150_DragImage'));
      if (dragImage) {
        Logger.info('Found drag image with menu');
        const bounds = await dragImage.getBounds();
        const startX = (bounds.left + bounds.right) / 2;
        const startY = (bounds.top + bounds.bottom) / 2;
        
        // 快速拖拽
        await driver.drag(startX, startY, startX + 100, startY + 100, 1200);
        Logger.info('Drag with menu completed');
        await driver.delayMs(1000);
        
        await windowSnap.snapShot('BlockageDrag0150_2_AfterDrag');
      }
      
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0150 end');
      Logger.info('Manual: Verify menu does not interfere with drag, WAITING status');
    });

    /**
     * 用例ID: SUB_ACE_ACTION_BLOCKAGE_DRAG_0160
     * 用例描述: image绑定菜单的_单指_按压时状态为READY
     * 自动化程度: 60%
     * 说明: 需手动按压>2S后拖拽，验证菜单不干扰
     */
    it('SUB_ACE_ACTION_BLOCKAGE_DRAG_0160', 0, async () => {
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0160 begin');
      await Settings.createWindow('testability/pages/ActionBlockageDrag/BlockageDrag0160');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('BlockageDrag0160_1_Initial');
      
      const dragImage = await driver.findComponent(ON.id('BlockageDrag0160_DragImage'));
      if (dragImage) {
        Logger.info('Found drag image with menu');
        await windowSnap.snapShot('BlockageDrag0160_2_Ready');
      }
      
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0160 end');
      Logger.info('Manual: Press >2S, drag, verify READY status');
    });

    /**
     * 用例ID: SUB_ACE_ACTION_BLOCKAGE_DRAG_0170
     * 用例描述: image绑定菜单的_单指_手指移动拖拽中，未超过5S，则状态为WAITING
     * 自动化程度: 60%
     * 说明: 带菜单的5S超时测试
     */
    it('SUB_ACE_ACTION_BLOCKAGE_DRAG_0170', 0, async () => {
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0170 begin');
      await Settings.createWindow('testability/pages/ActionBlockageDrag/BlockageDrag0170');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('BlockageDrag0170_1_Initial');
      
      const dragImage = await driver.findComponent(ON.id('BlockageDrag0170_DragImage'));
      if (dragImage) {
        Logger.info('Found drag image with menu');
        await windowSnap.snapShot('BlockageDrag0170_2_Ready');
      }
      
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0170 end');
      Logger.info('Manual: Drag within 5S, verify WAITING status');
    });

    /**
     * 用例ID: SUB_ACE_ACTION_BLOCKAGE_DRAG_0180
     * 用例描述: image绑定菜单的_单指_手指移动拖拽中，未超过5S，则状态为READY
     * 自动化程度: 60%
     * 说明: 带菜单的5S超时测试
     */
    it('SUB_ACE_ACTION_BLOCKAGE_DRAG_0180', 0, async () => {
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0180 begin');
      await Settings.createWindow('testability/pages/ActionBlockageDrag/BlockageDrag0180');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('BlockageDrag0180_1_Initial');
      
      const dragImage = await driver.findComponent(ON.id('BlockageDrag0180_DragImage'));
      if (dragImage) {
        Logger.info('Found drag image with menu');
        await windowSnap.snapShot('BlockageDrag0180_2_Ready');
      }
      
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0180 end');
      Logger.info('Manual: Drag within 5S, verify READY status');
    });

    /**
     * 用例ID: SUB_ACE_ACTION_BLOCKAGE_DRAG_0190
     * 用例描述: image绑定菜单的_单指_手指移动拖拽中，超过5S了
     * 自动化程度: 55%
     * 说明: 需手动拖拽超过5S，验证菜单不干扰
     */
    it('SUB_ACE_ACTION_BLOCKAGE_DRAG_0190', 0, async () => {
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0190 begin');
      await Settings.createWindow('testability/pages/ActionBlockageDrag/BlockageDrag0190');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('BlockageDrag0190_1_Initial');
      
      const dragImage = await driver.findComponent(ON.id('BlockageDrag0190_DragImage'));
      if (dragImage) {
        Logger.info('Found drag image with menu');
        await windowSnap.snapShot('BlockageDrag0190_2_Ready');
      }
      
      Logger.info('SUB_ACE_ACTION_BLOCKAGE_DRAG_0190 end');
      Logger.info('Manual: Drag and hold >5S, verify timeout');
    });
  });
}

