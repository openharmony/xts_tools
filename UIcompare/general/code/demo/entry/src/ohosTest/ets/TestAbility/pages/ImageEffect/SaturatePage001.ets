

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
struct SaturatePage001 {
  controller: web_webview.WebviewController = new web_webview.WebviewController()
  @State _generalAttr: number = 1.0; //通用属性初始值
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
  private context: CanvasRenderingContext2D = new CanvasRenderingContext2D(this.settings)
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

  @Styles commonStyle(){
    .width(350)
    .height(260)
    .margin({top:260})
    .border({width:2})

    .key(this.componentKey)
    .backgroundColor(Color.Blue)
    .saturate(this._generalAttr)
  }


  @Styles commonStyleEasy(){
    .margin({top:260})
    .border({width:2})

    .key(this.componentKey)
    .backgroundColor(Color.Blue)
    .saturate(this._generalAttr)
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
    Row() {
      Column()
      {
        if (this.targetView == 'AlphabetIndexer') {
          AlphabetIndexer({ arrayValue: ['A', 'B', 'C'], selected: 0 })
            .commonStyle()
        } else if (this.targetView == 'Blank') {
          Blank()
            .commonStyle().backgroundColor(Color.Blue)
        } else if (this.targetView == 'Button') {
          Button("button",{ type: ButtonType.Normal, stateEffect: true })
            .commonStyle()
        } else if (this.targetView == 'Checkbox') {
          Checkbox({name: 'checkbox1',  group: 'checkboxGroup'})
            .select(true)
            .selectedColor(0xed6f21)
            .height(150)
            .commonStyleEasy()
        } else if (this.targetView == 'CheckboxGroup') {
          CheckboxGroup({ group: 'checkboxGroup' })
            .selectedColor('#007DFF')
            .width(120)
            .height(150)
            .commonStyleEasy()
        } else if (this.targetView == 'DataPanel') {
          DataPanel({ values: [50, 12, 8, 5] })
            .commonStyle()
        } else if (this.targetView == 'DatePicker') {
          DatePicker({ selected: this.selectedDate } )
            .commonStyle()
        } else if (this.targetView == 'Divider') {
          Divider()
            .commonStyle()
        } else if (this.targetView == 'Gauge') {
          Gauge({ value: 75 })
            .commonStyle()
        } else if (this.targetView == 'Image') {
          Image($r("app.media.icon")).objectFit(ImageFit.Contain)
            .height(150)
            .commonStyleEasy()
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
            .commonStyle()
        } else if (this.targetView == 'LoadingProgress') {
          LoadingProgress()
            .commonStyle()
        } else if (this.targetView == 'Marquee') {
          Marquee({
            start: false,
            step: this.step,
            loop: this.loop,
            fromStart: this.fromStart,
            src: this.src
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
            .title(this.NavigationTitle)
            .commonStyle()
        } else if (this.targetView == 'NavRouter') {
          NavRouter() {
            Row() {
              Image($r('app.media.icon')).width(15).height(15).borderRadius(30)
              Text(`NavRouter`)
                .fontSize(12)
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
          ScrollBar({ scroller: this.scroller, direction: ScrollBarDirection.Vertical,state: BarState.On }) {
            Text("ScrollBar")
              .width('90%')
              .height('90%')
          }
          .commonStyle()
        } else if (this.targetView == 'Search') {
          Search()
            .commonStyle()
        } else if (this.targetView == 'Select') {
          Select([{ value: 'aaa' },
            { value: 'bbb' }])
            .value('Select')
            .commonStyle()
        } else if (this.targetView == 'Slider') {
          Slider()
            .commonStyle()
        } else if (this.targetView == 'Span') {
          Text() {
            Span('This is the Span component')
              .commonStyle()
          }
        }
        else if (this.targetView == 'Stepper') {
          Stepper()
            .commonStyle()
        }
        else if (this.targetView == 'StepperItem') {
          Stepper() {
            StepperItem()
              .commonStyle()
          }
        }
        else if (this.targetView == 'Text') {
          Text('text')
            .commonStyle()
        } else if (this.targetView == 'TextArea') {
          TextArea({
            text:"The text area",
            placeholder: 'The text area can hold an unlimited amount of text. input your word...'
          })
            .placeholderFont({ size: 16, weight: 400 })
            .commonStyle()
        } else if (this.targetView == 'TextClock') {
          TextClock()
            .commonStyle()
        } else if (this.targetView == 'TextInput') {
          TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controller3 })
            .placeholderFont({ size: 14, weight: 400 })
            .width(200)
            .height(120)
            .fontSize(12)
            .fontColor(Color.Black)
            .inputFilter('[a-z]', (e) => {
              console.log(JSON.stringify(e))
            })
            .onChange((value: string) => {
              this.text = value
            })
            .commonStyleEasy()
        } else if (this.targetView == 'TextPicker') {
          TextPicker({ range: ['apple1', 'orange2', 'peach3', 'grape4'] })
            .commonStyle()
        } else if (this.targetView == 'TextTimer') {
          TextTimer({ isCountDown: true, count: 30000, controller: this.textTimerController })
            .commonStyle()
        } else if (this.targetView == 'TimePicker') {
          TimePicker({
            selected: this.selectedTime,
          })
            .commonStyle()
        } else if (this.targetView == 'Toggle1') {
          Toggle({ type: ToggleType.Switch, isOn: false })
            .selectedColor('#007DFF')
            .switchPointColor('#FFFFFF')
            .onChange((isOn: boolean) => {
              console.info('Component status:' + isOn)
            })
            .width(200)
            .height(120)
            .commonStyleEasy()
        }
        else if (this.targetView == 'Toggle2') {
          Toggle({ type: ToggleType.Checkbox, isOn: false })
            .selectedColor('#007DFF')
            .switchPointColor('#FFFFFF')
            .onChange((isOn: boolean) => {
              console.info('Component status:' + isOn)
            })
            .width(200)
            .height(120)
            .commonStyleEasy()
        }
        else if (this.targetView == 'Toggle3') {
          Toggle({ type: ToggleType.Button, isOn: false })
            .selectedColor('#007DFF')
            .switchPointColor('#FFFFFF')
            .onChange((isOn: boolean) => {
              console.info('Component status:' + isOn)
            })
            .width(200)
            .height(120)
            .commonStyleEasy()
        }
        else if (this.targetView == 'Badge') {
          Badge({
            value: 'New',
            position: BadgePosition.Right,
            style: { badgeSize: 16, badgeColor: '#FA2A2D' }
          }) {
            Text('list2').width(27).height(60).fontSize(14).fontColor('#182431')
          }.width(200).height(120)
          .commonStyleEasy()
        } else if (this.targetView == 'Column') {
          Column(){
            Text("Column 1111")
          }
          .commonStyle()
        } else if (this.targetView == 'ColumnSplit') {
          ColumnSplit() {
            Text('ColumnSplit')
          }
          .commonStyle()
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
          .width(200)
          .height(120)
          .commonStyleEasy()
        } else if (this.targetView == 'Flex') {
          Flex({ direction: FlexDirection.RowReverse }) {
            Text('1').width('20%').height(50)
            Text('2').width('20%').height(50)
            Text('3').width('20%').height(50)
            Text('4').width('20%').height(50)
          }
          .commonStyle()
        } else if (this.targetView == 'GridCol') {
          GridRow() {
            GridCol({ span: 5 }) {
              Text("GridCol GridCol").height(50)
            }.borderWidth(2)
            .commonStyle()
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
          .commonStyle()
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
          .commonStyle()
        } else if (this.targetView == 'GridItem') {
          Grid() {
            GridItem()
              .commonStyle()
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
          .commonStyle()
        } else if (this.targetView == 'ListItem') {
          List() {
            ListItem(){
              Text('ListItem')
            }
            .commonStyle()
            .margin({top:0})
          }
          .width(350)
          .height(260)
          .margin({top:100})
        } else if (this.targetView == 'ListItemGroup') {
          List() {
            ListItemGroup() {
              ListItem() {
                Text('ListItemGroup')
                  .height(40)
              }
            }
            .commonStyle()
            .margin({top:0})
          }
          .width(350)
          .height(260)
          .border({width:2})
          .margin({top:100})
        } else if (this.targetView == 'Navigator') {
          Navigator({ target: '/pages/BackgroundColorPage' }){
            Text('Go to ' + '/pages/BackgroundColorPage')
          }
          .commonStyle()
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
          .commonStyle()
        } else if (this.targetView == 'Refresh') {
          Refresh({ refreshing: true })
            .commonStyle()
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
          .commonStyle()
        } else if (this.targetView == 'Row') {
          Row(){
            Text("Row Row Row")
          }
          .commonStyle()
        } else if (this.targetView == 'RowSplit') {
          RowSplit() {
            Text('1')
          }
          .commonStyle()
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
          .commonStyle()
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
          .commonStyle()
        } else if (this.targetView == 'Stack') {
          Stack({ alignContent: Alignment.Center }) {
            Text('First child, show in bottom').width('40%').height('40%').backgroundColor(0xd2cab3).align(Alignment.Top)
            Text('Second child, show in top').width('25%').height('25%').backgroundColor(0xc1cbac).align(Alignment.Top)
          }.width('100%').height(150).margin({ top: 5 })
          .commonStyle()
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
          .commonStyle()
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
          .commonStyle()
        } else if (this.targetView == 'TabContent') {
          Tabs({ barPosition: BarPosition.Start, controller: this.controller1 }) {
            TabContent() {
              Column().width('30%').height('30%')
            }.tabBar(this.TabBuilder(0, 'green'))
            .commonStyle()
            .margin({top:0})
            .commonStyle().backgroundColor(Color.Blue)
            TabContent() {
              Column().width('40%').height('40%')
            }.tabBar(this.TabBuilder(1, 'blue'))
            .commonStyle()
            .margin({top:0})
            .commonStyle().backgroundColor(Color.Blue)
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
            .commonStyle()
          }
          .margin({left:40})
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
            .width(120)
            .height(120)
            .commonStyleEasy()
        } else if (this.targetView == 'Ellipse') {
          Ellipse()
            .width(150)
            .height(100)
            .fillOpacity(0)
            .stroke(Color.Blue)
            .strokeWidth(3)
            .commonStyle()
        } else if (this.targetView == 'Line') {
          Line()
            .width(200)
            .height(150)
            .startPoint([0, 0])
            .endPoint([50, 100])
            .stroke(Color.Black)
            .commonStyle()
        } else if (this.targetView == 'Polyline') {
          Polyline({ width: 100, height: 100 })
            .points([[10, 0], [40, 60], [100, 100]])
            .fillOpacity(0)
            .stroke(Color.Blue)
            .strokeWidth(3)
            .commonStyle()
        } else if (this.targetView == 'Polygon') {
          Polygon({ width: 100, height: 100 })
            .points([[0, 0], [50, 100], [100, 0]])
            .fill(Color.Green)
            .commonStyle()
        } else if (this.targetView == 'Path') {
          Path()
            .commands('M10 10 H100 V100 H0 Z')
            .fillOpacity(0)
            .stroke(Color.Black)
            .strokeWidth(3)
            .width(300)
            .height(400)
            .border({width:2})
            .commonStyleEasy()
        } else if (this.targetView == 'Rect') {
          Rect()
            .radius(20)
            .width(120)
            .height(100)
            .stroke(Color.Transparent)
            .commonStyleEasy()
            .margin({top:50})
        } else if (this.targetView == 'Shape') {
          Shape() {
            Rect().width('80%').height('70%')
          }
          .viewPort({ x: -100, y: 5, width: 320, height: 70 })
          .stroke(Color.Black)
          .strokeWidth(10)
          .commonStyle()
        } else if (this.targetView == 'Canvas') {
          Canvas(this.context)
            .onReady(() => {
              this.context.fillRect(0, 10, 30, 30)
            })
            .commonStyle()
        }else if (this.targetView == 'Web') {
          Web({ src: $rawfile("index.html"), controller: this.controller })
            .commonStyle()
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
          .commonStyle()}
      }
      .width('100%')
      .height('100%')
    }
    .defaultFocus(true)
  }
}