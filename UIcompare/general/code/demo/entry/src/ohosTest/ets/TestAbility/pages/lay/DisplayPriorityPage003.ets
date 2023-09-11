/**
 * Copyright (c) 2023 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import AttrsManager from '../../../test/model/AttrsManager'
import web_webview from '@ohos.web.webview'
import router from '@ohos.router';
import { WaterFlowDataSource } from '../WaterFlowDataSource'

class MyDataSource implements IDataSource {
  private list: number[] = []
  private listener: DataChangeListener

  constructor(list: number[]) {
    this.list = list
  }

  totalCount(): number {
    return this.list.length
  }

  getData(index: number): any {
    return this.list[index]
  }

  registerDataChangeListener(listener: DataChangeListener): void {
    this.listener = listener
  }

  unregisterDataChangeListener() {
  }
}

@Entry
@Component
struct DisplayPriorityPage003 {
  //固定容器大小为50%，颠倒优先级设置，从123变为321，此时应该显示前两个组件,红蓝
  controller: web_webview.WebviewController = new web_webview.WebviewController()
  @State _generalAttr: string = '90%'; //通用属性初始值
  @State targetView: string = router.getParams() ? router.getParams()['view']['targetView'] : "" //当前测试的组件
  @State componentKey: string = router.getParams() ? router.getParams()['view']['componentKey'] : "" //组件唯一标识
  @State formId:number = 0;
  @State messageCommon: string = 'Hello World'
  @State state: AnimationStatus = AnimationStatus.Initial
  @State reverse: boolean = false
  @State iterations: number = 1
  @State value: number = 0
  @State Number1: String[] = ['0', '1', '2', '3', '4']
  private arr: number[] = [0, 1, 2]
  private arr1: number[] = [0, 1]
  private swiperController: SwiperController = new SwiperController()
  private data: MyDataSource = new MyDataSource([])
  @State fontColor: string = '#182431'
  @State selectedFontColor: string = '#007DFF'
  @State currentIndex: number = 0
  private controller1: TabsController = new TabsController()
  private settings: RenderingContextSettings = new RenderingContextSettings(true)
  private context1: CanvasRenderingContext2D = new CanvasRenderingContext2D(this.settings)
  private context2: CanvasRenderingContext2D = new CanvasRenderingContext2D(this.settings)
  private context3: CanvasRenderingContext2D = new CanvasRenderingContext2D(this.settings)
  private selectedTime: Date = new Date('2023-07-09T08:00:00')
  textTimerController: TextTimerController = new TextTimerController()
  private selectedDate: Date = new Date('2023-06-02')
  private fromStart: boolean = true
  private step: number = 10
  private loop: number = Infinity
  private src: string = "Running Marquee starts rolling Running Marquee starts rolling"
  @State isActive: boolean = false
  @State dex: number = 0
  @State current: number = 1
  @State text: string = ''
  controller3: TextInputController = new TextInputController()
  @State minSize: number = 50
  @State maxSize: number = 100
  @State fontSize: number = 24
  scroller1: Scroller = new Scroller()
  datasource: WaterFlowDataSource = new WaterFlowDataSource()
  private itemWidthArray: number[] = []
  private itemHeightArray: number[] = []
  @Builder NavigationTitle() {
    Column() {
      Text('Title')
        .fontColor('#182431')
        .fontSize(30)
        .lineHeight(41)
        .fontWeight(700)
      Text('subtitle')
        .fontColor('#182431')
        .fontSize(14)
        .lineHeight(19)
        .opacity(0.4)
        .margin({ top: 2, bottom: 20 })
    }.alignItems(HorizontalAlign.Start)
  }

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

  getSize() {
    let ret = Math.floor(Math.random() * this.maxSize)
    return (ret > this.minSize ? ret : this.minSize)
  }

  getItemSizeArray() {
    for (let i = 0; i < 100; i++) {
      this.itemWidthArray.push(this.getSize())
      this.itemHeightArray.push(this.getSize())
    }
  }

  @Styles commonStyle1(){
    .width(120)
    .height(260)
    .margin({top:260})
    .backgroundColor('#FFC0CB')
    .displayPriority(3)
  }

  @Styles tabStyle1(){
    .width(120)
    .height(260)
    .backgroundColor('#FFC0CB')
    .displayPriority(3)
  }

  @Styles commonStyle2(){
    .width(120)
    .height(260)
    .margin({top:260})
    .backgroundColor('#ADD8E6')
    .displayPriority(2)
  }

  @Styles tabStyle2(){
    .width(120)
    .height(260)
    .backgroundColor('#ADD8E6')
    .displayPriority(2)
  }

  @Styles commonStyle3(){
    .width(120)
    .height(260)
    .margin({top:260})
    .backgroundColor('#98FB98')
    .displayPriority(1)
  }

  @Styles tabStyle3(){
    .width(120)
    .height(260)
    .backgroundColor('#98FB98')
    .displayPriority(1)
  }

  @Builder TabBuilder(index: number, name: string) {
    Column() {
      Text(name)
        .fontColor(this.currentIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(16)
        .fontWeight(this.currentIndex === index ? 500 : 400)
        .lineHeight(22)
        .margin({ top: 17, bottom: 7 })
      Divider()
        .strokeWidth(2)
        .color('#007DFF')
        .opacity(this.currentIndex === index ? 1 : 0)
    }.width('100%')
  }

  //ScrollBar组件
  private scroller: Scroller = new Scroller()

  aboutToAppear(): void {
    let list = []
    for (var i = 1; i <= 10; i++) {
      list.push(i.toString());
    }
    this.data = new MyDataSource(list)
    this.getItemSizeArray()
  }

  onPageShow() {
    console.info('FocusPage onPageShow');
    AttrsManager.registerDataChange(value => this._generalAttr = value)
  }
  // @ts-nocheck
  build() {
    Column() {
      if (this.targetView == 'TabContent') {
        Tabs({ barPosition: BarPosition.Start, controller: this.controller1 }) {
          TabContent() {
            Column().width('30%').height('30%')
          }.tabBar(this.TabBuilder(0, 'green'))
          .tabStyle1()
          TabContent() {
            Column().width('40%').height('40%')
          }.tabBar(this.TabBuilder(1, 'blue'))
          .tabStyle2()
          TabContent() {
            Column().width('30%').height('30%')
          }.tabBar(this.TabBuilder(0, 'red'))
          .tabStyle3()
        }
        .vertical(false)
        .barMode(BarMode.Fixed)
        .barWidth(200)
        .barHeight(60)
        .animationDuration(400)
        .onChange((index: number) => {
          this.currentIndex = index
        })
        .width(this._generalAttr)
        .height(150)
        .margin({ top: 260 })
      }
      else if (this.targetView == 'FlowItem') {
        Column(){
          WaterFlow() {
            FlowItem(){
              Text("N  FlowItem1" ).fontSize(12).height('16')
            }
            .width(250)
            .height(144)
            .backgroundColor('#FFC0CB')
            .displayPriority(3)

            FlowItem(){
              Text("N  FlowItem2" ).fontSize(12).height('16')
            }
            .width(250)
            .height(144)
            .backgroundColor('#ADD8E6')
            .displayPriority(2)

            FlowItem(){
              Text("N  FlowItem3" ).fontSize(12).height('16')
            }
            .width(250)
            .height(144)
            .backgroundColor('#98FB98')
            .displayPriority(1)
          }
          .width(400)
          .height(this._generalAttr)
          .border({width:2,color:Color.Yellow})
        }.height(480)
      }
      else if (this.targetView == 'ListItem') {
        Column() {
          List() {
            ListItem() {
              Text('ListItem')
            }
            .width(250)
            .height(144)
            .backgroundColor('#FFC0CB')
            .displayPriority(3)

            ListItem() {
              Text('ListItem')
            }
            .width(250)
            .height(144)
            .backgroundColor('#ADD8E6')
            .displayPriority(2)

            ListItem() {
              Text('ListItem')
            }
            .width(250)
            .height(144)
            .backgroundColor('#98FB98')
            .displayPriority(1)
          }
          .width(400)
          .height(this._generalAttr)
          .border({ width: 2, color: Color.Yellow })
        }.height(480)
      }
      else if (this.targetView == 'ListItemGroup') {
        Column() {
          List() {
            ListItemGroup() {
              ListItem() {
                Text('ListItemGroup')
                  .margin({ left: 20 })
                  .height(144)
              }
            }
            .width(250)
            .height(144)
            .backgroundColor('#FFC0CB')
            .displayPriority(3)

            ListItemGroup() {
              ListItem() {
                Text('ListItemGroup')
                  .margin({ left: 20 })
                  .height(144)
              }
            }
            .width(250)
            .height(144)
            .backgroundColor('#ADD8E6')
            .displayPriority(2)

            ListItemGroup() {
              ListItem() {
                Text('ListItemGroup')
                  .margin({ left: 20 })
                  .height(144)
              }
            }
            .width(250)
            .height(144)
            .backgroundColor('#98FB98')
            .displayPriority(1)
          }
          .width(400)
          .height(this._generalAttr)
          .border({ width: 2, color: Color.Yellow })
        }.height(480)
      }
      else{
        Flex({ justifyContent: FlexAlign.SpaceBetween })
        {
          if (this.targetView == 'AlphabetIndexer') {
            AlphabetIndexer({ arrayValue: ['A', 'B', 'C'], selected: 0 })
              .commonStyle1()
          } else if (this.targetView == 'Blank') {
            Blank()
              .commonStyle1()
          } else if (this.targetView == 'Button') {
            Button("button",{ type: ButtonType.Normal, stateEffect: true })
              .commonStyle1()
          } else if (this.targetView == 'Checkbox') {
            Checkbox({name: 'checkbox1',  group: 'checkboxGroup'})
              .select(true)
              .selectedColor(0xed6f21)
              .commonStyle1()
              .width(90)
          } else if (this.targetView == 'CheckboxGroup') {
            CheckboxGroup({ group: 'checkboxGroup' })
              .selectedColor('#007DFF')
              .commonStyle1()
          } else if (this.targetView == 'DataPanel') {
            DataPanel({ values: [50, 12, 8, 5] })
              .commonStyle1()
          } else if (this.targetView == 'DatePicker') {
            DatePicker({ selected: this.selectedDate } )
              .commonStyle1()
          } else if (this.targetView == 'Divider') {
            Divider()
              .commonStyle1()
          } else if (this.targetView == 'Gauge') {
            Gauge({ value: 75 })
              .commonStyle1()
          } else if (this.targetView == 'Image') {
            // Column(){
            Image($r("app.media.icon")).objectFit(ImageFit.Contain)
              .commonStyle1()
          } else if (this.targetView == 'ImageAnimator') {
            ImageAnimator()
              .images([
                {
                  src: $r('app.media.icon1'),
                  width:50,
                  height:50,
                  top:30,
                  left:30
                },
              ])
              .duration(2000)
              .fixedSize(false)
              .state(this.state)
              .reverse(this.reverse)
              .iterations(this.iterations)
              .onStart(() => {
                console.info('Start')
              })
              .onPause(() => {
                console.info('Pause')
              })
              .onRepeat(() => {
                console.info('Repeat')
              })
              .onCancel(() => {
                console.info('Cancel')
              })
              .onFinish(() => {
                console.info('Finish')
                this.state = AnimationStatus.Stopped
              })
              .commonStyle1()
          } else if (this.targetView == 'LoadingProgress') {
            LoadingProgress()
              .commonStyle1()
          } else if (this.targetView == 'Marquee') {
            Marquee({
              start: false,
              step: this.step,
              loop: this.loop,
              fromStart: this.fromStart,
              src: this.src
            })
              .commonStyle1()
          } else if (this.targetView == 'Menu') {
            Menu() {
              MenuItem({ content: "MenuItem1" })
            }
            .commonStyle1()
          } else if (this.targetView == 'MenuItem') {
            MenuItem({ content: "MenuItem1" })
              .commonStyle1()
          } else if (this.targetView == 'MenuItemGroup') {
            MenuItemGroup({ header: "MenuItemGroup小标题" })
              .commonStyle1()
          } else if (this.targetView == 'Navigation') {
            Navigation()
              .title(this.NavigationTitle)
              .commonStyle1()
          } else if (this.targetView == 'NavRouter') {
            NavRouter() {
              Row() {
                Text(`NavRouter`)
                  .fontSize(14)
                  .fontWeight(500)
                  .textAlign(TextAlign.Center)
              }
              .width('80%')
              .height('30%')

              NavDestination() {
                Text(`NavDestination`).fontSize(50)
                Flex({ direction: FlexDirection.Row }) {
                  Row() {
                    Image($r('app.media.icon')).width(40).height(40).borderRadius(40).margin({ right: 15 })
                    Text('今天共有七节课').fontSize(30)
                  }.padding({ left: 15 })
                }
              }
            }
            .commonStyle1()
          } else if (this.targetView == 'NavDestination') {
            NavDestination()
              .commonStyle1()
          } else if (this.targetView == 'PatternLock') {
            PatternLock()
              .commonStyle1()
          } else if (this.targetView == 'Progress') {
            Progress({ value: 10 })
              .commonStyle1()
              .border({width:2})
          } else if (this.targetView == 'QRCode') {
            QRCode('hello world')
              .commonStyle1()
          } else if (this.targetView == 'Radio') {
            Radio({ value: 'Radio1', group: 'radioGroup' })
              .commonStyle1()
              .width(90)
          } else if (this.targetView == 'Rating') {
            Rating({ rating: 3.5 })
              .commonStyle1()
          } else if (this.targetView == 'RichText') {
            RichText('<h1>h1小标题</h1>')
              .commonStyle1()
          } else if (this.targetView == 'ScrollBar') {
            ScrollBar({ scroller: this.scroller, direction: ScrollBarDirection.Vertical,state: BarState.On }) {
              Text("ScrollBar")
                .width('80')
                .height(100)
            }
            .commonStyle1()
          } else if (this.targetView == 'Search') {
            Search()
              .commonStyle1()
          } else if (this.targetView == 'Select') {
            Select([{ value: 'aaa' },
              { value: 'bbb' }])
              .value('Select')
              .commonStyle1()
          } else if (this.targetView == 'Slider') {
            Slider()
              .commonStyle1()
          } else if (this.targetView == 'Span') {
            Text() {
              Span('This is the Span component')
                .commonStyle1()
            }
          }
          else if (this.targetView == 'Stepper') {
            Stepper()
              .commonStyle1()
          }
          else if (this.targetView == 'StepperItem') {
            Stepper() {
              StepperItem()
                .commonStyle1()
            }
          }
          else if (this.targetView == 'Text') {
            Text('text')
              .commonStyle1()
          } else if (this.targetView == 'TextArea') {
            TextArea({
              text:"The text area",
              placeholder: 'The text area can hold an unlimited amount of text. input your word...'
            })
              .placeholderFont({ size: 16, weight: 400 })
              .commonStyle1()
          } else if (this.targetView == 'TextClock') {
            TextClock()
              .commonStyle1()
          } else if (this.targetView == 'TextInput') {
            TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controller3 })
              .placeholderFont({ size: 14, weight: 400 })
              .margin(20)
              .fontSize(12)
              .fontColor(Color.Black)
              .inputFilter('[a-z]', (e) => {
                console.log(JSON.stringify(e))
              })
              .onChange((value: string) => {
                this.text = value
              })
              .commonStyle1()
          } else if (this.targetView == 'TextPicker') {
            TextPicker({ range: ['apple1', 'orange2', 'peach3', 'grape4'] })
              .commonStyle1()
          } else if (this.targetView == 'TextTimer') {
            TextTimer({ isCountDown: true, count: 30000, controller: this.textTimerController })
              .commonStyle1()
          } else if (this.targetView == 'TimePicker') {
            TimePicker({
              selected: this.selectedTime,
            })
              .commonStyle1()
          } else if (this.targetView == 'Toggle1') {
            Toggle({ type: ToggleType.Switch, isOn: false })
              .selectedColor('#007DFF')
              .switchPointColor('#FFFFFF')
              .onChange((isOn: boolean) => {
                console.info('Component status:' + isOn)
              })
              .commonStyle1()
              .width(90)
          }
          else if (this.targetView == 'Toggle2') {
            Toggle({ type: ToggleType.Checkbox, isOn: false })
              .selectedColor('#007DFF')
              .switchPointColor('#FFFFFF')
              .onChange((isOn: boolean) => {
                console.info('Component status:' + isOn)
              })
              .commonStyle1()
              .width(90)
          }
          else if (this.targetView == 'Toggle3') {
            Toggle({ type: ToggleType.Button, isOn: false })
              .selectedColor('#007DFF')
              .switchPointColor('#FFFFFF')
              .onChange((isOn: boolean) => {
                console.info('Component status:' + isOn)
              })
              .commonStyle1()
          }
          else if (this.targetView == 'Badge') {
            Badge({
              value: 'New',
              position: BadgePosition.Right,
              style: { badgeSize: 16, badgeColor: '#FA2A2D' }
            }) {
              Text('list2').width(27).height(60).fontSize(14).fontColor('#182431')
            }
            .commonStyle1()
          } else if (this.targetView == 'Column') {
            Column(){
              Text("Column 1111")
            }
            .commonStyle1()
          } else if (this.targetView == 'ColumnSplit') {
            ColumnSplit() {
              Text('ColumnSplit')
            }
            .commonStyle1()
          } else if (this.targetView == 'Counter') {
            Counter() {
              Text(this.value.toString())
            }
            .onInc(() => {
              this.value++
            })
            .onDec(() => {
              this.value--
            })
            .commonStyle1()
          } else if (this.targetView == 'Flex') {
            Flex({ direction: FlexDirection.RowReverse }) {
              Text('1').width('20%').height(50)
              Text('2').width('20%').height(50)
              Text('3').width('20%').height(50)
              Text('4').width('20%').height(50)
            }
            .commonStyle1()
          }  else if (this.targetView == 'GridRow') {
            GridRow() {
              GridCol({span:6}) {
                Text('GridRow').height(80)
              }
            }
            .commonStyle1()
          } else if (this.targetView == 'Grid') {
            Grid() {
              ForEach(this.Number1, (day: string) => {
                ForEach(this.Number1, (day: string) => {
                  GridItem() {
                    Text(day)
                      .fontSize(16)
                      .width('100%')
                      .height('100%')
                      .textAlign(TextAlign.Center)
                  }
                }, day => day)
              }, day => day)
            }
            .columnsTemplate('1fr 1fr 1fr 1fr 1fr')
            .rowsTemplate('1fr 1fr 1fr 1fr 1fr')
            .columnsGap(10)
            .rowsGap(10)
            .width('90%')
            .height(300)
            .commonStyle1()
          } else if (this.targetView == 'GridItem') {
            Grid() {
              GridItem()
                .commonStyle1()
            }
          } else if (this.targetView == 'List') {
            List({ space: 20, initialIndex: 0 }) {
              ForEach(this.arr, (item) => {
                ListItem() {
                  Text('List' + item)
                    .width('80%')
                    .height(30)
                    .fontSize(12)
                    .textAlign(TextAlign.Center)
                }
              }, item => item)
            }
            .listDirection(Axis.Vertical) // 排列方向
            .scrollBar(BarState.Off)
            .divider({ strokeWidth: 2, color: 0xFFFFFF, startMargin: 20, endMargin: 20 }) // 每行之间的分界线
            .edgeEffect(EdgeEffect.Spring) // 滑动到边缘无效果
            .onScrollIndex((firstIndex: number, lastIndex: number) => {
              console.info('first' + firstIndex)
              console.info('last' + lastIndex)
            })
            .commonStyle1()
          }  else if (this.targetView == 'Navigator') {
            Navigator({ target: '/pages/BackgroundColorPage' }){
              Text('Go to ' + '/pages/BackgroundColorPage')
            }
            .commonStyle1()
          } else if (this.targetView == 'Panel') {
            Panel(true) {
              // 展示日程
              Column() {
                Text('Today Calendar').fontSize(12)
              }
            }
            .type(PanelType.Foldable).mode(PanelMode.Mini)
            .dragBar(true) // 默认开启
            .halfHeight(500) // 默认一半
            .commonStyle1()
          } else if (this.targetView == 'Refresh') {
            Refresh({ refreshing: true })
              .commonStyle1()
          }
          else if (this.targetView == 'RelativeContainer') {
            RelativeContainer() {
              Row()
                .width(30)
                .height(30)
                .backgroundColor("#FF3333")
                .alignRules({
                  top: { anchor: "__container__", align: VerticalAlign.Top },
                  left: { anchor: "__container__", align: HorizontalAlign.Start },
                  right:{anchor: "__container__", align: HorizontalAlign.Center},
                  bottom:{anchor: "__container__", align: VerticalAlign.Center},
                })
                .id("row001")
            }
            .commonStyle1()
          } else if (this.targetView == 'Row') {
            Row(){
              Text("Row Row Row")
            }
            .commonStyle1()
          } else if (this.targetView == 'RowSplit') {
            RowSplit() {
              Text('1')
            }
            .commonStyle1()
          } else if (this.targetView == 'Scroll') {
            Scroll(this.scroller) {
              Column() {
                ForEach(this.arr, (item) => {
                  Text(item.toString())
                    .width('30%')
                    .height(60)
                    .border({width:2})
                    .borderRadius(15)
                    .fontSize(16)
                    .textAlign(TextAlign.Center)
                    .margin({ top: 10 })
                }, item => item)
              }.width('100%')
            }
            .scrollable(ScrollDirection.Vertical)  // 滚动方向纵向
            .scrollBar(BarState.On)  // 滚动条常驻显示
            .scrollBarColor(Color.Gray)  // 滚动条颜色
            .scrollBarWidth(10) // 滚动条宽度
            .edgeEffect(EdgeEffect.None)
            .onScroll((xOffset: number, yOffset: number) => {
              console.info(xOffset + ' ' + yOffset)
            })
            .onScrollEdge((side: Edge) => {
              console.info('To the edge')
            })
            .onScrollEnd(() => {
              console.info('Scroll Stop')
            })
            .commonStyle1()
          } else if (this.targetView == 'SideBarContainer') {
            SideBarContainer(SideBarContainerType.Embed) {
              Column() {
                ForEach(this.arr1, (item, index) => {
                  Column({ space: 5 }) {
                    Text("Index0" + item)
                      .fontSize(25)
                      .fontColor(this.current === item ? '#0A59F7' : '#999')
                      .fontFamily('source-sans-pro,cursive,sans-serif')
                  }
                  .onClick(() => {
                    this.current = item
                  })
                }, item => item)
              }.width('40%')
              Column() {
                Text('SideBarContainer').fontSize(10)
              }
              .margin({ top: 20, left: 20, right: 30 })
            }
            .sideBarWidth(150)
            .minSideBarWidth(50)
            .maxSideBarWidth(100)
            .onChange((value: boolean) => {
              console.info('status:' + value)
            })
            .commonStyle1()
          } else if (this.targetView == 'Stack') {
            Stack({ alignContent: Alignment.Center }) {
              Text('First child, show in bottom').width('40%').height('40%').backgroundColor(0xd2cab3).align(Alignment.Top)
              Text('Second child, show in top').width('25%').height('25%').backgroundColor(0xc1cbac).align(Alignment.Top)
            }.width('100%').height(150).margin({ top: 5 })
            .commonStyle1()
          } else if (this.targetView == 'Swiper') {
            Swiper(this.swiperController) {
              LazyForEach(this.data, (item: string) => {
                Text(item).width('30%').height('30%').textAlign(TextAlign.Center).fontSize(30)
              }, item => item)
            }
            .cachedCount(2)
            .index(1)
            .autoPlay(true)
            .interval(4000)
            .indicator(true)
            .loop(true)
            .duration(1000)
            .itemSpace(0)
            .curve(Curve.Linear)
            .onChange((index: number) => {
              console.info(index.toString())
            })
            .commonStyle1()
          }  else if (this.targetView == 'Tabs') {
            Tabs({ barPosition: BarPosition.Start, controller: this.controller1 }) {
              TabContent() {
                Column().width('20%').height('20%')
              }.tabBar(this.TabBuilder(0, 'green'))

              TabContent() {
                Column().width('30%').height('30%')
              }.tabBar(this.TabBuilder(1, 'blue'))
            }
            .vertical(false)
            .barMode(BarMode.Fixed)
            .barWidth(360)
            .barHeight(56)
            .animationDuration(400)
            .onChange((index: number) => {
              this.currentIndex = index
            })
            .width(360)
            .height(296)
            .commonStyle1()
          }
          else if (this.targetView == 'WaterFlow') {
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
            .commonStyle1()
          } else if (this.targetView == 'Video') {
            Video({
              src: $r('app.media.tree')
            })
              .commonStyle1()
          } else if (this.targetView == 'Circle') {
            Circle()
              .commonStyle1()
          } else if (this.targetView == 'Ellipse') {
            Ellipse()
              .width(150)
              .height(100)
              .fillOpacity(0)
              .stroke(Color.Blue)
              .strokeWidth(3)
              .commonStyle1()
          } else if (this.targetView == 'Line') {
            Line()
              .width(200)
              .height(150)
              .startPoint([0, 0])
              .endPoint([50, 100])
              .stroke(Color.Black)
              .commonStyle1()
          } else if (this.targetView == 'Polyline') {
            Polyline({ width: 100, height: 100 })
              .points([[10, 0], [40, 60], [100, 100]])
              .fillOpacity(0)
              .stroke(Color.Blue)
              .strokeWidth(3)
              .commonStyle1()
          } else if (this.targetView == 'Polygon') {
            Polygon({ width: 100, height: 100 })
              .points([[0, 0], [50, 100], [100, 0]])
              .fill(Color.Green)
              .commonStyle1()
          } else if (this.targetView == 'Path') {
            Path()
              .commands('M10 10 H100 V100 H0 Z')
              .fillOpacity(0)
              .stroke(Color.Black)
              .strokeWidth(3)
              .border({width:2})
              .commonStyle1()
          } else if (this.targetView == 'Rect') {
            Rect()
              .radius(20)
              .stroke(Color.Transparent)
              .commonStyle1()
          } else if (this.targetView == 'Shape') {
            Shape() {
              Rect().width('80%').height('70%')
            }
            .viewPort({ x: -100, y: 5, width: 320, height: 70 })
            .stroke(Color.Black)
            .strokeWidth(10)
            .commonStyle1()
          } else if (this.targetView == 'Canvas') {
            Canvas(this.context1)
              .onReady(() => {
                this.context1.fillRect(0, 10, 30, 30)
              })
              .commonStyle1()
          }else if (this.targetView == 'Web') {
            Web({ src: $rawfile("index.html"), controller: this.controller })
              .commonStyle1()
          }else if (this.targetView == 'XComponent') {
            XComponent({ id: 'xcomponentId-container', type: 'component' }) {
              Text('Hello')
                .fontSize(40)
              Divider()
                .margin(4)
                .strokeWidth(2)
                .color('#F1F3F5')
                .width("80%")
              Column() {
                Text(this.messageCommon)
                  .fontSize(30)
              }
            }
            .commonStyle1()
            .border({width:2,color:'#FFC0CB'})
          }
          //第二个
          if (this.targetView == 'AlphabetIndexer') {
            AlphabetIndexer({ arrayValue: ['A', 'B', 'C'], selected: 0 })
              .commonStyle2()
          } else if (this.targetView == 'Blank') {
            Blank()
              .commonStyle2()
          } else if (this.targetView == 'Button') {
            Button("button",{ type: ButtonType.Normal, stateEffect: true })
              .commonStyle2()
          } else if (this.targetView == 'Checkbox') {
            Checkbox({name: 'checkbox1',  group: 'checkboxGroup'})
              .select(true)
              .selectedColor(0xed6f21)
              .commonStyle2()
              .width(90)
          } else if (this.targetView == 'CheckboxGroup') {
            CheckboxGroup({ group: 'checkboxGroup' })
              .selectedColor('#007DFF')
              .commonStyle2()
          } else if (this.targetView == 'DataPanel') {
            DataPanel({ values: [50, 12, 8, 5] })
              .commonStyle2()
          } else if (this.targetView == 'DatePicker') {
            DatePicker({ selected: this.selectedDate } )
              .commonStyle2()
          } else if (this.targetView == 'Divider') {
            Divider()
              .commonStyle2()
          } else if (this.targetView == 'Gauge') {
            Gauge({ value: 75 })
              .commonStyle2()
          } else if (this.targetView == 'Image') {
            Image($r("app.media.icon")).objectFit(ImageFit.Contain)
              .commonStyle2()
          } else if (this.targetView == 'ImageAnimator') {
            ImageAnimator()
              .images([
                {
                  src: $r('app.media.icon1'),
                  width:50,
                  height:50,
                  top:30,
                  left:30
                },
              ])
              .duration(2000)
              .fixedSize(false)
              .state(this.state)
              .reverse(this.reverse)
              .iterations(this.iterations)
              .onStart(() => {
                console.info('Start')
              })
              .onPause(() => {
                console.info('Pause')
              })
              .onRepeat(() => {
                console.info('Repeat')
              })
              .onCancel(() => {
                console.info('Cancel')
              })
              .onFinish(() => {
                console.info('Finish')
                this.state = AnimationStatus.Stopped
              })
              .commonStyle2()
          } else if (this.targetView == 'LoadingProgress') {
            LoadingProgress()
              .commonStyle2()
          } else if (this.targetView == 'Marquee') {
            Marquee({
              start: false,
              step: this.step,
              loop: this.loop,
              fromStart: this.fromStart,
              src: this.src
            })
              .commonStyle2()
          } else if (this.targetView == 'Menu') {
            Menu() {
              MenuItem({ content: "MenuItem1" })
            }
            .commonStyle2()
          } else if (this.targetView == 'MenuItem') {
            MenuItem({ content: "MenuItem1" })
              .commonStyle2()
          } else if (this.targetView == 'MenuItemGroup') {
            MenuItemGroup({ header: "MenuItemGroup小标题" })
              .commonStyle2()
          } else if (this.targetView == 'Navigation') {
            Navigation()
              .title(this.NavigationTitle)
              .commonStyle2()
          } else if (this.targetView == 'NavRouter') {
            NavRouter() {
              Row() {
                Text(`NavRouter`)
                  .fontSize(14)
                  .fontWeight(500)
                  .textAlign(TextAlign.Center)
              }
              .width('80%')
              .height('30%')

              NavDestination() {
                Text(`NavDestination`).fontSize(50)
                Flex({ direction: FlexDirection.Row }) {
                  Row() {
                    Image($r('app.media.icon')).width(40).height(40).borderRadius(40).margin({ right: 15 })
                    Text('今天共有七节课').fontSize(30)
                  }.padding({ left: 15 })
                }
              }
            }
            .commonStyle2()
          } else if (this.targetView == 'NavDestination') {
            NavDestination()
              .commonStyle2()
          } else if (this.targetView == 'PatternLock') {
            PatternLock()
              .commonStyle2()
          } else if (this.targetView == 'Progress') {
            Progress({ value: 10 })
              .commonStyle2()
              .border({width:2})
          } else if (this.targetView == 'QRCode') {
            QRCode('hello world')
              .commonStyle2()
          } else if (this.targetView == 'Radio') {
            Radio({ value: 'Radio1', group: 'radioGroup' })
              .commonStyle2()
              .width(90)
          } else if (this.targetView == 'Rating') {
            Rating({ rating: 3.5 })
              .commonStyle2()
          } else if (this.targetView == 'RichText') {
            RichText('<h1>h1小标题</h1>')
              .commonStyle2()
          } else if (this.targetView == 'ScrollBar') {
            ScrollBar({ scroller: this.scroller, direction: ScrollBarDirection.Vertical,state: BarState.On }) {
              Text("ScrollBar")
                .width('80')
                .height(100)
            }
            .commonStyle2()
          } else if (this.targetView == 'Search') {
            Search()
              .commonStyle2()
          } else if (this.targetView == 'Select') {
            Select([{ value: 'aaa' },
              { value: 'bbb' }])
              .value('Select')
              .commonStyle2()
          } else if (this.targetView == 'Slider') {
            Slider()
              .commonStyle2()
          } else if (this.targetView == 'Span') {
            Text() {
              Span('This is the Span component')
                .commonStyle2()
            }
          }
          else if (this.targetView == 'Stepper') {
            Stepper()
              .commonStyle2()
          }
          else if (this.targetView == 'StepperItem') {
            Stepper() {
              StepperItem()
                .commonStyle2()
            }
          }
          else if (this.targetView == 'Text') {
            Text('text')
              .commonStyle2()
          } else if (this.targetView == 'TextArea') {
            TextArea({
              text:"The text area",
              placeholder: 'The text area can hold an unlimited amount of text. input your word...'
            })
              .placeholderFont({ size: 16, weight: 400 })
              .commonStyle2()
          } else if (this.targetView == 'TextClock') {
            TextClock()
              .commonStyle2()
          } else if (this.targetView == 'TextInput') {
            TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controller3 })
              .placeholderFont({ size: 14, weight: 400 })
              .margin(20)
              .fontSize(12)
              .fontColor(Color.Black)
              .inputFilter('[a-z]', (e) => {
                console.log(JSON.stringify(e))
              })
              .onChange((value: string) => {
                this.text = value
              })
              .commonStyle2()
          } else if (this.targetView == 'TextPicker') {
            TextPicker({ range: ['apple1', 'orange2', 'peach3', 'grape4'] })
              .commonStyle2()
          } else if (this.targetView == 'TextTimer') {
            TextTimer({ isCountDown: true, count: 30000, controller: this.textTimerController })
              .commonStyle2()
          } else if (this.targetView == 'TimePicker') {
            TimePicker({
              selected: this.selectedTime,
            })
              .commonStyle2()
          } else if (this.targetView == 'Toggle1') {
            Toggle({ type: ToggleType.Switch, isOn: false })
              .selectedColor('#007DFF')
              .switchPointColor('#FFFFFF')
              .onChange((isOn: boolean) => {
                console.info('Component status:' + isOn)
              })
              .commonStyle2()
              .width(90)
          }
          else if (this.targetView == 'Toggle2') {
            Toggle({ type: ToggleType.Checkbox, isOn: false })
              .selectedColor('#007DFF')
              .switchPointColor('#FFFFFF')
              .onChange((isOn: boolean) => {
                console.info('Component status:' + isOn)
              })
              .commonStyle2()
              .width(90)
          }
          else if (this.targetView == 'Toggle3') {
            Toggle({ type: ToggleType.Button, isOn: false })
              .selectedColor('#007DFF')
              .switchPointColor('#FFFFFF')
              .onChange((isOn: boolean) => {
                console.info('Component status:' + isOn)
              })
              .commonStyle2()
          }
          else if (this.targetView == 'Badge') {
            Badge({
              value: 'New',
              position: BadgePosition.Right,
              style: { badgeSize: 16, badgeColor: '#FA2A2D' }
            }) {
              Text('list2').width(27).height(60).fontSize(14).fontColor('#182431')
            }
            .commonStyle2()
          } else if (this.targetView == 'Column') {
            Column(){
              Text("Column 1111")
            }
            .commonStyle2()
          } else if (this.targetView == 'ColumnSplit') {
            ColumnSplit() {
              Text('ColumnSplit')
            }
            .commonStyle2()
          } else if (this.targetView == 'Counter') {
            Counter() {
              Text(this.value.toString())
            }
            .onInc(() => {
              this.value++
            })
            .onDec(() => {
              this.value--
            })
            .commonStyle2()
          } else if (this.targetView == 'Flex') {
            Flex({ direction: FlexDirection.RowReverse }) {
              Text('1').width('20%').height(50)
              Text('2').width('20%').height(50)
              Text('3').width('20%').height(50)
              Text('4').width('20%').height(50)
            }
            .commonStyle2()
          } else if (this.targetView == 'GridRow') {
            GridRow() {
              GridCol({span:6}) {
                Text('GridRow').height(80)
              }
            }
            .commonStyle2()
          } else if (this.targetView == 'Grid') {
            Grid() {
              ForEach(this.Number1, (day: string) => {
                ForEach(this.Number1, (day: string) => {
                  GridItem() {
                    Text(day)
                      .fontSize(16)
                      .width('100%')
                      .height('100%')
                      .textAlign(TextAlign.Center)
                  }
                }, day => day)
              }, day => day)
            }
            .columnsTemplate('1fr 1fr 1fr 1fr 1fr')
            .rowsTemplate('1fr 1fr 1fr 1fr 1fr')
            .columnsGap(10)
            .rowsGap(10)
            .width('90%')
            .height(300)
            .commonStyle2()
          } else if (this.targetView == 'GridItem') {
            Grid() {
              GridItem()
                .commonStyle2()
            }
          } else if (this.targetView == 'List') {
            List({ space: 20, initialIndex: 0 }) {
              ForEach(this.arr, (item) => {
                ListItem() {
                  Text('List' + item)
                    .width('80%')
                    .height(30)
                    .fontSize(12)
                    .textAlign(TextAlign.Center)
                }
              }, item => item)
            }
            .listDirection(Axis.Vertical) // 排列方向
            .scrollBar(BarState.Off)
            .divider({ strokeWidth: 2, color: 0xFFFFFF, startMargin: 20, endMargin: 20 }) // 每行之间的分界线
            .edgeEffect(EdgeEffect.Spring) // 滑动到边缘无效果
            .onScrollIndex((firstIndex: number, lastIndex: number) => {
              console.info('first' + firstIndex)
              console.info('last' + lastIndex)
            })
            .commonStyle2()
          }else if (this.targetView == 'Navigator') {
            Navigator({ target: '/pages/BackgroundColorPage' }){
              Text('Go to ' + '/pages/BackgroundColorPage')
            }
            .commonStyle2()
          } else if (this.targetView == 'Panel') {
            Panel(true) {
              // 展示日程
              Column() {
                Text('Today Calendar').fontSize(12)
              }
            }
            .type(PanelType.Foldable).mode(PanelMode.Mini)
            .dragBar(true) // 默认开启
            .halfHeight(500) // 默认一半
            .commonStyle2()
          } else if (this.targetView == 'Refresh') {
            Refresh({ refreshing: true })
              .commonStyle2()
          }
          else if (this.targetView == 'RelativeContainer') {
            RelativeContainer() {
              Row()
                .width(30)
                .height(30)
                .backgroundColor("#FF3333")
                .alignRules({
                  top: { anchor: "__container__", align: VerticalAlign.Top },
                  left: { anchor: "__container__", align: HorizontalAlign.Start },
                  right:{anchor: "__container__", align: HorizontalAlign.Center},
                  bottom:{anchor: "__container__", align: VerticalAlign.Center},
                })
                .id("row001")
            }
            .commonStyle2()
          } else if (this.targetView == 'Row') {
            Row(){
              Text("Row Row Row")
            }
            .commonStyle2()
          } else if (this.targetView == 'RowSplit') {
            RowSplit() {
              Text('1')
            }
            .commonStyle2()
          } else if (this.targetView == 'Scroll') {
            Scroll(this.scroller) {
              Column() {
                ForEach(this.arr, (item) => {
                  Text(item.toString())
                    .width('30%')
                    .height(60)
                    .border({width:2})
                    .borderRadius(15)
                    .fontSize(16)
                    .textAlign(TextAlign.Center)
                    .margin({ top: 10 })
                }, item => item)
              }.width('100%')
            }
            .scrollable(ScrollDirection.Vertical)  // 滚动方向纵向
            .scrollBar(BarState.On)  // 滚动条常驻显示
            .scrollBarColor(Color.Gray)  // 滚动条颜色
            .scrollBarWidth(10) // 滚动条宽度
            .edgeEffect(EdgeEffect.None)
            .onScroll((xOffset: number, yOffset: number) => {
              console.info(xOffset + ' ' + yOffset)
            })
            .onScrollEdge((side: Edge) => {
              console.info('To the edge')
            })
            .onScrollEnd(() => {
              console.info('Scroll Stop')
            })
            .commonStyle2()
          } else if (this.targetView == 'SideBarContainer') {
            SideBarContainer(SideBarContainerType.Embed) {
              Column() {
                ForEach(this.arr1, (item, index) => {
                  Column({ space: 5 }) {
                    Text("Index0" + item)
                      .fontSize(25)
                      .fontColor(this.current === item ? '#0A59F7' : '#999')
                      .fontFamily('source-sans-pro,cursive,sans-serif')
                  }
                  .onClick(() => {
                    this.current = item
                  })
                }, item => item)
              }.width('40%')
              Column() {
                Text('SideBarContainer').fontSize(10)
              }
              .margin({ top: 20, left: 20, right: 30 })
            }
            .sideBarWidth(150)
            .minSideBarWidth(50)
            .maxSideBarWidth(100)
            .onChange((value: boolean) => {
              console.info('status:' + value)
            })
            .commonStyle2()
          } else if (this.targetView == 'Stack') {
            Stack({ alignContent: Alignment.Center }) {
              Text('First child, show in bottom').width('40%').height('40%').backgroundColor(0xd2cab3).align(Alignment.Top)
              Text('Second child, show in top').width('25%').height('25%').backgroundColor(0xc1cbac).align(Alignment.Top)
            }.width('100%').height(150).margin({ top: 5 })
            .commonStyle2()
          } else if (this.targetView == 'Swiper') {
            Swiper(this.swiperController) {
              LazyForEach(this.data, (item: string) => {
                Text(item).width('30%').height('30%').textAlign(TextAlign.Center).fontSize(30)
              }, item => item)
            }
            .cachedCount(2)
            .index(1)
            .autoPlay(true)
            .interval(4000)
            .indicator(true)
            .loop(true)
            .duration(1000)
            .itemSpace(0)
            .curve(Curve.Linear)
            .onChange((index: number) => {
              console.info(index.toString())
            })
            .commonStyle2()
          }  else if (this.targetView == 'Tabs') {
            Tabs({ barPosition: BarPosition.Start, controller: this.controller1 }) {
              TabContent() {
                Column().width('20%').height('20%')
              }.tabBar(this.TabBuilder(0, 'green'))

              TabContent() {
                Column().width('30%').height('30%')
              }.tabBar(this.TabBuilder(1, 'blue'))
            }
            .vertical(false)
            .barMode(BarMode.Fixed)
            .barWidth(360)
            .barHeight(56)
            .animationDuration(400)
            .onChange((index: number) => {
              this.currentIndex = index
            })
            .width(360)
            .height(296)
            .commonStyle2()
          }else if (this.targetView == 'WaterFlow') {
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
            .commonStyle2()
          } else if (this.targetView == 'Video') {
            Video({
              src: $r('app.media.tree')
            })
              .commonStyle2()
          } else if (this.targetView == 'Circle') {
            Circle()
              .commonStyle2()
          } else if (this.targetView == 'Ellipse') {
            Ellipse()
              .width(150)
              .height(100)
              .fillOpacity(0)
              .stroke(Color.Blue)
              .strokeWidth(3)
              .commonStyle2()
          } else if (this.targetView == 'Line') {
            Line()
              .width(200)
              .height(150)
              .startPoint([0, 0])
              .endPoint([50, 100])
              .stroke(Color.Black)
              .commonStyle2()
          } else if (this.targetView == 'Polyline') {
            Polyline({ width: 100, height: 100 })
              .points([[10, 0], [40, 60], [100, 100]])
              .fillOpacity(0)
              .stroke(Color.Blue)
              .strokeWidth(3)
              .commonStyle2()
          } else if (this.targetView == 'Polygon') {
            Polygon({ width: 100, height: 100 })
              .points([[0, 0], [50, 100], [100, 0]])
              .fill(Color.Green)
              .commonStyle2()
          } else if (this.targetView == 'Path') {
            Path()
              .commands('M10 10 H100 V100 H0 Z')
              .fillOpacity(0)
              .stroke(Color.Black)
              .strokeWidth(3)
              .border({width:2})
              .commonStyle2()
          } else if (this.targetView == 'Rect') {
            Rect()
              .radius(20)
              .stroke(Color.Transparent)
              .commonStyle2()
          } else if (this.targetView == 'Shape') {
            Shape() {
              Rect().width('80%').height('70%')
            }
            .viewPort({ x: -100, y: 5, width: 320, height: 70 })
            .stroke(Color.Black)
            .strokeWidth(10)
            .commonStyle2()
          } else if (this.targetView == 'Canvas') {
            Canvas(this.context2)
              .onReady(() => {
                this.context2.fillRect(0, 10, 30, 30)
              })
              .commonStyle2()
          }else if (this.targetView == 'Web') {
            Web({ src: $rawfile("index.html"), controller: this.controller })
              .commonStyle2()
          }else if (this.targetView == 'XComponent') {
            XComponent({ id: 'xcomponentId-container', type: 'component' }) {
              Text('Hello')
                .fontSize(40)
              Divider()
                .margin(4)
                .strokeWidth(2)
                .color('#F1F3F5')
                .width("80%")
              Column() {
                Text(this.messageCommon)
                  .fontSize(30)
              }
            }
            .commonStyle2()
            .border({width:2,color:'#ADD8E6'})
          }
          //第三个
          if (this.targetView == 'AlphabetIndexer') {
            AlphabetIndexer({ arrayValue: ['A', 'B', 'C'], selected: 0 })
              .commonStyle3()
          } else if (this.targetView == 'Blank') {
            Blank()
              .commonStyle3()
          } else if (this.targetView == 'Button') {
            Button("button",{ type: ButtonType.Normal, stateEffect: true })
              .commonStyle3()
          } else if (this.targetView == 'Checkbox') {
            Checkbox({name: 'checkbox1',  group: 'checkboxGroup'})
              .select(true)
              .selectedColor(0xed6f21)
              .commonStyle3()
              .width(90)
          } else if (this.targetView == 'CheckboxGroup') {
            CheckboxGroup({ group: 'checkboxGroup' })
              .selectedColor('#007DFF')
              .commonStyle3()
          } else if (this.targetView == 'DataPanel') {
            DataPanel({ values: [50, 12, 8, 5] })
              .commonStyle3()
          } else if (this.targetView == 'DatePicker') {
            DatePicker({ selected: this.selectedDate } )
              .commonStyle3()
          } else if (this.targetView == 'Divider') {
            Divider()
              .commonStyle3()
          } else if (this.targetView == 'Gauge') {
            Gauge({ value: 75 })
              .commonStyle3()
          } else if (this.targetView == 'Image') {
            Image($r("app.media.icon")).objectFit(ImageFit.Contain).height(150)
              .commonStyle3()
          } else if (this.targetView == 'ImageAnimator') {
            ImageAnimator()
              .images([
                {
                  src: $r('app.media.icon1'),
                  width:50,
                  height:50,
                  top:30,
                  left:30
                },
              ])
              .duration(2000)
              .fixedSize(false)
              .state(this.state)
              .reverse(this.reverse)
              .iterations(this.iterations)
              .onStart(() => {
                console.info('Start')
              })
              .onPause(() => {
                console.info('Pause')
              })
              .onRepeat(() => {
                console.info('Repeat')
              })
              .onCancel(() => {
                console.info('Cancel')
              })
              .onFinish(() => {
                console.info('Finish')
                this.state = AnimationStatus.Stopped
              })
              .commonStyle3()
          } else if (this.targetView == 'LoadingProgress') {
            LoadingProgress()
              .commonStyle3()
          } else if (this.targetView == 'Marquee') {
            Marquee({
              start: false,
              step: this.step,
              loop: this.loop,
              fromStart: this.fromStart,
              src: this.src
            })
              .commonStyle3()
          } else if (this.targetView == 'Menu') {
            Menu() {
              MenuItem({ content: "MenuItem1" })
            }
            .commonStyle3()
          } else if (this.targetView == 'MenuItem') {
            MenuItem({ content: "MenuItem1" })
              .commonStyle3()
          } else if (this.targetView == 'MenuItemGroup') {
            MenuItemGroup({ header: "MenuItemGroup小标题" })
              .commonStyle3()
          } else if (this.targetView == 'Navigation') {
            Navigation()
              .title(this.NavigationTitle)
              .commonStyle3()
          } else if (this.targetView == 'NavRouter') {
            NavRouter() {
              Row() {
                Text(`NavRouter`)
                  .fontSize(14)
                  .fontWeight(500)
                  .textAlign(TextAlign.Center)
              }
              .width('80%')
              .height('30%')

              NavDestination() {
                Text(`NavDestination`).fontSize(50)
                Flex({ direction: FlexDirection.Row }) {
                  Row() {
                    Image($r('app.media.icon')).width(40).height(40).borderRadius(40).margin({ right: 15 })
                    Text('今天共有七节课').fontSize(30)
                  }.padding({ left: 15 })
                }
              }
            }
            .commonStyle3()
          } else if (this.targetView == 'NavDestination') {
            NavDestination()
              .commonStyle3()
          } else if (this.targetView == 'PatternLock') {
            PatternLock()
              .commonStyle3()
          } else if (this.targetView == 'Progress') {
            Progress({ value: 10 })
              .commonStyle3()
              .border({width:2})
          } else if (this.targetView == 'QRCode') {
            QRCode('hello world')
              .commonStyle3()
          } else if (this.targetView == 'Radio') {
            Radio({ value: 'Radio1', group: 'radioGroup' })
              .commonStyle3()
              .width(90)
          } else if (this.targetView == 'Rating') {
            Rating({ rating: 3.5 })
              .commonStyle3()
          } else if (this.targetView == 'RichText') {
            RichText('<h1>h1小标题</h1>')
              .commonStyle3()
          } else if (this.targetView == 'ScrollBar') {
            ScrollBar({ scroller: this.scroller, direction: ScrollBarDirection.Vertical,state: BarState.On }) {
              Text("ScrollBar")
                .width('80')
                .height(100)
            }
            .commonStyle3()
          } else if (this.targetView == 'Search') {
            Search()
              .commonStyle3()
          } else if (this.targetView == 'Select') {
            Select([{ value: 'aaa' },
              { value: 'bbb' }])
              .value('Select')
              .commonStyle3()
          } else if (this.targetView == 'Slider') {
            Slider()
              .commonStyle3()
          } else if (this.targetView == 'Span') {
            Text() {
              Span('This is the Span component')
                .commonStyle3()
            }
          }
          else if (this.targetView == 'Stepper') {
            Stepper()
              .commonStyle3()
          }
          else if (this.targetView == 'StepperItem') {
            Stepper() {
              StepperItem()
                .commonStyle3()
            }
          }
          else if (this.targetView == 'Text') {
            Text('text')
              .commonStyle3()
          } else if (this.targetView == 'TextArea') {
            TextArea({
              text:"The text area",
              placeholder: 'The text area can hold an unlimited amount of text. input your word...'
            })
              .placeholderFont({ size: 16, weight: 400 })
              .commonStyle3()
          } else if (this.targetView == 'TextClock') {
            TextClock()
              .commonStyle3()
          } else if (this.targetView == 'TextInput') {
            TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controller3 })
              .placeholderFont({ size: 14, weight: 400 })
              .margin(20)
              .fontSize(12)
              .fontColor(Color.Black)
              .inputFilter('[a-z]', (e) => {
                console.log(JSON.stringify(e))
              })
              .onChange((value: string) => {
                this.text = value
              })
              .commonStyle3()
          } else if (this.targetView == 'TextPicker') {
            TextPicker({ range: ['apple1', 'orange2', 'peach3', 'grape4'] })
              .commonStyle3()
          } else if (this.targetView == 'TextTimer') {
            TextTimer({ isCountDown: true, count: 30000, controller: this.textTimerController })
              .commonStyle3()
          } else if (this.targetView == 'TimePicker') {
            TimePicker({
              selected: this.selectedTime,
            })
              .commonStyle3()
          } else if (this.targetView == 'Toggle1') {
            Toggle({ type: ToggleType.Switch, isOn: false })
              .selectedColor('#007DFF')
              .switchPointColor('#FFFFFF')
              .onChange((isOn: boolean) => {
                console.info('Component status:' + isOn)
              })
              .commonStyle3()
              .width(90)
          }
          else if (this.targetView == 'Toggle2') {
            Toggle({ type: ToggleType.Checkbox, isOn: false })
              .selectedColor('#007DFF')
              .switchPointColor('#FFFFFF')
              .onChange((isOn: boolean) => {
                console.info('Component status:' + isOn)
              })
              .commonStyle3()
              .width(90)
          }
          else if (this.targetView == 'Toggle3') {
            Toggle({ type: ToggleType.Button, isOn: false })
              .selectedColor('#007DFF')
              .switchPointColor('#FFFFFF')
              .onChange((isOn: boolean) => {
                console.info('Component status:' + isOn)
              })
              .commonStyle3()
          }
          else if (this.targetView == 'Badge') {
            Badge({
              value: 'New',
              position: BadgePosition.Right,
              style: { badgeSize: 16, badgeColor: '#FA2A2D' }
            }) {
              Text('list2').width(27).height(60).fontSize(14).fontColor('#182431')
            }.commonStyle3()
          } else if (this.targetView == 'Column') {
            Column(){
              Text("Column 1111")
            }
            .commonStyle3()
          } else if (this.targetView == 'ColumnSplit') {
            ColumnSplit() {
              Text('ColumnSplit')
            }
            .commonStyle3()
          } else if (this.targetView == 'Counter') {
            Counter() {
              Text(this.value.toString())
            }
            .onInc(() => {
              this.value++
            })
            .onDec(() => {
              this.value--
            })
            .commonStyle3()
          } else if (this.targetView == 'Flex') {
            Flex({ direction: FlexDirection.RowReverse }) {
              Text('1').width('20%').height(50)
              Text('2').width('20%').height(50)
              Text('3').width('20%').height(50)
              Text('4').width('20%').height(50)
            }
            .commonStyle3()
          } else if (this.targetView == 'GridCol') {
            GridRow() {
              GridCol({ span: 5 }) {
                Text("GridCol GridCol").height(50)
              }.borderWidth(2)
              .commonStyle3()
              .margin({top:0})
            }.width(300)
            .height(200)
            .borderWidth(2)
            .margin({top:260})
          } else if (this.targetView == 'GridRow') {
            GridRow() {
              GridCol({span:6}) {
                Text('GridRow').height(80)
              }
            }
            .commonStyle3()
          } else if (this.targetView == 'Grid') {
            Grid() {
              ForEach(this.Number1, (day: string) => {
                ForEach(this.Number1, (day: string) => {
                  GridItem() {
                    Text(day)
                      .fontSize(16)
                      .width('100%')
                      .height('100%')
                      .textAlign(TextAlign.Center)
                  }
                }, day => day)
              }, day => day)
            }
            .columnsTemplate('1fr 1fr 1fr 1fr 1fr')
            .rowsTemplate('1fr 1fr 1fr 1fr 1fr')
            .columnsGap(10)
            .rowsGap(10)
            .width('90%')
            .height(300)
            .commonStyle3()
          } else if (this.targetView == 'GridItem') {
            Grid() {
              GridItem()
                .commonStyle3()
            }
          } else if (this.targetView == 'List') {
            List({ space: 20, initialIndex: 0 }) {
              ForEach(this.arr, (item) => {
                ListItem() {
                  Text('List' + item)
                    .width('80%')
                    .height(30)
                    .fontSize(12)
                    .textAlign(TextAlign.Center)
                }
              }, item => item)
            }
            .listDirection(Axis.Vertical) // 排列方向
            .scrollBar(BarState.Off)
            .divider({ strokeWidth: 2, color: 0xFFFFFF, startMargin: 20, endMargin: 20 }) // 每行之间的分界线
            .edgeEffect(EdgeEffect.Spring) // 滑动到边缘无效果
            .onScrollIndex((firstIndex: number, lastIndex: number) => {
              console.info('first' + firstIndex)
              console.info('last' + lastIndex)
            })
            .commonStyle3()
          } else if (this.targetView == 'ListItem') {
            List() {
              ListItem(){
                Text('ListItem')
              }
              .commonStyle3()
              .margin({top:0})
            }
            .width(370)
            .height(280)
          } else if (this.targetView == 'ListItemGroup') {
            List() {
              ListItemGroup() {
                ListItem() {
                  Text('ListItemGroup')
                    .margin({left:20})
                    .height(40)
                }
              }
              .commonStyle3()
              .margin({top:0})
            }
            .width(200)
            .height(150)
            .border({width:2})
          } else if (this.targetView == 'Navigator') {
            Navigator({ target: '/pages/BackgroundColorPage' }){
              Text('Go to ' + '/pages/BackgroundColorPage')
            }
            .commonStyle3()
          } else if (this.targetView == 'Panel') {
            Panel(true) {
              // 展示日程
              Column() {
                Text('Today Calendar').fontSize(12)
              }
            }
            .type(PanelType.Foldable).mode(PanelMode.Mini)
            .dragBar(true) // 默认开启
            .halfHeight(500) // 默认一半
            .commonStyle3()
          } else if (this.targetView == 'Refresh') {
            Refresh({ refreshing: true })
              .commonStyle3()
          }
          else if (this.targetView == 'RelativeContainer') {
            RelativeContainer() {
              Row()
                .width(30)
                .height(30)
                .backgroundColor("#FF3333")
                .alignRules({
                  top: { anchor: "__container__", align: VerticalAlign.Top },
                  left: { anchor: "__container__", align: HorizontalAlign.Start },
                  right:{anchor: "__container__", align: HorizontalAlign.Center},
                  bottom:{anchor: "__container__", align: VerticalAlign.Center},
                })
                .id("row001")
            }
            .commonStyle3()
          } else if (this.targetView == 'Row') {
            Row(){
              Text("Row Row Row")
            }
            .commonStyle3()
          } else if (this.targetView == 'RowSplit') {
            RowSplit() {
              Text('1')
            }
            .commonStyle3()
          } else if (this.targetView == 'Scroll') {
            Scroll(this.scroller) {
              Column() {
                ForEach(this.arr, (item) => {
                  Text(item.toString())
                    .width('30%')
                    .height(60)
                    .border({width:2})
                    .borderRadius(15)
                    .fontSize(16)
                    .textAlign(TextAlign.Center)
                    .margin({ top: 10 })
                }, item => item)
              }.width('100%')
            }
            .scrollable(ScrollDirection.Vertical)  // 滚动方向纵向
            .scrollBar(BarState.On)  // 滚动条常驻显示
            .scrollBarColor(Color.Gray)  // 滚动条颜色
            .scrollBarWidth(10) // 滚动条宽度
            .edgeEffect(EdgeEffect.None)
            .onScroll((xOffset: number, yOffset: number) => {
              console.info(xOffset + ' ' + yOffset)
            })
            .onScrollEdge((side: Edge) => {
              console.info('To the edge')
            })
            .onScrollEnd(() => {
              console.info('Scroll Stop')
            })
            .commonStyle3()
          } else if (this.targetView == 'SideBarContainer') {
            SideBarContainer(SideBarContainerType.Embed) {
              Column() {
                ForEach(this.arr1, (item, index) => {
                  Column({ space: 5 }) {
                    Text("Index0" + item)
                      .fontSize(25)
                      .fontColor(this.current === item ? '#0A59F7' : '#999')
                      .fontFamily('source-sans-pro,cursive,sans-serif')
                  }
                  .onClick(() => {
                    this.current = item
                  })
                }, item => item)
              }.width('40%')
              Column() {
                Text('SideBarContainer').fontSize(10)
              }
              .margin({ top: 20, left: 20, right: 30 })
            }
            .sideBarWidth(150)
            .minSideBarWidth(50)
            .maxSideBarWidth(100)
            .onChange((value: boolean) => {
              console.info('status:' + value)
            })
            .commonStyle3()
          } else if (this.targetView == 'Stack') {
            Stack({ alignContent: Alignment.Center }) {
              Text('First child, show in bottom').width('40%').height('40%').backgroundColor(0xd2cab3).align(Alignment.Top)
              Text('Second child, show in top').width('25%').height('25%').backgroundColor(0xc1cbac).align(Alignment.Top)
            }.width('100%').height(150).margin({ top: 5 })
            .commonStyle3()
          } else if (this.targetView == 'Swiper') {
            Swiper(this.swiperController) {
              LazyForEach(this.data, (item: string) => {
                Text(item).width('30%').height('30%').textAlign(TextAlign.Center).fontSize(30)
              }, item => item)
            }
            .cachedCount(2)
            .index(1)
            .autoPlay(true)
            .interval(4000)
            .indicator(true)
            .loop(true)
            .duration(1000)
            .itemSpace(0)
            .curve(Curve.Linear)
            .onChange((index: number) => {
              console.info(index.toString())
            })
            .commonStyle3()
          }  else if (this.targetView == 'Tabs') {
            Tabs({ barPosition: BarPosition.Start, controller: this.controller1 }) {
              TabContent() {
                Column().width('20%').height('20%')
              }.tabBar(this.TabBuilder(0, 'green'))

              TabContent() {
                Column().width('30%').height('30%')
              }.tabBar(this.TabBuilder(1, 'blue'))
            }
            .vertical(false)
            .barMode(BarMode.Fixed)
            .barWidth(360)
            .barHeight(56)
            .animationDuration(400)
            .onChange((index: number) => {
              this.currentIndex = index
            })
            .width(360)
            .height(296)
            .commonStyle3()
          } else if (this.targetView == 'TabContent') {
            Tabs({ barPosition: BarPosition.Start, controller: this.controller1 }) {
              TabContent() {
                Column().width('30%').height('30%')
              }.tabBar(this.TabBuilder(0, 'green'))
              // .commonStyle3()
              .tabStyle3()
              TabContent() {
                Column().width('40%').height('40%')
              }.tabBar(this.TabBuilder(1, 'blue'))
              // .commonStyle3()
              .tabStyle3()
            }
            .vertical(false)
            .barMode(BarMode.Fixed)
            .barWidth(200)
            .barHeight(60)
            .animationDuration(400)
            .onChange((index: number) => {
              this.currentIndex = index
            })
            .width(200)
            .height(150)
            .margin({ top: 260 })
          }
          else if (this.targetView == 'FlowItem') {
            WaterFlow() {
              FlowItem(){
                Text("N  FlowItem" ).fontSize(12).height('16')
              }
              .commonStyle3()
            }.border({width:2,color:Color.Yellow})
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
            .commonStyle3()
          } else if (this.targetView == 'Video') {
            Video({
              src: $r('app.media.tree')
            })
              .commonStyle3()
          } else if (this.targetView == 'Circle') {
            Circle()
              .commonStyle3()
          } else if (this.targetView == 'Ellipse') {
            Ellipse()
              .width(150)
              .height(100)
              .fillOpacity(0)
              .stroke(Color.Blue)
              .strokeWidth(3)
              .commonStyle3()
          } else if (this.targetView == 'Line') {
            Line()
              .width(200)
              .height(150)
              .startPoint([0, 0])
              .endPoint([50, 100])
              .stroke(Color.Black)
              .commonStyle3()
          } else if (this.targetView == 'Polyline') {
            Polyline({ width: 100, height: 100 })
              .points([[10, 0], [40, 60], [100, 100]])
              .fillOpacity(0)
              .stroke(Color.Blue)
              .strokeWidth(3)
              .commonStyle3()
          } else if (this.targetView == 'Polygon') {
            Polygon({ width: 100, height: 100 })
              .points([[0, 0], [50, 100], [100, 0]])
              .fill(Color.Green)
              .commonStyle3()
          } else if (this.targetView == 'Path') {
            Path()
              .commands('M10 10 H100 V100 H0 Z')
              .fillOpacity(0)
              .stroke(Color.Black)
              .strokeWidth(3)
              .border({width:2})
              .commonStyle3()
          } else if (this.targetView == 'Rect') {
            Rect()
              .radius(20)
              .stroke(Color.Transparent)
              .commonStyle3()
          } else if (this.targetView == 'Shape') {
            Shape() {
              Rect().width('80%').height('70%')
            }
            .viewPort({ x: -100, y: 5, width: 320, height: 70 })
            .stroke(Color.Black)
            .strokeWidth(10)
            .commonStyle3()
          } else if (this.targetView == 'Canvas') {
            Canvas(this.context3)
              .onReady(() => {
                this.context3.fillRect(0, 10, 30, 30)
              })
              .commonStyle3()
          }else if (this.targetView == 'Web') {
            Web({ src: $rawfile("index.html"), controller: this.controller })
              .commonStyle3()
          }else if (this.targetView == 'XComponent') {
            XComponent({ id: 'xcomponentId-container', type: 'component' }) {
              Text('Hello')
                .fontSize(40)
              Divider()
                .margin(4)
                .strokeWidth(2)
                .color('#F1F3F5')
                .width("80%")
              Column() {
                Text(this.messageCommon)
                  .fontSize(30)
              }
            }
            .commonStyle3()
            .border({width:2,color:'#98FB98'})
          }

        }
        .width(this._generalAttr)}

    }.width('100%')
    .height('100%')
    .defaultFocus(true)
  }
}