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
import { LengthMetrics } from '@kit.ArkUI';

@Entry
@Component
struct UIComponentGridFadingEdge002 {
  private message: string = 'fadingEdge为true，渐隐距离设置32';
  @State numbers: string[] = [];
  @State columnsGap: number = 10;
  @State rowsGap: number = 10;
  private scroller: Scroller = new Scroller();

  aboutToAppear(): void {
    for(let i: number = 0; i < 10; i++) {
      this.numbers.push(`${i + 1}`);
    }
  }

  build() {
    Column() {
      Column() {
        Text(this.message)
          .fontSize(20)
          .textAlign(TextAlign.Center)
          .fontStyle(FontStyle.Normal)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.Black)
          .width('100%')
      }
      .justifyContent(FlexAlign.Center)
      .backgroundColor('#009999')
      .width('100%')
      .height('10%')
      Column() {
        Column() {
          Button('滚动')
            .id('scroll')
            .stateEffect(true)
            .buttonStyle(ButtonStyleMode.NORMAL)
            .type(ButtonType.Capsule)
            .onClick(() => {
              this.scroller.scrollToIndex(50);
            })
            .width('100%')
        }
        Column() {
          Grid(this.scroller) {
            ForEach(this.numbers, (day: string) => {
              ForEach(this.numbers, (day: string) => {
                GridItem() {
                  Text(day)
                    .fontSize(20)
                    .width('20%')
                    .height('20%')
                    .textAlign(TextAlign.Center)
                }.backgroundColor(0xF9CF93)
              }, (day: string) => day)
            }, (day: string) => day)
          }
          .columnsTemplate('1fr 1fr 1fr 1fr 1fr')
          .fadingEdge(true, {fadingEdgeLength: LengthMetrics.vp(32)})
          .columnsGap(this.columnsGap)
          .rowsGap(this.rowsGap)
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
      }
      .width('100%')
      .height('80%')
    }
  }
}