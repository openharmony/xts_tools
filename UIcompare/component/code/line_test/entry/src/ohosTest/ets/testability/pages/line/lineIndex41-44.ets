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

@Entry
@Component
struct Index {
  @State message: string = 'Hello'
  @State strokeLineCap : LineCapStyle = LineCapStyle.Butt
  messageManager: MessageManager = new MessageManager()

  onPageShow() {
    console.info('NavDestination onPageShow')
    globalThis.value = {
      name: 'messageManager', message: this.messageManager
    }
    let callback: Callback = (message: any) => {
      console.error('message = ' + message.name + "--" + message.value)
      if (message.name == 'strokeLineCap') {
        this.strokeLineCap = message.strokeLineCap
      }
    }
    this.messageManager.registerCallback(callback)
  }

  build() {
    Column({ space: 10 }) {
      Line()
        .width(150)
        .height(150)
        .startPoint([50, 50])
        .endPoint([150, 150])
        .strokeWidth(8)
        .stroke(Color.Black)
        .backgroundColor(Color.Pink)
        .strokeLineCap(this.strokeLineCap)
    }
  }
}