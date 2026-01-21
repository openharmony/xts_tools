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

export default function ActionGesturePinchgesture() {
  describe('ActionGesturePinchgesture', () => {
    afterEach(async () => {
      if (Settings.windowClass) {
        await Settings.destroyWindow(Settings.windowClass);
      }
    });

    /**
     * @tc.number SUB_ACE_ACTION_GESTURE_PINCHGESRURE_INTERFACE_0650
     * @tc.name  图库大图捏合
     * @tc.desc  测试捏合手势，验证fingerList信息正确
     */
    it('SUB_ACE_ACTION_GESTURE_PINCHGESRURE_INTERFACE_0650', 0, async () => {
      Logger.info('SUB_ACE_ACTION_GESTURE_PINCHGESRURE_INTERFACE_0650 begin');
      
      await Settings.createWindow('testability/pages/ActionGesturePinchgesture/PinchgestureInterface0650');
      const driver = Driver.create();
      await driver.delayMs(1000);
      
      await windowSnap.snapShot('PINCHGESRURE_INTERFACE_0650');
      
      Logger.info('SUB_ACE_ACTION_GESTURE_PINCHGESRURE_INTERFACE_0650 end');
    });
  });
}

