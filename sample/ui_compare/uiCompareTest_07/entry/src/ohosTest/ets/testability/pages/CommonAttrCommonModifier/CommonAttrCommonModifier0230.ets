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
struct CommonAttrCommonModifier0230 {
  @State currentIndex: number = 0
  
  private saturateValues: Array<number> = [
    0.7
  ]

  private saturateNames: Array<string> = [
    '0.7 (reduced saturation)'
  ]

  build() {
    Column() {
      Text('Saturate Test')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 20 })

      Text(`Current Index: ${this.currentIndex}`)
        .fontSize(16)
        .margin({ bottom: 10 })

      Text(`Saturate: ${this.saturateNames[this.currentIndex]}`)
        .fontSize(14)
        .margin({ bottom: 20 })
        .textAlign(TextAlign.Center)

      // 创建测试区域 - 包含彩色内容来展示饱和度滤镜效果
      Column() {
        Text('Saturate Test Area')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 20 })

        Row() {
          // 参考组件（不应用saturate）
          Column() {
            Text('Reference')
              .fontSize(14)
              .fontColor(Color.White)
              .margin({ bottom: 5 })
            
            // 彩色内容
            Column() {
              Row() {
                Column().width(25).height(25).backgroundColor('#FF0000') // 纯红
                Column().width(25).height(25).backgroundColor('#00FF00') // 纯绿
                Column().width(25).height(25).backgroundColor('#0000FF') // 纯蓝
              }
              Row() {
                Column().width(25).height(25).backgroundColor('#FFFF00') // 黄色
                Column().width(25).height(25).backgroundColor('#FF00FF') // 品红
                Column().width(25).height(25).backgroundColor('#00FFFF') // 青色
              }
            }
            .margin({ top: 5 })
          }
          .width(120)
          .height(120)
          .backgroundColor(Color.Gray)
          .justifyContent(FlexAlign.Center)
          .margin(10)

          // 测试组件（应用saturate）
          Column() {
            Text('Test Item')
              .fontSize(14)
              .fontColor(Color.White)
              .margin({ bottom: 5 })
            
            // 彩色内容
            Column() {
              Row() {
                Column().width(25).height(25).backgroundColor('#FF0000') // 纯红
                Column().width(25).height(25).backgroundColor('#00FF00') // 纯绿
                Column().width(25).height(25).backgroundColor('#0000FF') // 纯蓝
              }
              Row() {
                Column().width(25).height(25).backgroundColor('#FFFF00') // 黄色
                Column().width(25).height(25).backgroundColor('#FF00FF') // 品红
                Column().width(25).height(25).backgroundColor('#00FFFF') // 青色
              }
            }
            .margin({ top: 5 })
          }
          .width(120)
          .height(120)
          .backgroundColor(Color.Pink)
          .justifyContent(FlexAlign.Center)
          .margin(10)
          .saturate(this.saturateValues[this.currentIndex])
          .id('saturate_component_commonmodifier_0230')
        }
        .justifyContent(FlexAlign.Center)
        .width(350)
        .height(160)
        .backgroundColor('#F0F0F0')
        .border({ width: 2, color: Color.Gray })
      }
      .margin({ top: 20, bottom: 30 })

      // 添加另一个测试场景：丰富色彩内容测试
      Column() {
        Text('Rich Color Content Test')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 10 })

        Row() {
          // 参考内容
          Column() {
            Text('🌈🌸🦋🍎')
              .fontSize(20)
              .margin({ bottom: 5 })
            
            Column() {
              Row() {
                Column().width(20).height(15).backgroundColor('#FF6B6B')
                Column().width(20).height(15).backgroundColor('#4ECDC4')
                Column().width(20).height(15).backgroundColor('#45B7D1')
              }
              Row() {
                Column().width(20).height(15).backgroundColor('#96CEB4')
                Column().width(20).height(15).backgroundColor('#FFEAA7')
                Column().width(20).height(15).backgroundColor('#DDA0DD')
              }
            }
            
            Text('Original')
              .fontSize(12)
              .fontColor('#333333')
              .margin({ top: 5 })
          }
          .width(100)
          .height(100)
          .backgroundColor('#FFE4E1')
          .justifyContent(FlexAlign.Center)
          .margin(10)

          // 测试内容（应用saturate）
          Column() {
            Text('🌈🌸🦋🍎')
              .fontSize(20)
              .margin({ bottom: 5 })
            
            Column() {
              Row() {
                Column().width(20).height(15).backgroundColor('#FF6B6B')
                Column().width(20).height(15).backgroundColor('#4ECDC4')
                Column().width(20).height(15).backgroundColor('#45B7D1')
              }
              Row() {
                Column().width(20).height(15).backgroundColor('#96CEB4')
                Column().width(20).height(15).backgroundColor('#FFEAA7')
                Column().width(20).height(15).backgroundColor('#DDA0DD')
              }
            }
            
            Text('Saturated')
              .fontSize(12)
              .fontColor('#333333')
              .margin({ top: 5 })
          }
          .width(100)
          .height(100)
          .backgroundColor('#FFE4E1')
          .justifyContent(FlexAlign.Center)
          .margin(10)
          .saturate(this.saturateValues[this.currentIndex])

          // 另一个测试组件
          Column() {
            Column() {
              Text('Vivid')
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
          .saturate(this.saturateValues[this.currentIndex])
        }
        .justifyContent(FlexAlign.SpaceAround)
        .width(350)
        .height(130)
        .backgroundColor('#F0F0F0')
        .border({ width: 2, color: Color.Gray })
      }
      .margin({ bottom: 30 })

      Text('Note: Saturate(0.7) reduces color saturation to 70%')
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
          .id('index_decrease_button_commonmodifier_0230')
          .margin({ right: 10 })

        Button('index++')
          .onClick(() => {
            if (this.currentIndex < this.saturateValues.length - 1) {
              this.currentIndex++
            }
          })
          .id('index_increase_button_commonmodifier_0230')
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
