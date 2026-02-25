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
struct CommonAttrCommonModifier0280 {
  @State currentIndex: number = 0
  
  private saturateValues: Array<number> = [-1]
  private saturateNames: Array<string> = ['saturate: -1 (负值饱和度)']

  build() {
    Column() {
      // 创建测试区域 - 负值饱和度测试
      Column() {
        Text('Negative Saturation Test (-1)')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 20 })

        Row() {
          // 参考组件（无saturate效果）
          Column() {
            Text('Reference')
              .fontSize(14)
              .fontWeight(FontWeight.Bold)
              .margin({ bottom: 10 })

            Column() {
              Text('🌈 Original Colors')
                .fontSize(12)
                .margin({ bottom: 5 })

              Row() {
                Text('R').fontColor(Color.Red).fontSize(16).margin(2)
                Text('G').fontColor(Color.Green).fontSize(16).margin(2)
                Text('B').fontColor(Color.Blue).fontSize(16).margin(2)
              }
              .margin({ bottom: 5 })

              Text('Normal Saturation')
                .fontSize(10)
                .fontColor(Color.Gray)
            }
            .width(100)
            .height(80)
            .backgroundColor('#FFE0E0')
            .border({ width: 1, color: Color.Gray })
            .justifyContent(FlexAlign.Center)
          }
          .width(120)
          .margin(10)
          .padding(10)
          .backgroundColor('#F5F5F5')
          .borderRadius(8)

          // 测试组件（应用saturate(-1)）
          Column() {
            Text('Test Component')
              .fontSize(14)
              .fontWeight(FontWeight.Bold)
              .margin({ bottom: 10 })

            Column() {
              Text('🌈 Negative Saturated')
                .fontSize(12)
                .margin({ bottom: 5 })

              Row() {
                Text('R').fontColor(Color.Red).fontSize(16).margin(2)
                Text('G').fontColor(Color.Green).fontSize(16).margin(2)
                Text('B').fontColor(Color.Blue).fontSize(16).margin(2)
              }
              .margin({ bottom: 5 })

              Text('-1 Saturation')
                .fontSize(10)
                .fontColor(Color.Gray)
            }
            .width(100)
            .height(80)
            .backgroundColor('#FFE0E0')
            .border({ width: 1, color: Color.Gray })
            .justifyContent(FlexAlign.Center)
            .saturate(this.saturateValues[this.currentIndex])
            .id('saturate_component_commonmodifier_0280')
          }
          .width(120)
          .margin(10)
          .padding(10)
          .backgroundColor('#E3F2FD')
          .borderRadius(8)
        }
        .justifyContent(FlexAlign.SpaceAround)
        .width(300)
        .height(150)
        .backgroundColor('#F0F0F0')
        .border({ width: 2, color: Color.Gray })
      }
      .margin({ top: 20, bottom: 30 })

      // 负值饱和度彩色验证测试
      Column() {
        Text('Negative Saturation Color Test')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 15 })

        Column() {
          Text('Color Palette - Negative Saturation Effect')
            .fontSize(12)
            .margin({ bottom: 10 })

          // 第一行：原始颜色
          Row() {
            Text('Original:')
              .fontSize(10)
              .width(60)
              .textAlign(TextAlign.Start)

            Row() {
              Text('🔴').fontSize(20).margin(2)
              Text('🟠').fontSize(20).margin(2)
              Text('🟡').fontSize(20).margin(2)
              Text('🟢').fontSize(20).margin(2)
              Text('🔵').fontSize(20).margin(2)
              Text('🟣').fontSize(20).margin(2)
            }
            .backgroundColor('#FFFFFF')
            .padding(5)
            .border({ width: 1, color: Color.Gray })
          }
          .width('100%')
          .margin({ bottom: 8 })

          // 第二行：saturate(-1)效果
          Row() {
            Text('-1 Sat:')
              .fontSize(10)
              .width(60)
              .textAlign(TextAlign.Start)

            Row() {
              Text('🔴').fontSize(20).margin(2)
              Text('🟠').fontSize(20).margin(2)
              Text('🟡').fontSize(20).margin(2)
              Text('🟢').fontSize(20).margin(2)
              Text('🔵').fontSize(20).margin(2)
              Text('🟣').fontSize(20).margin(2)
            }
            .backgroundColor('#FFFFFF')
            .padding(5)
            .border({ width: 1, color: Color.Gray })
            .saturate(this.saturateValues[this.currentIndex])
          }
          .width('100%')
          .margin({ bottom: 8 })
        }
        .width(280)
        .backgroundColor('#FAFAFA')
        .border({ width: 1, color: Color.Gray })
        .padding(10)
        .borderRadius(8)
      }
      .margin({ bottom: 30 })

      // 显示当前saturate值和说明
      Column() {
        Text(`Current Saturate Value: ${this.saturateValues[this.currentIndex]}`)
          .fontSize(14)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 10 })

        Column() {
          Text('Saturate(-1) Effect Analysis:')
            .fontSize(12)
            .fontWeight(FontWeight.Bold)
            .margin({ bottom: 5 })

          Text('• 负值饱和度 - 异常边界值测试')
            .fontSize(11)
            .textAlign(TextAlign.Start)
            .width('100%')
            .margin({ bottom: 2 })

          Text('• 理论上应产生反向饱和度效果')
            .fontSize(11)
            .textAlign(TextAlign.Start)
            .width('100%')
            .margin({ bottom: 2 })

          Text('• 可能被系统限制为0或产生特殊效果')
            .fontSize(11)
            .textAlign(TextAlign.Start)
            .width('100%')
            .margin({ bottom: 2 })

          Text('• 测试系统对负值的处理机制')
            .fontSize(11)
            .textAlign(TextAlign.Start)
            .width('100%')
            .margin({ bottom: 2 })

          Text('• 边界值测试：验证负值的异常处理')
            .fontSize(11)
            .textAlign(TextAlign.Start)
            .width('100%')
        }
        .width(300)
        .backgroundColor('#FFE4E1')
        .border({ width: 1, color: Color.Red })
        .padding(8)
      }
      .margin({ bottom: 20 })

      Row() {
        Button('index--')
          .onClick(() => {
            if (this.currentIndex > 0) {
              this.currentIndex--
            }
          })
          .id('index_decrease_button_commonmodifier_0280')
          .margin({ right: 10 })

        Button('index++')
          .onClick(() => {
            if (this.currentIndex < this.saturateValues.length - 1) {
              this.currentIndex++
            }
          })
          .id('index_increase_button_commonmodifier_0280')
          .margin({ left: 10 })
      }
      .margin({ top: 20 })
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .justifyContent(FlexAlign.Center)
  }
}
