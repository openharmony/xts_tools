/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
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
struct MenuPlacement28 {
  @Builder
  MyMenu() {
    Menu() {
      MenuItem({ content: "菜单选项1" })
      MenuItem({ content: "菜单选项2" })
    }
    .width(100)
  }

  build() {
    Row() {
      Column() {
        Text("Menu Placement Test")
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 20 })
        
        Text("右击按钮显示菜单")
          .fontSize(16)
          .margin({ bottom: 10 })
        
        Button("测试按钮")
          .id('button_28')
          .width(64)
          .height(40)
          .bindContextMenu(this.MyMenu, ResponseType.RightClick, {
            placement: Placement.BottomRight
          })
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)
      .alignItems(HorizontalAlign.Center)
    }
    .width("100%")
    .height("100%")
    .backgroundColor(0xF5F5F5)
    .justifyContent(FlexAlign.End)
    .alignItems(VerticalAlign.Center)
    .padding({ right: 20 })
  }
}
