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
@ComponentV2
struct FunctionRepeatWaterFlow003 {
  @Local numbers: Array<number> = [];
  @Local enableScrollInteraction: boolean = true;
  private caseName: string = 'SUB_ACE_FUNCTION_REPEAT_WATERFLOW_0110';

  aboutToAppear(): void {
    for (let i = 0; i < 50; i++) {
      this.numbers.push(i + 1);
    }
  }

  build() {
    Column() {
      Column() {
        Text('设置enableScrollInteraction')
          .fontSize(20)
          .fontStyle(FontStyle.Normal)
          .textAlign(TextAlign.Center)
      }.height('10%').width('100%').backgroundColor(0xd0ecfd)
      Column() {
        WaterFlow() {
          Repeat<number>(this.numbers)
            .each((ri: RepeatItem<number>) => {
              FlowItem() {
                Column() {
                  Text('item ' + ri.item)
                    .fontSize(30)
                    .fontStyle(FontStyle.Normal)
                    .textAlign(TextAlign.Center)
                }.width('50%').height('20%').backgroundColor(0xfacdcc)
              }
            })
            .virtualScroll({ totalCount: this.numbers.length })
        }
        .id('WaterFlow')
        .scrollBar(BarState.On)
        .enableScrollInteraction(this.enableScrollInteraction)
        .layoutDirection(FlexDirection.Column)
        .columnsTemplate('1fr 1fr')
        .rowsGap(10)
        .columnsGap(10)
        .cachedCount(0)
        .width('100%')
        .height('100%')
        .border({ width: 1 })
      }.height('80%').width('100%')
      Column() {
        Button('改变enableScrollInteraction')
          .id('changeEnableScroll')
          .stateEffect(true)
          .type(ButtonType.Capsule)
          .buttonStyle(ButtonStyleMode.NORMAL)
          .onClick(() => {
            this.enableScrollInteraction = false;
            console.info(`${this.caseName} enableScrollInteraction is ${this.enableScrollInteraction}`);
          })
      }
    }
  }
}