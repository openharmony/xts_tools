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
  @State message: string = 'Hello'
  @State widthValue: number = 100
  @State heightValue: number = 100
  @State strokeLineCapValue: LineCapStyle = LineCapStyle.Butt
  @State strokeLineJoinValue: LineJoinStyle = LineJoinStyle.Miter
  @State strokeMiterLimitValue: number = 4
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
      if (message.name == 'strokeLineCap') {
        this.strokeLineCapValue = message.value
      }
      if (message.name == 'strokeLineJoin') {
        this.strokeLineJoinValue = message.value
      }
      if (message.name == 'strokeMiterLimit') {
        this.strokeMiterLimitValue = message.value
      }
    }
    this.messageManager.registerCallback(callback)
  }

  build() {
    Column() {
      Polygon()
        // Polygon:高度'100'-宽度'100'
        .width(this.widthValue)
        .height(this.heightValue)
        // 在矩形框中绘制一个三角形，[['10', 0], ['40', '100'], ['70', 0]]
        .points([['10', 0], ['40', '100'], ['70', 0]])
        .strokeLineCap(this.strokeLineCapValue)
        .strokeLineJoin(this.strokeLineJoinValue)
        .strokeMiterLimit(this.strokeMiterLimitValue)
        .fill(Color.Pink)
        .stroke(0xEE8443)
        .strokeWidth(10)
        .backgroundColor(Color.Brown)
        .margin({ top: 100 })
    }
    .width('100%')
    .height('100%')
  }
}