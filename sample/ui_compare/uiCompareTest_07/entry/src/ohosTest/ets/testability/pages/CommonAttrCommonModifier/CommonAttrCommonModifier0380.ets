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
struct CommonAttrCommonModifier0380 {
  @State currentIndex: number = 0
  
  // 空数组表示不设置任何colorBlend值
  private colorBlendValues: Array<undefined> = [undefined]
  private colorBlendNames: Array<string> = ['colorBlend: 未设置 (默认行为测试)']

  build() {
    Column() {
      // 创建测试区域 - 默认行为测试
      Column() {
        Text('Default Behavior Test (No ColorBlend)')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 20 })

        Row() {
          // 参考组件（显式无colorBlend效果）
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

              Text('Explicit No Blend')
                .fontSize(10)
                .fontColor(Color.Gray)
            }
            .width(100)
            .height(80)
            .backgroundColor('#F8F8FF')
            .border({ width: 1, color: Color.Gray })
            .justifyContent(FlexAlign.Center)
          }
          .width(120)
          .margin(10)
          .padding(10)
          .backgroundColor('#F5F5F5')
          .borderRadius(8)

          // 测试组件（不设置colorBlend属性）
          Column() {
            Text('Test Component')
              .fontSize(14)
              .fontWeight(FontWeight.Bold)
              .margin({ bottom: 10 })

            Column() {
              Text('🎨 Default Behavior')
                .fontSize(12)
                .margin({ bottom: 5 })

              Row() {
                Text('R').fontColor(Color.Red).fontSize(16).margin(2)
                Text('G').fontColor(Color.Green).fontSize(16).margin(2)
                Text('B').fontColor(Color.Blue).fontSize(16).margin(2)
              }
              .margin({ bottom: 5 })

              Text('No ColorBlend Set')
                .fontSize(10)
                .fontColor(Color.Gray)
            }
            .width(100)
            .height(80)
            .backgroundColor('#F8F8FF')
            .border({ width: 1, color: Color.Gray })
            .justifyContent(FlexAlign.Center)
            // 注意：这里故意不设置.colorBlend()属性
            .id('colorblend_component_commonmodifier_0380')
          }
          .width(120)
          .margin(10)
          .padding(10)
          .backgroundColor('#F0FFF0')
          .borderRadius(8)
        }
        .justifyContent(FlexAlign.SpaceAround)
        .width(300)
        .height(150)
        .backgroundColor('#F0F0F0')
        .border({ width: 2, color: Color.Gray })
      }
      .margin({ top: 20, bottom: 30 })

      // 默认行为验证测试
      Column() {
        Text('Default Behavior Verification Test')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 15 })
      }
      .margin({ bottom: 30 })

      // 默认值与设置值对比测试
      Column() {
        Text('Default vs Explicit Value Comparison')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 15 })

        Column() {
          Text('Default Behavior vs Explicit ColorBlend Settings')
            .fontSize(12)
            .margin({ bottom: 10 })

          Row() {
            // 默认行为（不设置）
            Column() {
              Text('Default')
                .fontSize(12)
                .fontWeight(FontWeight.Bold)
                .margin({ bottom: 5 })

              Column() {
                Text('🎪')
                  .fontSize(24)
                Text('No Setting')
                  .fontSize(8)
              }
              .width(60)
              .height(50)
              .backgroundColor('#E6E6FA')
              .justifyContent(FlexAlign.Center)
              .border({ width: 2, color: Color.Green })
              // 不设置colorBlend属性
            }
            .margin(5)

            // 空字符串设置
            Column() {
              Text('Empty ""')
                .fontSize(10)
                .fontWeight(FontWeight.Bold)
                .margin({ bottom: 5 })

              Column() {
                Text('🎪')
                  .fontSize(24)
                Text('Empty')
                  .fontSize(8)
              }
              .width(60)
              .height(50)
              .backgroundColor('#E6E6FA')
              .colorBlend("")
              .justifyContent(FlexAlign.Center)
              .border({ width: 1, color: Color.Gray })
            }
            .margin(5)
          }
          .justifyContent(FlexAlign.SpaceAround)
        }
        .width(280)
        .backgroundColor('#F0FFF0')
        .border({ width: 1, color: Color.Green })
        .padding(10)
        .borderRadius(8)
      }
      .margin({ bottom: 30 })

      // 系统默认行为验证
      Column() {
        Text('System Default Behavior Verification')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 15 })

        Grid() {
          GridItem() {
            Column() {
              Text('⚙️')
                .fontSize(24)
              Text('System\nDefault')
                .fontSize(9)
                .textAlign(TextAlign.Center)
            }
            .width(70)
            .height(60)
            .backgroundColor('#F0F8FF')
            // 不设置colorBlend
            .justifyContent(FlexAlign.Center)
            .border({ width: 1, color: Color.Gray })
          }

          GridItem() {
            Column() {
              Text('🔧')
                .fontSize(24)
              Text('No\nProcessing')
                .fontSize(9)
                .textAlign(TextAlign.Center)
            }
            .width(70)
            .height(60)
            .backgroundColor('#FFF8DC')
            // 不设置colorBlend
            .justifyContent(FlexAlign.Center)
            .border({ width: 1, color: Color.Gray })
          }

          GridItem() {
            Column() {
              Text('📊')
                .fontSize(24)
              Text('Performance\nBaseline')
                .fontSize(9)
                .textAlign(TextAlign.Center)
            }
            .width(70)
            .height(60)
            .backgroundColor('#F0FFF0')
            // 不设置colorBlend
            .justifyContent(FlexAlign.Center)
            .border({ width: 1, color: Color.Gray })
          }

          GridItem() {
            Column() {
              Text('✅')
                .fontSize(24)
              Text('Standard\nBehavior')
                .fontSize(9)
                .textAlign(TextAlign.Center)
            }
            .width(70)
            .height(60)
            .backgroundColor('#FFF0F5')
            // 不设置colorBlend
            .justifyContent(FlexAlign.Center)
            .border({ width: 1, color: Color.Gray })
          }
        }
        .columnsTemplate('1fr 1fr 1fr 1fr')
        .rowsTemplate('1fr')
        .width(300)
        .height(80)
        .backgroundColor('#FAFAFA')
        .border({ width: 1, color: Color.Gray })
        .padding(10)
        .borderRadius(8)
      }
      .margin({ bottom: 30 })

      Row() {
        Button('index--')
          .onClick(() => {
            if (this.currentIndex > 0) {
              this.currentIndex--
            }
          })
          .id('index_decrease_button_commonmodifier_0380')
          .margin({ right: 10 })

        Button('index++')
          .onClick(() => {
            if (this.currentIndex < this.colorBlendValues.length - 1) {
              this.currentIndex++
            }
          })
          .id('index_increase_button_commonmodifier_0380')
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
