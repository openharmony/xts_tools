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
struct UIComponentScrollScrollAccessible004 {
  @State message: string = 'Hello'
  scroller: Scroller = new Scroller()
  private arr: number[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  @State scrollOffSet: number = 0;

  build() {
    Column() {
      Text(this.message)
        .fontSize(20)
        .fontColor(Color.Blue)
        .margin({ top: 20 })
        .key('UIComponentScrollScrollAccessible004_001')
      Stack({ alignContent: Alignment.TopStart }) {
        Scroll(this.scroller) {
          Column() {
            ForEach(this.arr, (item: number) => {
              Button('Button' + item)
                .type(ButtonType.Capsule)
                .height('25%')
                .margin({ top: 10 })
                // .width('50%')
            }, (item: string) => item);
          }
          .width('100%')
        }
        .scrollBar(BarState.On)
        .scrollBarWidth(12)
        .scrollable(ScrollDirection.Vertical)
        .scrollBarColor(Color.Blue)
        .onDidScroll((xOffset: number, yOffset: number, scrollState: ScrollState) => {
          console.info(`onScroll scrollState = ScrollState` + scrollState + `, scrollOffset = ` + yOffset);
          this.scrollOffSet += yOffset;
        })
        }
      .backgroundColor(0xDCDCDC)
      .width('100%')
      .height('85%')
      Row() {
        Text('scrollOffSet: ' + this.scrollOffSet)
          .fontColor(Color.Black)
          .fontSize(20)
      }
      .backgroundColor(0xDCDCDC)
    }
  }
}