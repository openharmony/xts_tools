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
struct CommonAttrCommonModifier0490 {
  @State currentIndex: number = 0
  
  private contrastValues: Array<number> = [0.3]
  private contrastNames: Array<string> = ['contrast: 0.3']

  build() {
    Column() {
      Text('Contrast Test (0.3)')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 20 })

      Text(`Current Index: ${this.currentIndex}`)
        .fontSize(16)
        .margin({ bottom: 10 })

      Text(`Config: ${this.contrastNames[this.currentIndex]}`)
        .fontSize(12)
        .margin({ bottom: 20 })

      // 简洁的对比测试区域
      Row() {
        // 参考组件
        Column() {
          Text('Reference')
            .fontSize(14)
            .margin({ bottom: 10 })

          Column() {
            Text('📊')
              .fontSize(32)
            Text('Normal')
              .fontSize(12)
          }
          .width(100)
          .height(100)
          .backgroundColor('#E6E6FA')
          .justifyContent(FlexAlign.Center)
          .border({ width: 1, color: Color.Gray })
        }
        .margin(20)

        // 测试组件
        Column() {
          Text('Contrast 0.3')
            .fontSize(14)
            .margin({ bottom: 10 })

          Column() {
            Text('📊')
              .fontSize(32)
            Text('Low Contrast')
              .fontSize(12)
          }
          .width(100)
          .height(100)
          .backgroundColor('#E6E6FA')
          .contrast(this.contrastValues[this.currentIndex])
          .justifyContent(FlexAlign.Center)
          .border({ width: 2, color: Color.Pink })
          .id('contrast_component_commonmodifier_0490')
        }
        .margin(20)
      }
      .justifyContent(FlexAlign.SpaceAround)
      .margin({ top: 30, bottom: 40 })

      // 简洁的颜色测试
      Column() {
        Text('Low Contrast Effect Test')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 15 })

        Row() {
          Column().width(40).height(40).backgroundColor('#000000').margin(5) // 黑色
          Column().width(40).height(40).backgroundColor('#808080').margin(5) // 灰色
          Column().width(40).height(40).backgroundColor('#FFFFFF').margin(5) // 白色
          Column().width(40).height(40).backgroundColor('#FF0000').margin(5) // 红色
          Column().width(40).height(40).backgroundColor('#0000FF').margin(5) // 蓝色
        }
        .contrast(this.contrastValues[this.currentIndex])
        .margin({ bottom: 20 })

        Text(`30% contrast - reduced color difference`)
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
          .id('index_decrease_button_commonmodifier_0490')
          .margin({ right: 10 })

        Button('index++')
          .onClick(() => {
            if (this.currentIndex < this.contrastValues.length - 1) {
              this.currentIndex++
            }
          })
          .id('index_increase_button_commonmodifier_0490')
          .margin({ left: 10 })
      }
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .justifyContent(FlexAlign.Center)
  }
}
