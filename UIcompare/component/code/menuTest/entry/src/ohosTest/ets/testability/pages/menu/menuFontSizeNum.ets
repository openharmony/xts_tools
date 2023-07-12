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
    Row() {
      Menu() {
          MenuItem({
            startIcon: $r("app.media.icon"),
            content: "菜单选项1"
          })
          MenuItem({
            startIcon: $r("app.media.icon"),
            content: "菜单选项2"
          })
          MenuItem({
            startIcon: $r("app.media.icon"),
            content: "菜单选项3"
          })
      }
      .font({size: 10})
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Pink)
  }
}