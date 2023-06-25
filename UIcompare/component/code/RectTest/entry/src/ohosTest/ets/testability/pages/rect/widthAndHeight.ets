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
  @State widthValue: number = 150
  @State heightValue: number = 150

  messageManager: MessageManager = new MessageManager()

  onPageShow() {
    console.info('NavDestination onPageShow')
    globalThis.value = {
      name: 'messageManager', message: this.messageManager
    }
    let callback: Callback = (message: any) => {
      console.error('message = ' + message.name + "--" + message.value)
      if (message.name == 'width') {
        this.widthValue = message.value
      }
      if (message.name == 'height') {
        this.heightValue = message.value
      }
    }
    this.messageManager.registerCallback(callback)
  }

  build() {
    Column({ space: 10 }) {
      // 绘制150 * 150矩形
      Rect()
        .width(this.widthValue)
        .height(this.heightValue)
        .stroke(Color.Black)
        .strokeWidth(3)
        .backgroundColor(Color.Pink)
        .fillOpacity(0)
    }
    .width('100%')
    .margin({top:100})
  }
}