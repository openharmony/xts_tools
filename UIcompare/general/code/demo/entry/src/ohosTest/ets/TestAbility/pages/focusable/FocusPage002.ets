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

@Entry
@Component
struct FocusPage002 {
  controller: web_webview.WebviewController = new web_webview.WebviewController()
  @State _generalAttr: boolean = true; //通用属性初始值
  @State targetView: string = router.getParams() ? router.getParams()['view']['targetView'] : "" //当前测试的组件
  @State componentKey: string = router.getParams() ? router.getParams()['view']['componentKey'] : "" //组件唯一标识
  @State state: AnimationStatus = AnimationStatus.Initial
  @State reverse: boolean = false
  @State iterations: number = 1
  @State onFocusEvent1:string = `未获焦`
  @State onFocusEvent2:string = `未获焦`
  @State onFocusEvent3:string = `未获焦`
  @State oneButtonColor1: string = '#F000CB';
  @State oneButtonColor2: string = '#F000CB';
  @State oneButtonColor3: string = '#F000CB';

  @Styles commonStyle1(){
    .width(200)
    .height(150)
    .border({width:2})
    .focusable(this._generalAttr)
    .backgroundColor(this.oneButtonColor1)
    .onFocus(() => {
      this.oneButtonColor1 = '#FFFB10';
      this.onFocusEvent1 = `获焦`
    })
    .key(this.componentKey)
  }

  @Styles commonStyle2(){
    .width(200)
    .height(150)
    .border({width:2})
    .focusable(this._generalAttr)
    .backgroundColor(this.oneButtonColor2)
    .onFocus(() => {
      this.oneButtonColor2 = '#FFFB10';
      this.onFocusEvent2 = `获焦`
    })
    .key(this.componentKey)
  }

  @Styles commonStyle3(){
    .width(200)
    .height(150)
    .border({width:2})
    .focusable(this._generalAttr)
    .backgroundColor(this.oneButtonColor2)
    .onFocus(() => {
      this.oneButtonColor3 = '#FFFB10';
      this.onFocusEvent3 = `获焦`
    })
    .key(this.componentKey)
  }

  onPageShow() {
    AttrsManager.registerDataChange(value => this._generalAttr = value)
  }

  build() {
    Row() {
      Column() {
        Text(this.onFocusEvent1)
          .fontColor(18)
          .margin({top:40,bottom:10})

        Image($r("app.media.icon")).objectFit(ImageFit.Contain)
          .commonStyle1()

        Text(this.onFocusEvent2)
          .fontColor(18)
          .margin({top:40,bottom:10})
        ImageAnimator()
          .images([
            {
              //comment文件夹与pages同级
              src: '/common/icon1.png',
              duration: 500,
              width: 100,
              height: 100,
              top: 0,
              left: 0
            },
          ])
          .state(this.state).reverse(this.reverse).fixedSize(false).preDecode(2)
          .fillMode(FillMode.None).iterations(this.iterations)
          .margin({top:20})
          .commonStyle2()
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

        Text(this.onFocusEvent3)
          .fontColor(18)
          .margin({top:40,bottom:10})
        Text("focusAble")
          .commonStyle3()
      }
      .width('100%')
      .height('100%')
    }
    .defaultFocus(true)
  }
}