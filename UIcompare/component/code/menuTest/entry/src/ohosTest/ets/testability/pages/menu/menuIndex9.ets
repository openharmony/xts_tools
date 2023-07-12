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
  @State select: boolean = true
  private iconStr: ResourceStr = $r("app.media.icon")
  @State contentFont: Font = {size:16.0}
  @State content: string = "菜单选项"

  messageManager: MessageManager = new MessageManager()
  onPageShow() {
    console.info('NavDestination onPageShow')
    globalThis.value = {
      name: 'messageManager', message: this.messageManager
    }
    let callback: Callback = (message: any) => {
      console.error('message = ' + message.name + "--" + message.value)
      if (message.name == 'contentFont') {
        this.contentFont = message.contentFont
      }
      if (message.name == 'content') {
        this.content = message.content
      }
    }
    this.messageManager.registerCallback(callback)
  }

  build() {
    Row() {
      MenuItemGroup({ header: '小标题' }) {
        MenuItem({
          startIcon: this.iconStr,
          content: this.content,
          endIcon: $r("app.media.icon"),
        })
          .contentFont(this.contentFont)
        MenuItem({
          startIcon: this.iconStr,
          content: this.content,
          endIcon: $r("app.media.icon"),
        })
          .contentFont(this.contentFont)
        MenuItem({
          startIcon: this.iconStr,
          content: this.content,
          endIcon: $r("app.media.icon"),
        })
          .contentFont(this.contentFont)
      }
    }
    .backgroundColor(Color.Pink)
    .height('100%')
    .width('100%')
  }
}