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
import { ArcList, ArcListItem, ArcListAttribute, ArcListItemAttribute, LengthMetrics } from '@kit.ArkUI';

@Entry
@Component
struct UIComponentAcrListScrollBarWidth001 {
  private scroller: Scroller = new Scroller();
  @State scrollBarWidth: 	Optional<LengthMetrics> = LengthMetrics.vp(10);
  @State scrollBarMessage: string = 'scrollBarWidth值为正常值';

  build() {
    Column() {
      ArcList({ scroller: this.scroller }) {
        ArcListItem() {
          Row() {
            Column() {
              Text("WLAN").fontSize("38px").fontColor("#FFFFFFFF")
              Text("已开启").fontSize("20px").fontColor("#FFFFFFFF")
            }.width("190px")
          }
        }
        .borderRadius("65px")
        .width("414px")
        .height("129px")
        .backgroundColor("#26FFFFFF")

        ArcListItem() {
          Row() {
            Column() {
              Text("蓝牙").fontSize("38px").fontColor("#FFFFFFFF")
              Text("已开启").fontSize("20px").fontColor("#FFFFFFFF")
            }.width("190px")
          }
        }
        .borderRadius("65px")
        .width("414px")
        .height("129px")
        .backgroundColor("#26FFFFFF")

        ArcListItem() {
          Row() {
            Column() {
              Text("移动网络").fontSize("38px").fontColor("#FFFFFFFF")
            }.width("190px")
          }
        }
        .borderRadius("65px")
        .width("414px")
        .height("129px")
        .backgroundColor("#26FFFFFF")

        ArcListItem() {
          Row() {
            Column() {
              Text("更多连接").fontSize("38px").fontColor("#FFFFFFFF")
            }.width("190px")
          }
        }
        .borderRadius("65px")
        .width("414px")
        .height("129px")
        .backgroundColor("#26FFFFFF")

        ArcListItem() {
          Row() {
            Column() {
              Text("显示和亮度").fontSize("38px").fontColor("#FFFFFFFF")
            }.width("190px")
          }
        }
        .borderRadius("65px")
        .width("414px")
        .height("129px")
        .backgroundColor("#26FFFFFF")
      }
      .scrollBar(BarState.On)
      .chainAnimation(true)
      .scrollBarWidth(this.scrollBarWidth)
      .width("466px")
      .height("466px")
      .space(LengthMetrics.px(10))
      .borderRadius("233px")
      .backgroundColor(0xAFEEEE)

      Column() {
        Text(this.scrollBarMessage)
          .fontSize(30)
      }
      .justifyContent(FlexAlign.Center)
      .width('100%')


      Button('设置scrollBarWidth为异常值：20%')
        .id('20%')
        .stateEffect(true)
        .onClick(() => {
          this.scrollBarWidth = LengthMetrics.percent(20);
          this.scrollBarMessage = 'scrollBarWidth值为20%';
        })
        .margin({top: 20})

      Button('设置scrollBarWidth为异常值：-10')
        .id('-10')
        .stateEffect(true)
        .onClick(() => {
          this.scrollBarWidth = LengthMetrics.vp(-10);
          this.scrollBarMessage = 'scrollBarWidth值为-10';
        })
        .margin({top: 20})

      Button('设置scrollBarWidth为异常值：undefined')
        .id('undefined')
        .stateEffect(true)
        .onClick(() => {
          this.scrollBarWidth = undefined;
          this.scrollBarMessage = 'scrollBarWidth值为undefined';
        })
        .margin({top: 20})

      Button('设置scrollBarWidth为0')
        .id('0')
        .stateEffect(true)
        .onClick(() => {
          this.scrollBarWidth = LengthMetrics.vp(0);
          this.scrollBarMessage = 'scrollBarWidth值为0';
        })
        .margin({top: 20})

      Button('设置scrollBarWidth为超大值：100')
        .id('100')
        .stateEffect(true)
        .onClick(() => {
          this.scrollBarWidth = LengthMetrics.vp(100);
          this.scrollBarMessage = 'scrollBarWidth值为100';
        })
        .margin({top: 20})

      Button('设置scrollBarWidth为正常值：10')
        .id('10')
        .stateEffect(true)
        .onClick(() => {
          this.scrollBarWidth = LengthMetrics.vp(10);
          this.scrollBarMessage = 'scrollBarWidth值为10';
        })
        .margin({top: 20})
    }
    .justifyContent(FlexAlign.Center)

  }
}
