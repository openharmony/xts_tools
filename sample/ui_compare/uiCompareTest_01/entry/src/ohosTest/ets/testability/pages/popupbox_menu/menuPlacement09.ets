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
struct MenuPlacement09 {
  @Builder
  SubMenu() {
    Menu() {
      MenuItem({ content: "子菜单1" })
      MenuItem({ content: "子菜单2" })
      MenuItem({ content: "子菜单3" })
    }
    .width(140)
    .height("20%")
  }

  @Builder
  MyMenu() {
    Menu() {
      MenuItem({ content: "菜单选项1" })
      MenuItem({ 
        content: "菜单选项2",
        builder: (): void => this.SubMenu()
      })
    }
    .width(64)
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
          .id('button_09')
          .width(64)
          .height(40)
          .bindMenu(this.MyMenu, ResponseType.RightClick, {
            placement: Placement.BottomLeft
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
    .justifyContent(FlexAlign.Center)
    .alignItems(VerticalAlign.Bottom)
    .padding({ bottom: "33%" })
  }
}
