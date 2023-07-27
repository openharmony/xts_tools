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
struct FocusPage005 {
  controller: web_webview.WebviewController = new web_webview.WebviewController()
  @State _generalAttr: boolean = true; //通用属性初始值
  @State componentKey: string = router.getParams() ? router.getParams()['view']['componentKey'] : "" //组件唯一标识
  @State state: AnimationStatus = AnimationStatus.Initial
  @State reverse: boolean = false
  @State iterations: number = 1
  @State eventType: string = '';
  @State onFocusEvent1:string = `Column tabIndex = -1 未获焦`
  @State onFocusEvent2:string = `Column tabIndex = 1 未获焦`

  @Styles commonStyle(){
    .width(200)
    .height(100)
    .border({width:2})
    .focusable(this._generalAttr)
    .key(this.componentKey)
  }

  onPageShow() {
    AttrsManager.registerDataChange(value => this._generalAttr = value)
  }

  build() {
      Column() {

        Text(`${this.onFocusEvent1}`)
        .fontSize(20)

        Column(){
          Button("tabIndex = -1")
            .width(100)
            .height(50)
        }.tabIndex(-1)
        .commonStyle()
        .onClick(() => {
          console.info("Column tabIndex = -1  click success")
        })
        .onFocus(() => {
          this.onFocusEvent1 = `Column tabIndex = -1 获焦`
        })
        .id("Column01005")

        Text(`${this.onFocusEvent2}`)
          .fontSize(20)

        Column(){
          Button("tabIndex = 1")
            .width(100)
            .height(50)
        }.tabIndex(1)
        .commonStyle()
        .onClick(() => {
          console.info("Column tabIndex = 1  click success")
        })
        .onFocus(() => {
          this.onFocusEvent2 = `Column tabIndex = 1 获焦`
        })
        .id("Column02005")

      }
      .width('100%')
      .height('100%')
      .defaultFocus(true)
    }
}