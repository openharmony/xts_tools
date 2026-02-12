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
struct CommonAttrCommonModifier0320 {
  @State currentIndex: number = 0
  
  private colorBlendValues: Array<string> = ["green"]
  private colorBlendNames: Array<string> = ['colorBlend: "green" (字符串绿色混合)']

  build() {
    Column() {

      // 创建测试区域 - 绿色字符串混合测试
      Column() {
        Text('Green String Color Blend Test')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 20 })

        Row() {
          // 参考组件（无colorBlend效果）
          Column() {
            Text('Reference')
              .fontSize(14)
              .fontWeight(FontWeight.Bold)
              .margin({ bottom: 10 })

            Column() {
              Text('🎨 Original Colors')
                .fontSize(12)
                .margin({ bottom: 5 })

              Row() {
                Text('R').fontColor(Color.Red).fontSize(16).margin(2)
                Text('G').fontColor(Color.Green).fontSize(16).margin(2)
                Text('B').fontColor(Color.Blue).fontSize(16).margin(2)
              }
              .margin({ bottom: 5 })

              Text('No Color Blend')
                .fontSize(10)
                .fontColor(Color.Gray)
            }
            .width(100)
            .height(80)
            .backgroundColor('#FFE4E1')
            .border({ width: 1, color: Color.Gray })
            .justifyContent(FlexAlign.Center)
          }
          .width(120)
          .margin(10)
          .padding(10)
          .backgroundColor('#F5F5F5')
          .borderRadius(8)

          // 测试组件（应用colorBlend("green")）
          Column() {
            Text('Test Component')
              .fontSize(14)
              .fontWeight(FontWeight.Bold)
              .margin({ bottom: 10 })

            Column() {
              Text('🎨 Green Blended')
                .fontSize(12)
                .margin({ bottom: 5 })

              Row() {
                Text('R').fontColor(Color.Red).fontSize(16).margin(2)
                Text('G').fontColor(Color.Green).fontSize(16).margin(2)
                Text('B').fontColor(Color.Blue).fontSize(16).margin(2)
              }
              .margin({ bottom: 5 })

              Text('"green" Blend')
                .fontSize(10)
                .fontColor(Color.Gray)
            }
            .width(100)
            .height(80)
            .backgroundColor('#FFE4E1')
            .border({ width: 1, color: Color.Gray })
            .justifyContent(FlexAlign.Center)
            .colorBlend(this.colorBlendValues[this.currentIndex])
            .id('colorblend_component_commonmodifier_0320')
          }
          .width(120)
          .margin(10)
          .padding(10)
          .backgroundColor('#E8F5E8')
          .borderRadius(8)
        }
        .justifyContent(FlexAlign.SpaceAround)
        .width(300)
        .height(150)
        .backgroundColor('#F0F0F0')
        .border({ width: 2, color: Color.Gray })
      }
      .margin({ top: 20, bottom: 30 })

      // 绿色字符串混合彩色验证测试
      Column() {
        Text('Green String Color Blend Effect Test')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 15 })

        Column() {
          Text('Color Palette - "green" String Blend Effect')
            .fontSize(12)
            .margin({ bottom: 10 })
          // 第四行：渐变测试
          Row() {
            Text('Gradient:')
              .fontSize(10)
              .width(60)
              .textAlign(TextAlign.Start)

            Column() {
              Text('Green Blended')
                .fontSize(10)
                .fontColor(Color.White)
            }
            .width(180)
            .height(30)
            .linearGradient({
              direction: GradientDirection.Left,
              colors: [
                [Color.Red, 0.0],
                [Color.Orange, 0.25],
                [Color.Yellow, 0.5],
                [Color.Blue, 0.75],
                [Color.Pink, 1.0]
              ]
            })
            .colorBlend(this.colorBlendValues[this.currentIndex])
            .justifyContent(FlexAlign.Center)
          }
          .width('100%')
          .margin({ bottom: 8 })

          // 第五行：自然色彩测试
          Row() {
            Text('Nature:')
              .fontSize(10)
              .width(60)
              .textAlign(TextAlign.Start)

            Row() {
              Column().width(25).height(25).backgroundColor('#8B4513').margin(2) // 棕色
              Column().width(25).height(25).backgroundColor('#87CEEB').margin(2) // 天蓝色
              Column().width(25).height(25).backgroundColor('#FFD700').margin(2) // 金色
              Column().width(25).height(25).backgroundColor('#DC143C').margin(2) // 深红色
              Column().width(25).height(25).backgroundColor('#4B0082').margin(2) // 靛蓝色
              Column().width(25).height(25).backgroundColor('#2F4F4F').margin(2) // 深灰色
            }
            .colorBlend(this.colorBlendValues[this.currentIndex])
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

      // 字符串与枚举值对比测试
      Column() {
        Text('String vs Enum Color Blend Comparison')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 15 })

        Row() {
          // 无混合
          Column() {
            Text('None')
              .fontSize(12)
              .fontWeight(FontWeight.Bold)
              .margin({ bottom: 5 })

            Column() {
              Text('🌿')
                .fontSize(24)
              Text('Original')
                .fontSize(8)
            }
            .width(60)
            .height(50)
            .backgroundColor('#FFB6C1')
            .justifyContent(FlexAlign.Center)
            .border({ width: 1, color: Color.Gray })
          }
          .margin(5)

          // 字符串"green"混合
          Column() {
            Text('"green"')
              .fontSize(12)
              .fontWeight(FontWeight.Bold)
              .margin({ bottom: 5 })

            Column() {
              Text('🌿')
                .fontSize(24)
              Text('String')
                .fontSize(8)
            }
            .width(60)
            .height(50)
            .backgroundColor('#FFB6C1')
            .colorBlend(this.colorBlendValues[this.currentIndex])
            .justifyContent(FlexAlign.Center)
            .border({ width: 2, color: Color.Green })
          }
          .margin(5)

          // Color.Green枚举对比
          Column() {
            Text('Color.Green')
              .fontSize(10)
              .fontWeight(FontWeight.Bold)
              .margin({ bottom: 5 })

            Column() {
              Text('🌿')
                .fontSize(24)
              Text('Enum')
                .fontSize(8)
            }
            .width(60)
            .height(50)
            .backgroundColor('#FFB6C1')
            .colorBlend(Color.Green)
            .justifyContent(FlexAlign.Center)
            .border({ width: 1, color: Color.Gray })
          }
          .margin(5)

          // 其他字符串颜色对比
          Column() {
            Text('"blue"')
              .fontSize(12)
              .fontWeight(FontWeight.Bold)
              .margin({ bottom: 5 })

            Column() {
              Text('🌿')
                .fontSize(24)
              Text('Compare')
                .fontSize(8)
            }
            .width(60)
            .height(50)
            .backgroundColor('#FFB6C1')
            .colorBlend("blue")
            .justifyContent(FlexAlign.Center)
            .border({ width: 1, color: Color.Gray })
          }
          .margin(5)
        }
        .justifyContent(FlexAlign.SpaceAround)
        .width(280)
        .backgroundColor('#F0FFF0')
        .border({ width: 1, color: Color.Green })
        .padding(10)
        .borderRadius(8)
      }
      .margin({ bottom: 30 })

      // 显示当前colorBlend值和说明
      Column() {
        Text(`Current ColorBlend Value: "green"`)
          .fontSize(14)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 10 })
      }
      .margin({ bottom: 20 })

      Row() {
        Button('index--')
          .onClick(() => {
            if (this.currentIndex > 0) {
              this.currentIndex--
            }
          })
          .id('index_decrease_button_commonmodifier_0320')
          .margin({ right: 10 })

        Button('index++')
          .onClick(() => {
            if (this.currentIndex < this.colorBlendValues.length - 1) {
              this.currentIndex++
            }
          })
          .id('index_increase_button_commonmodifier_0320')
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
