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
      Column({ space: 10 }) {
        Polyline({ width: 150, height: 150 })
          .width(100)
          .height(100)
          .points([[40, 10], [20, 100], [120, 90]])
          .backgroundColor(Color.Pink)
          .strokeWidth(8)
          .stroke(Color.Blue)
          .fillOpacity(0)
    }
  }
}