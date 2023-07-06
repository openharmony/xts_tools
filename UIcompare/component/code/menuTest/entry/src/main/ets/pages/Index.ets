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

@Entry
@Component
struct Index {
  @State select: boolean = true
  private iconStr: ResourceStr = $r("app.media.icon")
  private iconStr2: ResourceStr = $r("app.media.icon")

  @Builder
  SubMenu() {
    Menu() {
      MenuItem({ content: "复制", labelInfo: "Ctrl+C" })
      MenuItem({ content: "粘贴", labelInfo: "Ctrl+V" })
    }
  }

  build() {
    Row() {
      Menu() {
        MenuItem({
          startIcon: this.iconStr,
          content: "菜单选项",
          endIcon: $r("app.media.icon"),
          builder: this.SubMenu.bind(this)
        })
        .bindMenu(this.SubMenu)
      }
    }
    .height('100%')
    .width('100%')
    .backgroundColor(Color.Pink)
  }
}