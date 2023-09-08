/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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

import AttrsManager from '../../test/model/AttrsManager'
import router from '@ohos.router';
import { WaterFlowDataSource } from './WaterFlowDataSource'

@Entry
@Component
struct BackgroundColorPage {
  @State _generalAttr: number = 0xecd4a8; //通用属性初始值
  @State targetView: string = router.getParams() ? router.getParams()['view']['targetView'] : "" //当前测试的组件
  @State componentKey: string = router.getParams() ? router.getParams()['view']['componentKey'] : "" //组件唯一标识
  datasource: WaterFlowDataSource = new WaterFlowDataSource()
  private itemHeightArray: number[] = []

  @Builder itemFoot() {
    Column() {
      Text(`Footer`)
        .fontSize(10)
        .backgroundColor(Color.Red)
        .width(50)
        .height(50)
        .align(Alignment.Center)
        .margin({ top: 2 })
    }
  }

  @Styles commonStyle(){
    .width(150)
    .height(200)
    .backgroundColor(this._generalAttr)
    .key(this.componentKey)
  }

  //ScrollBar组件
  private scroller: Scroller = new Scroller()

  onPageShow() {
    AttrsManager.registerDataChange(value => this._generalAttr = value)
  }

  build() {
    Row() {
      Column() {
        if (this.targetView == 'AlphabetIndexer') {
          AlphabetIndexer({ arrayValue: ['A', 'B', 'C'], selected: 0 })
            .commonStyle()
        } else if (this.targetView == 'Blank') {
          Blank()
            .commonStyle()
        } else if (this.targetView == 'Button') {
          Button()
            .commonStyle()
        } else if (this.targetView == 'Checkbox') {
          Checkbox()
            .commonStyle()
        } else if (this.targetView == 'CheckboxGroup') {
          CheckboxGroup()
            .commonStyle()
        } else if (this.targetView == 'DataPanel') {
          DataPanel({ values: [50, 12, 8, 5] })
            .commonStyle()
        } else if (this.targetView == 'DatePicker') {
          DatePicker()
            .commonStyle()
        } else if (this.targetView == 'Divider') {
          Divider()
            .commonStyle()
        } else if (this.targetView == 'Gauge') {
          Gauge({ value: 75 })
            .commonStyle()
        } else if (this.targetView == 'Image') {
          Image($r("app.media.icon")).objectFit(ImageFit.Contain)
            .commonStyle()
        } else if (this.targetView == 'LoadingProgress') {
          LoadingProgress()
            .commonStyle()
        } else if (this.targetView == 'Marquee') {
          Marquee({
            start: false,
            src: "Marquee"
          })
            .commonStyle()
        } else if (this.targetView == 'Menu') {
          Menu() {
            MenuItem({ content: "MenuItem1" })
          }
          .commonStyle()
        } else if (this.targetView == 'MenuItem') {
          MenuItem({ content: "MenuItem1" })
            .commonStyle()
        } else if (this.targetView == 'MenuItemGroup') {
          MenuItemGroup({ header: "MenuItemGroup小标题" })
            .commonStyle()
        } else if (this.targetView == 'Navigation') {
          Navigation()
            .commonStyle()
        } else if (this.targetView == 'NavRouter') {
          NavRouter()
            .commonStyle()
        } else if (this.targetView == 'NavDestination') {
          NavDestination()
            .commonStyle()
        } else if (this.targetView == 'PatternLock') {
          PatternLock()
            .commonStyle()
        } else if (this.targetView == 'Progress') {
          Progress({ value: 10 })
            .commonStyle()
        } else if (this.targetView == 'QRCode') {
          QRCode('hello world')
            .commonStyle()
        } else if (this.targetView == 'Radio') {
          Radio({ value: 'Radio1', group: 'radioGroup' })
            .commonStyle()
        } else if (this.targetView == 'Rating') {
          Rating({ rating: 3.5 })
            .commonStyle()
        } else if (this.targetView == 'RichText') {
          RichText('<h1>h1小标题</h1>')
            .commonStyle()
        } else if (this.targetView == 'ScrollBar') {
          ScrollBar({ scroller: this.scroller, direction: ScrollBarDirection.Vertical, state: BarState.On }) {
            Text()
              .width(20)
              .height(100)
              .borderRadius(10)
              .backgroundColor('#C0C0C0')
          }
          .commonStyle()
        } else if (this.targetView == 'Search') {
          Search()
            .commonStyle()
        } else if (this.targetView == 'Select') {
          Select([{ value: 'aaa' },
            { value: 'bbb' }])
            .commonStyle()
        } else if (this.targetView == 'Slider') {
          Slider()
            .commonStyle()
        } else if (this.targetView == 'Span') {
          Text() {
            Span('This is the Span component')
              .commonStyle()
          }
        } else if (this.targetView == 'Stepper') {
          Stepper()
            .commonStyle()
        } else if (this.targetView == 'StepperItem') {
          Stepper() {
            StepperItem()
              .commonStyle()
          }
        } else if (this.targetView == 'Text') {
          Text('text')
            .commonStyle()
        } else if (this.targetView == 'TextArea') {
          TextArea()
            .commonStyle()
        } else if (this.targetView == 'TextClock') {
          TextClock()
            .commonStyle()
        } else if (this.targetView == 'TextInput') {
          TextInput()
            .commonStyle()
        } else if (this.targetView == 'TextPicker') {
          TextPicker({ range: ['apple1', 'orange2', 'peach3', 'grape4'] })
            .commonStyle()
        } else if (this.targetView == 'TextTimer') {
          TextTimer({ isCountDown: true, count: 30000 })
            .commonStyle()
        } else if (this.targetView == 'TimePicker') {
          TimePicker()
            .commonStyle()
        } else if (this.targetView == 'Toggle') {
          Toggle({ type: ToggleType.Switch })
            .commonStyle()
        } else if (this.targetView == 'Badge') {
          Badge({
            value: 'New',
            style: { badgeSize: 16 }
          }) {
            Text('list2')
          }
          .commonStyle()
        } else if (this.targetView == 'Column') {
          Column()
            .commonStyle()
        } else if (this.targetView == 'ColumnSplit') {
          ColumnSplit() {
            Text('1')
          }
          .commonStyle()
        } else if (this.targetView == 'Counter') {
          Counter()
            .commonStyle()
        } else if (this.targetView == 'Flex') {
          Flex()
            .commonStyle()
        } else if (this.targetView == 'GridCol') {
          GridRow() {
            GridCol()
              .commonStyle()
          }
        } else if (this.targetView == 'GridRow') {
          GridRow() {
            GridCol() {
              Row().height('20vp')
            }
          }
          .commonStyle()
        } else if (this.targetView == 'Grid') {
          Grid() {
            GridItem()
          }
          .commonStyle()
        } else if (this.targetView == 'GridItem') {
          Grid() {
            GridItem()
              .commonStyle()
          }
        } else if (this.targetView == 'List') {
          List()
            .commonStyle()
        } else if (this.targetView == 'ListItem') {
          List() {
            ListItem()
              .commonStyle()
          }
        } else if (this.targetView == 'ListItemGroup') {
          List() {
            ListItemGroup() {
              ListItem() {
                Text('N')
              }
            }
            .commonStyle()
          }
        } else if (this.targetView == 'Navigator') {
          Navigator({ target: 'pages/BackgroundColorPage' })
            .commonStyle()
        } else if (this.targetView == 'Panel') {
          Panel(true)
            .commonStyle()
        } else if (this.targetView == 'Refresh') {
          Refresh({ refreshing: true })
            .commonStyle()
        }
        else if (this.targetView == 'RelativeContainer') {
          RelativeContainer() {
            Row()
              .width(100)
              .height(100)
              .backgroundColor("#FF3333")
              .alignRules({
                top: { anchor: "__container__", align: VerticalAlign.Top },
                left: { anchor: "__container__", align: HorizontalAlign.Start }
              })
          }
          .commonStyle()
        } else if (this.targetView == 'Row') {
          Row()
            .commonStyle()
        } else if (this.targetView == 'RowSplit') {
          RowSplit() {
            Text('1')
          }
          .commonStyle()
        } else if (this.targetView == 'Scroll') {
          Scroll() {
            Text('N')
          }
          .commonStyle()
        } else if (this.targetView == 'SideBarContainer') {
          SideBarContainer() {
            Text("Index0")
          }
          .commonStyle()
        } else if (this.targetView == 'Stack') {
          Stack()
            .commonStyle()
        } else if (this.targetView == 'Swiper') {
          Swiper()
            .commonStyle()
        } else if (this.targetView == 'Swiper') {
          Swiper()
            .commonStyle()
        } else if (this.targetView == 'Tabs') {
          Tabs()
            .commonStyle()
        } else if (this.targetView == 'TabContent') {
          Tabs() {
            TabContent()
              .commonStyle()
          }
        } else if (this.targetView == 'FlowItem') {
          WaterFlow() {
            FlowItem()
              .commonStyle()
          }
        } else if (this.targetView == 'WaterFlow') {
          WaterFlow({ footer: this.itemFoot.bind(this), scroller: this.scroller }) {
            LazyForEach(this.datasource, (item: number) => {
              FlowItem() {
                Column() {
                  Text("N" + item).fontSize(12).height('16')
                  Image('/pages/images/icon.png')
                    .objectFit(ImageFit.Fill)
                    .width('100%')
                    .layoutWeight(1)
                }
              }
              .width('100%')
              .height(this.itemHeightArray[item])
            }, item => item)
          }
          .columnsTemplate("1fr 1fr 1fr 1fr")
          .itemConstraintSize({
            minWidth: 0,
            maxWidth: '100%',
            minHeight: 0,
            maxHeight: '100%'
          })
          .columnsGap(10)
          .rowsGap(5)
          .onReachStart(() => {
            console.info("onReachStart")
          })
          .onReachEnd(() => {
            console.info("onReachEnd")
          })
          .width('300')
          .height('180')
          .layoutDirection(FlexDirection.Column)
          .commonStyle()
        } else if (this.targetView == 'Video') {
          Video({
            src: $r('app.media.tree')
          })
            .commonStyle()
        } else if (this.targetView == 'Circle') {
          Circle()
            .commonStyle()
        } else if (this.targetView == 'Ellipse') {
          Ellipse()
            .commonStyle()
        } else if (this.targetView == 'Line') {
          Line()
            .commonStyle()
        } else if (this.targetView == 'Polyline') {
          Polyline()
            .commonStyle()
        } else if (this.targetView == 'Polygon') {
          Polygon()
            .commonStyle()
        } else if (this.targetView == 'Path') {
          Path()
            .commonStyle()
        } else if (this.targetView == 'Rect') {
          Rect()
            .commonStyle()
        } else if (this.targetView == 'Shape') {
          Shape()
            .commonStyle()
        } else if (this.targetView == 'Canvas') {
          Canvas()
            .commonStyle()
        }
      }
      .width('100%')
      .height('100%')
      .backgroundColor(Color.Orange)
    }
    .defaultFocus(true)
  }
}