/**
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

@Entry
@Component
struct MenuPlacement08 {
  @Builder
  MyMenu() {
    Menu() {
      MenuItem({ content: "🔧 系统工具" })
      MenuItem({ content: "⚙️ 高级设置" })
      MenuItem({ content: "🛠️ 开发工具" })
      MenuItem({ content: "📊 性能分析" })
    }
    .width(48)
    .backgroundColor(0xFFFFFF)
    .borderRadius(8)
    .shadow({
      radius: 12,
      color: 0x1A000000,
      offsetX: 0,
      offsetY: 4
    })
  }

  @Builder
  InfoCard() {
    Column() {
      Text("🎯 菜单定位测试")
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .fontColor(0x333333)
        .margin({ bottom: 8 })
      
      Text("RightTop 定位")
        .fontSize(16)
        .fontColor(0x666666)
        .margin({ bottom: 16 })
      
      Text("• 菜单宽度: 48vp")
        .fontSize(14)
        .fontColor(0x888888)
        .margin({ bottom: 4 })
      
      Text("• 触发方式: 右击")
        .fontSize(14)
        .fontColor(0x888888)
        .margin({ bottom: 4 })
      
      Text("• 定位方向: 右上角")
        .fontSize(14)
        .fontColor(0x888888)
    }
    .padding(20)
    .backgroundColor(0xFFFFFF)
    .borderRadius(16)
    .shadow({
      radius: 8,
      color: 0x1A000000,
      offsetX: 0,
      offsetY: 2
    })
    .margin({ bottom: 30 })
  }

  build() {
    Stack() {
      // 渐变背景
      Column()
        .width("100%")
        .height("100%")
        .linearGradient({
          direction: GradientDirection.Bottom,
          colors: [[0xFF1ABC9C, 0.0], [0xFF16A085, 0.3], [0xFF27AE60, 0.7], [0xFF2ECC71, 1.0]]
        })
      
      // 装饰性圆形
      Circle()
        .width(110)
        .height(110)
        .fill(0x20FFFFFF)
        .position({ x: "30%", y: "10%" })
      
      Circle()
        .width(150)
        .height(150)
        .fill(0x15FFFFFF)
        .position({ x: "60%", y: "70%" })
      
      // 主要内容
      Row() {
        Column() {
          this.InfoCard()
          
          Button("🎮 测试菜单")
            .id('button_08')
            .width(120)
            .height(50)
            .fontSize(16)
            .fontWeight(FontWeight.Medium)
            .backgroundColor(0x1ABC9C)
            .fontColor(0xFFFFFF)
            .borderRadius(25)
            .shadow({
              radius: 8,
              color: 0x2A1ABC9C,
              offsetX: 0,
              offsetY: 4
            })
            .bindContextMenu(this.MyMenu, ResponseType.RightClick, {
              placement: Placement.RightTop
            })
            .onClick(() => {
              // 保持测试逻辑不变
            })
        }
        .width("100%")
        .height("100%")
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.End)
      .alignItems(VerticalAlign.Center)
      .padding({ right: 20, bottom: 50 })
    }
    .width("100%")
    .height("100%")
  }
}
