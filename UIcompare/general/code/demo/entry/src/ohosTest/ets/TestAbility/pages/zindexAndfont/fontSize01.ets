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
struct FontSizePage001 {
  controller: web_webview.WebviewController = new web_webview.WebviewController()
  @State _generalAttr: string = "5"; //通用属性初始值
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
    .width(200)
    .height(150)
    .border({width:2})
    .key(this.componentKey)
  }

  @Styles commonStyleEasy(){
    .key(this.componentKey)
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

  build() {
    Row() {
      Column() {
        if (this.targetView == 'Button') {
          Button("button",{ type: ButtonType.Normal, stateEffect: true })
            .commonStyle()
            .fontSize(this._generalAttr)
        } else if (this.targetView == 'Marquee') {
          Marquee({
            start: false,
            step: this.step,
            loop: this.loop,
            fromStart: this.fromStart,
            src: this.src
          })
            .commonStyle()
            .fontSize(this._generalAttr)
        } else if (this.targetView == 'Menu') {
          Menu() {
            MenuItem({ content: "MenuItem1" })
          }
          .commonStyle()
          .fontSize(this._generalAttr)
        } else if (this.targetView == 'Span') {
          Text() {
            Span('This is the Span component')
              .commonStyle()
              .fontSize(this._generalAttr)
          }
          .margin({top:40})
        } else if (this.targetView == 'Text') {
          Text('text')
            .fontSize(this._generalAttr)
            .commonStyle()
        } else if (this.targetView == 'TextArea') {
          TextArea({
            text:"The text area",
            placeholder: 'The text area can hold an unlimited amount of text. input your word...'
          })
            .placeholderFont({ size: 16, weight: 400 })
            .fontSize(this._generalAttr)
            .commonStyle()
        } else if (this.targetView == 'TextInput') {
          Column(){
            TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controller3 })
              .placeholderFont({ size: 14, weight: 400 })
              .width(200)
              .height(40)
              .margin(20)
              .fontSize(14)
              .fontColor(Color.Black)
              .inputFilter('[a-z]', (e) => {
                console.log(JSON.stringify(e))
              })
              .onChange((value: string) => {
                this.text = value
              })
              .fontSize(this._generalAttr)
              .commonStyleEasy()
          }
          .width(200)
          .height(150)
          .border({width:2})
        } else if (this.targetView == 'TextTimer') {
          TextTimer({ isCountDown: true, count: 30000, controller: this.textTimerController })
            .fontSize(this._generalAttr)
            .commonStyle()
        }
      }
      .width('100%')
      .height('100%')
    }
    .defaultFocus(true)
  }
}