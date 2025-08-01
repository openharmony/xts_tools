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
import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct UIComponentListAndGridListInitialIndex004 {
  @State message: string = 'Hello';
  @State arr: string[] = ['0', '1', '2', '3', '4','5','6','7','8','9','10', '11', '12', '13', '14'];
  private scrollerForList: ListScroller = new ListScroller();
  async routePage() {
    this.getUIContext().getRouter().pushUrl({
      url: 'testability/pages/UIComponentListAndGridListInitialIndex/UIComponentListAndGridListInitialIndex005',
    })
      .then(() => {
        console.info('UIComponentArcListInitialIndex005 succeeded');
      })
      .catch((error: BusinessError) => {
        console.error(`UIComponentArcListInitialIndex005 pushUrl failed, error is ${JSON.stringify(error)}.`);
      })
  }

  build() {
    Column() {
      List({ initialIndex: 2, space: 20, scroller: this.scrollerForList }) {
        ForEach(this.arr, (item: number) => {
          ListItem() {
            Button('' + item)
              .width('100%')
              .height(100)
              .fontSize(16)
              .borderRadius(10)
              .backgroundColor(0xF9CF93)
              .stateEffect(true)
          }
        }, (item: string) => item)
      }
      .height('80%')
      .scrollBar(BarState.On)
      .onAppear(() => {
        this.scrollerForList.scrollToIndex(5, true, ScrollAlign.START);
      })

      Column() {
        Button('设置scrollToItemInGroup')
          .stateEffect(true)
          .id('scrollToItemInGroup')
          .fontSize(20)
          .onClick(() => {
            this.routePage();
          })
      }
      .height('10%')
      .justifyContent(FlexAlign.Center)
    }
    .width('100%')

  }
}