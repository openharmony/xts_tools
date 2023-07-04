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
  @State fillOpacity: number = 1

  messageManager: MessageManager = new MessageManager()

  onPageShow() {
    console.info('NavDestination onPageShow')
    globalThis.value = {
      name: 'messageManager', message: this.messageManager
    }
    let callback: Callback = (message: any) => {
      console.error('message = ' + message.name + "--" + message.value)
      if (message.name == 'fillOpacity') {
        this.fillOpacity = message.fillOpacity
      }

    }
    this.messageManager.registerCallback(callback)
  }

  build() {
      Column({ space: 10 }) {
        Polyline()
          .width('90%')
          .height(50)
          .backgroundColor(Color.Pink)
          .points([[20, 0], [0, 100], [100, 90]])
          .strokeWidth(3)
          .stroke(Color.Blue)
          .fillOpacity(this.fillOpacity)
          .fill(Color.Red)
    }
  }
}