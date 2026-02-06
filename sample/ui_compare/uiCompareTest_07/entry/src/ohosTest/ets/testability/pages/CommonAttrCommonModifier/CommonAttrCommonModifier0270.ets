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
struct CommonAttrCommonModifier0270 {
  @State currentIndex: number = 0
  
  private saturateValues: Array<number> = [100]
  private saturateNames: Array<string> = ['saturate: 100 (极高饱和度)']

  build() {
    Column() {
      // 创建测试区域 - 极高饱和度测试
      Column() {
        Text('Extreme High Saturation Test (100x)')
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

          // 测试组件（应用saturate(100)）
          Column() {
            Text('Test Component')
              .fontSize(14)
              .fontWeight(FontWeight.Bold)
              .margin({ bottom: 10 })

            Column() {
              Text('🌈 Hyper Saturated')
                .fontSize(12)
                .margin({ bottom: 5 })

              Row() {
                Text('R').fontColor(Color.Red).fontSize(16).margin(2)
                Text('G').fontColor(Color.Green).fontSize(16).margin(2)
                Text('B').fontColor(Color.Blue).fontSize(16).margin(2)
              }
              .margin({ bottom: 5 })

              Text('100x Saturation')
                .fontSize(10)
                .fontColor(Color.Gray)
            }
            .width(100)
            .height(80)
            .backgroundColor('#FFE0E0')
            .border({ width: 1, color: Color.Gray })
            .justifyContent(FlexAlign.Center)
            .saturate(this.saturateValues[this.currentIndex])
            .id('saturate_component_commonmodifier_0270')
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

      // 极高饱和度彩色验证测试
      Column() {
        Text('Extreme Saturation Color Test')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 15 })

        Column() {
          Text('Vibrant Color Palette - Saturation Comparison')
            .fontSize(12)
            .margin({ bottom: 10 })

          // 第三行：彩色方块测试
          Row() {
            Text('Blocks:')
              .fontSize(10)
              .width(60)
              .textAlign(TextAlign.Start)

            Row() {
              Column().width(25).height(25).backgroundColor('#FF6B6B').margin(2)
              Column().width(25).height(25).backgroundColor('#4ECDC4').margin(2)
              Column().width(25).height(25).backgroundColor('#45B7D1').margin(2)
              Column().width(25).height(25).backgroundColor('#96CEB4').margin(2)
              Column().width(25).height(25).backgroundColor('#FFEAA7').margin(2)
              Column().width(25).height(25).backgroundColor('#DDA0DD').margin(2)
            }
            .saturate(this.saturateValues[this.currentIndex])
          }
          .width('100%')
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
          Text('Saturate(100) Effect Analysis:')
            .fontSize(12)
            .fontWeight(FontWeight.Bold)
            .margin({ bottom: 5 })

          Text('• 100倍饱和度 - 极端的颜色增强效果')
            .fontSize(11)
            .textAlign(TextAlign.Start)
            .width('100%')
            .margin({ bottom: 2 })

          Text('• 所有颜色将变得极其鲜艳和强烈')
            .fontSize(11)
            .textAlign(TextAlign.Start)
            .width('100%')
            .margin({ bottom: 2 })

          Text('• 可能导致颜色失真或过度饱和')
            .fontSize(11)
            .textAlign(TextAlign.Start)
            .width('100%')
            .margin({ bottom: 2 })

          Text('• 测试系统对极值的处理能力')
            .fontSize(11)
            .textAlign(TextAlign.Start)
            .width('100%')
            .margin({ bottom: 2 })

          Text('• 边界值测试：验证100倍增强的视觉效果')
            .fontSize(11)
            .textAlign(TextAlign.Start)
            .width('100%')
        }
        .width(300)
        .backgroundColor('#FFF8DC')
        .border({ width: 1, color: Color.Orange })
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
          .id('index_decrease_button_commonmodifier_0270')
          .margin({ right: 10 })

        Button('index++')
          .onClick(() => {
            if (this.currentIndex < this.saturateValues.length - 1) {
              this.currentIndex++
            }
          })
          .id('index_increase_button_commonmodifier_0270')
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
