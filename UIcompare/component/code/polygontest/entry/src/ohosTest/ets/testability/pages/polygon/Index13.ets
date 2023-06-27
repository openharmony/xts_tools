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
  messageManager: MessageManager = new MessageManager()

  onPageShow() {
    console.info('NavDestination onPageShow')
    globalThis.value = {
      name: 'messageManager', message: this.messageManager
    }
    let callback: Callback = (message: any) => {
      console.error('message = ' + message.name + "--" + message.value)
    }
    this.messageManager.registerCallback(callback)
  }

  build() {
    Column() {
      Polygon()
        // Polygon:高度'150'-宽度'150'
        .width(150)
        .height(150)
        // 在矩形框中绘制一个五边形，起点(150, 0)，依次经过(0, 150)、(120, 1100)和(180, 1100)，终点(1100, 150)
        .points([[150, 0], [0, 150], [120, 1100], [180, 1100], [1100, 150]])
        .position({x:10,y:10})
        .fillOpacity(0)
        .stroke(Color.Black)
        .strokeWidth(5)
        .backgroundColor(Color.Brown)
        .margin({ top: 100 })
    }
    .width('100%')
    .height('100%')
  }
}