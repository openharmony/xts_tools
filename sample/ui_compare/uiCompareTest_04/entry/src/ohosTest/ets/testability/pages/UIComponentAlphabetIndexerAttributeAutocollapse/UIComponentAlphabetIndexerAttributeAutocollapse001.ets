/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


@Entry
@Component
struct UIComponentAlphabetIndexerAttributeAutocollapse001 {
  @State message: string = 'Hello'
  @State selectedIndex: number = 0
  @State indexerHeight: string = '75%';
  private arrayA: string[] = ['安']
  private arrayB: string[] = ['卜', '白', '包', '毕', '丙']
  private arrayC: string[] = ['曹', '成', '陈', '催']
  private arrayK: string[] = ['孔', '柯', '康', '邝', '匡', '阚']
  @State value: string[] = ['#', 'A', 'B', 'C', 'D', 'E', 'F']

  build() {
    Column() {
      Text(this.message)
        .fontSize(20)
        .fontColor(Color.Blue)
        .height('10%')
        .margin({ top: 20 })
        .key('UIComponentAlphabetIndexerAttributeAutocollapse001_001')

      Stack({ alignContent: Alignment.Start }) {
        Row() {
          List({ space: 20, initialIndex: 0 }) {
            ForEach(this.arrayA, (item: string) => {
              ListItem() {
                Text(item)
                  .width('80%')
                  .height(10)
                  .fontSize(30)
                  .textAlign(TextAlign.Center)
              }
            }, (item: string) => item)

            ForEach(this.arrayB, (item: string) => {
              ListItem() {
                Text(item)
                  .width('80%')
                  .height(10)
                  .fontSize(30)
                  .textAlign(TextAlign.Center)
              }
            }, (item: string) => item)

            ForEach(this.arrayC, (item: string) => {
              ListItem() {
                Text(item)
                  .width('80%')
                  .height(10)
                  .fontSize(30)
                  .textAlign(TextAlign.Center)
              }
            }, (item: string) => item)

            ForEach(this.arrayK, (item: string) => {
              ListItem() {
                Text(item)
                  .width('80%')
                  .height(10)
                  .fontSize(30)
                  .textAlign(TextAlign.Center)
              }
            }, (item: string) => item)
          }
          .width('50%')
          .height('100%')

          AlphabetIndexer({ arrayValue: this.value, selected: $$this.selectedIndex })
            .height(this.indexerHeight)
            .autoCollapse(true)
            .enableHapticFeedback(true)
            .selectedColor(0xFFFFFF)
            .popupColor(0xFFFAF0)
            .selectedBackgroundColor(0xCCCCCC)
            .popupBackground(0xD2B48C)
            .usingPopup(true)
            .selectedFont({ size: 16, weight: FontWeight.Bolder })
            .popupFont({ size: 30, weight: FontWeight.Bolder })
            .itemSize(28)
            .alignStyle(IndexerAlign.Left)
            .popupItemBorderRadius(24)
            .itemBorderRadius(14)
            .popupBackgroundBlurStyle(BlurStyle.NONE)
            .popupTitleBackground(0xCCCCCC)
            .popupSelectedColor(0x00FF00)
            .popupUnselectedColor(0x0000FF)
            .popupItemFont({ size: 30, style: FontStyle.Normal })
            .popupItemBackgroundColor(0xCCCCCC)
            .onSelect((index: number) => {
              console.info(this.value[index] + ' Selected!')
            })
            .onRequestPopupData((index: number) => {
              if (this.value[index] == 'A') {
                return this.arrayA
              } else if (this.value[index] == 'B') {
                return this.arrayB
              } else if (this.value[index] == 'C') {
                return this.arrayC
              } else if (this.value[index] == 'K') {
                return this.arrayK
              } else {
                return []
              }
            })
            .onPopupSelect((index: number) => {
              console.info('onPopupSelected:' + index)
            })
        }
        .width('100%')
        .height('100%')
      }
      .height('70%')

      Column() {
        Row() {
          Button('9<所有字符数<=13 全显示')
            .id('9-13全显示')
            .margin('5vp')
            .onClick(() => {
              this.value = ['#', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K']
              this.indexerHeight = '70%';
            })
          Button('9<所有字符数<=13 短折叠')
            .id('9-13短折叠')
            .margin('5vp')
            .onClick(() => {
              this.value = ['#', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K']
              this.indexerHeight = '40%';
            })
        }
        Row() {
          Button('所有字符数>13 短折叠')
            .id('>13短折叠')
            .margin('5vp')
            .onClick(() => {
              this.value = ['#', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N']
              this.indexerHeight = '40%';
            })
          Button('所有字符数>13 长折叠')
            .id('>13长折叠')
            .margin('5vp')
            .onClick(() => {
              this.value = ['#', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N']
              this.indexerHeight = '70%';
            })
        }
      }
      .height('15%')
    }
    .backgroundColor(0xDCDCDC)
    .width('100%')
    .height('100%')
  }
}