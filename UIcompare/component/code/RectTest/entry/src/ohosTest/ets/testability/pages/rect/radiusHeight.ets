/*
 * Copyright (c) 2023 iSoftStone Information Technology (Group) Co.,Ltd.
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

import { MessageManager, Callback } from '../../../test/model/MessageManager';
import { AxisValue } from '@ohos.multimodalInput.mouseEvent';

@Entry
@Component
struct Index {
  @State radiusHeightValue: number = 0

  messageManager: MessageManager = new MessageManager()

  onPageShow() {
    console.info('NavDestination onPageShow')
    globalThis.value = {
      name: 'messageManager', message: this.messageManager
    }
    let callback: Callback = (message: any) => {
      console.error('message = ' + message.name + "--" + message.value)
      if (message.name == 'radiusHeight') {
        this.radiusHeightValue = message.value
      }
    }
    this.messageManager.registerCallback(callback)
  }

  build() {
    Column() {
      // 绘制300 * 300矩形
      Rect()
        .width(300)
        .height(300)
        .radiusHeight(this.radiusHeightValue)
        .fill(Color.Pink)
        .stroke(Color.Black)
        .strokeWidth(3)
    }
    .width('100%')
    .margin({top:100})
  }
}