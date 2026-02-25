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
struct CommonAttrCommonModifier0290 {
  @State currentIndex: number = 0
  
  private saturateValues: Array<number> = [0]
  private saturateNames: Array<string> = ['saturate: 0 (完全去饱和度)']

  build() {
    Column() {
      // 创建测试区域 - 零饱和度测试
      Column() {
        Text('Zero Saturation Test (Grayscale)')
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

          // 测试组件（应用saturate(0)）
          Column() {
            Text('Test Component')
              .fontSize(14)
              .fontWeight(FontWeight.Bold)
              .margin({ bottom: 10 })

            Column() {
              Text('🌈 Grayscale')
                .fontSize(12)
                .margin({ bottom: 5 })

              Row() {
                Text('R').fontColor(Color.Red).fontSize(16).margin(2)
                Text('G').fontColor(Color.Green).fontSize(16).margin(2)
                Text('B').fontColor(Color.Blue).fontSize(16).margin(2)
              }
              .margin({ bottom: 5 })

              Text('Zero Saturation')
                .fontSize(10)
                .fontColor(Color.Gray)
            }
            .width(100)
            .height(80)
            .backgroundColor('#FFE0E0')
            .border({ width: 1, color: Color.Gray })
            .justifyContent(FlexAlign.Center)
            .saturate(this.saturateValues[this.currentIndex])
            .id('saturate_component_commonmodifier_0290')
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

      // 零饱和度彩色验证测试
      Column() {
        Text('Zero Saturation Grayscale Test')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 15 })

        Column() {
          Text('Color to Grayscale Conversion Test')
            .fontSize(12)
            .margin({ bottom: 10 })

          // 第四行：渐变测试
          Row() {
            Text('Gradient:')
              .fontSize(10)
              .width(60)
              .textAlign(TextAlign.Start)

            Column() {
              Text('Rainbow → Gray')
                .fontSize(10)
                .fontColor(Color.White)
            }
            .width(180)
            .height(30)
            .linearGradient({
              direction: GradientDirection.Left,
              colors: [
                [Color.Red, 0.0],
                [Color.Orange, 0.2],
                [Color.Yellow, 0.4],
                [Color.Green, 0.6],
                [Color.Blue, 0.8],
                [Color.Pink, 1.0]
              ]
            })
            .saturate(this.saturateValues[this.currentIndex])
            .justifyContent(FlexAlign.Center)
          }
          .width('100%')
          .margin({ bottom: 8 })

          // 第五行：图像样式测试
          Row() {
            Text('Images:')
              .fontSize(10)
              .width(60)
              .textAlign(TextAlign.Start)

            Row() {
              Column() {
                Text('🌅')
                  .fontSize(24)
                Text('Sunrise')
                  .fontSize(8)
              }
              .width(50)
              .height(40)
              .backgroundColor('#FFE4B5')
              .saturate(this.saturateValues[this.currentIndex])
              .margin(2)
              .justifyContent(FlexAlign.Center)

              Column() {
                Text('🌺')
                  .fontSize(24)
                Text('Flower')
                  .fontSize(8)
              }
              .width(50)
              .height(40)
              .backgroundColor('#FFB6C1')
              .saturate(this.saturateValues[this.currentIndex])
              .margin(2)
              .justifyContent(FlexAlign.Center)

              Column() {
                Text('🍎')
                  .fontSize(24)
                Text('Apple')
                  .fontSize(8)
              }
              .width(50)
              .height(40)
              .backgroundColor('#FFE4E1')
              .saturate(this.saturateValues[this.currentIndex])
              .margin(2)
              .justifyContent(FlexAlign.Center)
            }
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
          Text('Saturate(0) Effect Analysis:')
            .fontSize(12)
            .fontWeight(FontWeight.Bold)
            .margin({ bottom: 5 })

          Text('• 零饱和度 - 完全去除颜色饱和度')
            .fontSize(11)
            .textAlign(TextAlign.Start)
            .width('100%')
            .margin({ bottom: 2 })

          Text('• 所有颜色将转换为对应的灰度值')
            .fontSize(11)
            .textAlign(TextAlign.Start)
            .width('100%')
            .margin({ bottom: 2 })

          Text('• 保持亮度信息，移除色彩信息')
            .fontSize(11)
            .textAlign(TextAlign.Start)
            .width('100%')
            .margin({ bottom: 2 })

          Text('• 实现黑白照片效果')
            .fontSize(11)
            .textAlign(TextAlign.Start)
            .width('100%')
            .margin({ bottom: 2 })

          Text('• 边界值测试：验证完全去饱和的效果')
            .fontSize(11)
            .textAlign(TextAlign.Start)
            .width('100%')
        }
        .width(300)
        .backgroundColor('#F0F0F0')
        .border({ width: 1, color: Color.Gray })
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
          .id('index_decrease_button_commonmodifier_0290')
          .margin({ right: 10 })

        Button('index++')
          .onClick(() => {
            if (this.currentIndex < this.saturateValues.length - 1) {
              this.currentIndex++
            }
          })
          .id('index_increase_button_commonmodifier_0290')
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
