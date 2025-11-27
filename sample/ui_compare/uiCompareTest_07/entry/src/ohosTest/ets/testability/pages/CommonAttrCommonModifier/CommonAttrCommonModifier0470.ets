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
struct CommonAttrCommonModifier0470 {
  @State currentIndex: number = 0
  
  // 空数组表示不设置任何grayscale值
  private grayscaleValues: Array<undefined> = [undefined]
  private grayscaleNames: Array<string> = ['grayscale: 未设置 (默认行为)']

  build() {
    Column() {
      Text('Grayscale Test (No Setting)')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 20 })

      Text(`Current Index: ${this.currentIndex}`)
        .fontSize(16)
        .margin({ bottom: 10 })

      Text(`Config: ${this.grayscaleNames[this.currentIndex]}`)
        .fontSize(12)
        .margin({ bottom: 20 })

      // 简洁的对比测试区域
      Row() {
        // 参考组件（显式设置grayscale(0)）
        Column() {
          Text('Grayscale(0)')
            .fontSize(14)
            .margin({ bottom: 10 })

          Column() {
            Text('🎯')
              .fontSize(32)
            Text('Explicit 0')
              .fontSize(12)
          }
          .width(100)
          .height(100)
          .backgroundColor('#40E0D0')
          .grayscale(0)
          .justifyContent(FlexAlign.Center)
          .border({ width: 1, color: Color.Gray })
        }
        .margin(20)

        // 测试组件（不设置grayscale属性）
        Column() {
          Text('No Setting')
            .fontSize(14)
            .margin({ bottom: 10 })

          Column() {
            Text('🎯')
              .fontSize(32)
            Text('Default')
              .fontSize(12)
          }
          .width(100)
          .height(100)
          .backgroundColor('#40E0D0')
          // 注意：这里故意不设置.grayscale()属性
          .justifyContent(FlexAlign.Center)
          .border({ width: 2, color: Color.Green })
          .id('grayscale_component_commonmodifier_0470')
        }
        .margin(20)
      }
      .justifyContent(FlexAlign.SpaceAround)
      .margin({ top: 30, bottom: 40 })

      // 简洁的颜色测试
      Column() {
        Text('Default Behavior Test')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 15 })

        Row() {
          Column().width(40).height(40).backgroundColor('#FF6B6B').margin(5) // 红色
          Column().width(40).height(40).backgroundColor('#4ECDC4').margin(5) // 青色
          Column().width(40).height(40).backgroundColor('#45B7D1').margin(5) // 蓝色
          Column().width(40).height(40).backgroundColor('#96CEB4').margin(5) // 绿色
          Column().width(40).height(40).backgroundColor('#FFEAA7').margin(5) // 黄色
        }
        // 不设置grayscale属性，测试默认行为
        .margin({ bottom: 20 })

        Text(`No grayscale setting - system default`)
          .fontSize(12)
          .fontColor(Color.Gray)
      }
      .margin({ bottom: 40 })

      Row() {
        Button('index--')
          .onClick(() => {
            if (this.currentIndex > 0) {
              this.currentIndex--
            }
          })
          .id('index_decrease_button_commonmodifier_0470')
          .margin({ right: 10 })

        Button('index++')
          .onClick(() => {
            if (this.currentIndex < this.grayscaleValues.length - 1) {
              this.currentIndex++
            }
          })
          .id('index_increase_button_commonmodifier_0470')
          .margin({ left: 10 })
      }
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .justifyContent(FlexAlign.Center)
  }
}
