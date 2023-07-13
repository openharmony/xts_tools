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

@Entry
@Component
struct FocusPage002 {
  controller: web_webview.WebviewController = new web_webview.WebviewController()
  @State _generalAttr: boolean = false; //通用属性初始值
  @State targetView: string = router.getParams() ? router.getParams()['view']['targetView'] : "" //当前测试的组件
  @State componentKey: string = router.getParams() ? router.getParams()['view']['componentKey'] : "" //组件唯一标识
  @State state: AnimationStatus = AnimationStatus.Initial
  @State reverse: boolean = false
  @State iterations: number = 1
  @State onFocusEvent:string = `${this.targetView}未获焦`
  @State oneButtonColor: string = '#F000CB';
  @Styles commonStyle(){
    .width(200)
    .height(150)
    .border({width:2})
    .backgroundColor(this.oneButtonColor)
    .onFocus(() => {
      this.oneButtonColor = '#FFFB10';
      this.onFocusEvent = `${this.targetView}获焦`
    })
    .key(this.componentKey)
  }

  onPageShow() {
    AttrsManager.registerDataChange(value => this._generalAttr = value)
  }

  build() {
    Row() {
      Column() {
        Text(this.onFocusEvent)
          .fontColor(18)
          .margin({top:40,bottom:40})

        Image($r("app.media.icon")).objectFit(ImageFit.Contain)
          .commonStyle()
        ImageAnimator()
          .images([
            {
              //comment文件夹与pages同级
              src: '/comment/icon1.png',
              duration: 500,
              width: 325,
              height: 200,
              top: 0,
              left: 0
            },
            {
              src: '/comment/icon1.png',
              duration: 500,
              width: 325,
              height: 200,
              top: 0,
              left: 0
            },
            {
              src: '/comment/icon1.png',
              duration: 500,
              width: 325,
              height: 200,
              top: 0,
              left: 0
            }
          ])
          .state(this.state).reverse(this.reverse).fixedSize(false).preDecode(2)
          .fillMode(FillMode.None).iterations(this.iterations)
          .margin({top:100})
          .commonStyle()
          .onStart(() => { // 当帧动画开始播放后触发
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
          .onFinish(() => { // 当帧动画播放完成后触发
            console.info('Finish')
          })

        Text("focusAble")
          .commonStyle()
      }
      .width('100%')
      .height('100%')
    }
    .defaultFocus(true)
  }
}