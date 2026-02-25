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
struct CommonAttrCommonModifier0160 {
  @State currentIndex: number = 0
  
  private sepiaValues: Array<number> = [
    0.3,
    0,
    0.6,
    0.9,
    1111,
    -1
  ]

  private sepiaNames: Array<string> = [
    '0.3 (light sepia)',
    '0 (no sepia)',
    '0.6 (medium sepia)',
    '0.9 (strong sepia)',
    '1111 (extreme value)',
    '-1 (negative value)'
  ]

  build() {
    Column() {
      Text('Sepia Test')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 20 })

      Text(`Current Index: ${this.currentIndex}`)
        .fontSize(16)
        .margin({ bottom: 10 })

      Text(`Sepia: ${this.sepiaNames[this.currentIndex]}`)
        .fontSize(14)
        .margin({ bottom: 20 })
        .textAlign(TextAlign.Center)

      // 创建测试区域 - 包含彩色内容来展示棕褐色滤镜效果
      Column() {
        Text('Sepia Test Area')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 20 })

        Row() {
          // 参考组件（不应用sepia）
          Column() {
            Text('Reference')
              .fontSize(14)
              .fontColor(Color.White)
              .margin({ bottom: 5 })
            
            // 彩色内容
            Column() {
              Row() {
                Column().width(20).height(20).backgroundColor(Color.Red)
                Column().width(20).height(20).backgroundColor(Color.Green)
                Column().width(20).height(20).backgroundColor(Color.Blue)
              }
              Row() {
                Column().width(20).height(20).backgroundColor(Color.Yellow)
                Column().width(20).height(20).backgroundColor('#800080')
                Column().width(20).height(20).backgroundColor(Color.Orange)
              }
            }
            .margin({ top: 5 })
          }
          .width(120)
          .height(120)
          .backgroundColor(Color.Gray)
          .justifyContent(FlexAlign.Center)
          .margin(10)

          // 测试组件（应用sepia）
          Column() {
            Text('Test Item')
              .fontSize(14)
              .fontColor(Color.White)
              .margin({ bottom: 5 })
            
            // 彩色内容
            Column() {
              Row() {
                Column().width(20).height(20).backgroundColor(Color.Red)
                Column().width(20).height(20).backgroundColor(Color.Green)
                Column().width(20).height(20).backgroundColor(Color.Blue)
              }
              Row() {
                Column().width(20).height(20).backgroundColor(Color.Yellow)
                Column().width(20).height(20).backgroundColor('#800080')
                Column().width(20).height(20).backgroundColor(Color.Orange)
              }
            }
            .margin({ top: 5 })
          }
          .width(120)
          .height(120)
          .backgroundColor(Color.Pink)
          .justifyContent(FlexAlign.Center)
          .margin(10)
          .sepia(this.sepiaValues[this.currentIndex])
          .id('sepia_component_commonmodifier_0160')
        }
        .justifyContent(FlexAlign.Center)
        .width(350)
        .height(160)
        .backgroundColor('#F0F0F0')
        .border({ width: 2, color: Color.Gray })
      }
      .margin({ top: 20, bottom: 30 })

      // 添加另一个测试场景：图像和文本内容测试
      Column() {
        Text('Mixed Content Test')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 10 })

        Row() {
          // 参考内容
          Column() {
            Text('🌅🌸🦋')
              .fontSize(24)
              .margin({ bottom: 5 })
            Text('Colorful')
              .fontSize(14)
              .fontColor('#FF6B6B')
              .fontWeight(FontWeight.Bold)
            Text('Content')
              .fontSize(14)
              .fontColor('#4ECDC4')
              .fontWeight(FontWeight.Bold)
          }
          .width(100)
          .height(100)
          .backgroundColor('#FFE4E1')
          .justifyContent(FlexAlign.Center)
          .margin(10)

          // 测试内容（应用sepia）
          Column() {
            Text('🌅🌸🦋')
              .fontSize(24)
              .margin({ bottom: 5 })
            Text('Sepia')
              .fontSize(14)
              .fontColor('#FF6B6B')
              .fontWeight(FontWeight.Bold)
            Text('Effect')
              .fontSize(14)
              .fontColor('#4ECDC4')
              .fontWeight(FontWeight.Bold)
          }
          .width(100)
          .height(100)
          .backgroundColor('#FFE4E1')
          .justifyContent(FlexAlign.Center)
          .margin(10)
          .sepia(this.sepiaValues[this.currentIndex])

          // 另一个测试组件
          Column() {
            Column() {
              Text('Bright')
                .fontSize(12)
                .fontColor('#FFFFFF')
            }
            .width(60)
            .height(30)
            .backgroundColor('#FF1744')
            .justifyContent(FlexAlign.Center)
            .margin(2)

            Column() {
              Text('Colors')
                .fontSize(12)
                .fontColor('#FFFFFF')
            }
            .width(60)
            .height(30)
            .backgroundColor('#00E676')
            .justifyContent(FlexAlign.Center)
            .margin(2)
          }
          .width(100)
          .height(100)
          .backgroundColor('#E1F5FE')
          .justifyContent(FlexAlign.Center)
          .margin(10)
          .sepia(this.sepiaValues[this.currentIndex])
        }
        .justifyContent(FlexAlign.SpaceAround)
        .width(350)
        .height(130)
        .backgroundColor('#F0F0F0')
        .border({ width: 2, color: Color.Gray })
      }
      .margin({ bottom: 30 })

      Text('Note: Sepia creates a warm, brownish tone effect (0-1 range)')
        .fontSize(12)
        .fontColor(Color.Gray)
        .margin({ bottom: 20 })
        .textAlign(TextAlign.Center)

      Row() {
        Button('index--')
          .onClick(() => {
            if (this.currentIndex > 0) {
              this.currentIndex--
            }
          })
          .id('index_decrease_button_commonmodifier_0160')
          .margin({ right: 10 })

        Button('index++')
          .onClick(() => {
            if (this.currentIndex < this.sepiaValues.length - 1) {
              this.currentIndex++
            }
          })
          .id('index_increase_button_commonmodifier_0160')
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
