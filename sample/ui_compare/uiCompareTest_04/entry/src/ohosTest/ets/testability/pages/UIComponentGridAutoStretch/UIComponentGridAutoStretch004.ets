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
struct UIComponentGridAutoStretch004 {
  @State numbers: string[] = [];
  @State columnsGap: number = 10;
  private scroller: Scroller = new Scroller();
  private caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_GRID_AUTO_STRETCH_0100_410';

  aboutToAppear(): void {
    for(let i: number = 0; i < 100; i++) {
      this.numbers.push(`${i + 1}`);
    }
  }

  build() {
    Column() {
      Row() {
        Button('改变columnsGap')
          .fontSize(20)
          .fontStyle(FontStyle.Normal)
          .fontWeight(FontWeight.Normal)
          .fontColor(Color.Black)
          .stateEffect(true)
          .id('change')
          .onClick(() => {
            this.columnsGap = 30;
            console.info(`${this.caseName} columnsGap is ${this.columnsGap}`);
          })
        Button('scrollToIndex')
          .fontSize(20)
          .fontStyle(FontStyle.Normal)
          .fontWeight(FontWeight.Normal)
          .fontColor(Color.Black)
          .stateEffect(true)
          .id('scrollToIndex')
          .onClick(() => {
            this.scroller.scrollToIndex(50);
          })
      }
      .justifyContent(FlexAlign.Center)
      .backgroundColor('#009999')
      .width('100%')
      .height('10%')
      Column() {
        Grid(this.scroller) {
          ForEach(this.numbers, (day: string) => {
            GridItem() {
              Text(day)
                .fontSize(20)
                .width('20%')
                .height('20%')
                .textAlign(TextAlign.Center)
            }.backgroundColor(0xF9CF93)
          }, (day: string) => day)
        }
        .columnsTemplate('repeat(auto-stretch,80)')
        .rowsGap(10)
        .columnsGap(this.columnsGap)
        .enableScrollInteraction(true)
        .supportAnimation(false)
        .multiSelectable(false)
        .edgeEffect(EdgeEffect.Spring)
        .scrollBar(BarState.On)
        .scrollBarColor(Color.Grey)
        .scrollBarWidth(10)
        .backgroundColor(0xFAEEE0)
        .width('100%')
        .height('100%')
      }
      .width('100%')
      .height('80%')
    }
  }
}