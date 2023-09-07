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
import router from '@ohos.router';

@Entry
@Component
struct FocusPage007 {
  @State _generalAttr: boolean = true; //通用属性初始值
  @State componentKey: string = router.getParams() ? router.getParams()['view']['componentKey'] : "" //组件唯一标识
  @State state: AnimationStatus = AnimationStatus.Initial
  @State reverse: boolean = false
  @State iterations: number = 1
  @State eventType: string = '';
  @State onFocusEvent1:string = `Column1 tabIndex = 0 未获焦`
  @State onFocusEvent2:string = `Column2 tabIndex = 2 未获焦`
  @State onFocusEvent3:string = `Column3 tabIndex = 3 未获焦`

  @Styles commonStyle(){
    .width(200)
    .height(100)
    .border({width:2})
    .margin({top:40})
  }

  onPageShow() {
    AttrsManager.registerDataChange(value => this._generalAttr = value)
  }

  build() {
      Column() {

        Text(`${this.onFocusEvent1}`)
          .fontSize(20)
        Column(){
          Button("Button1 tabIndex = 0")
            .width(100)
            .height(50)
        }
        .tabIndex(0)
        .commonStyle()
        .onClick(() => {
          console.info("Column01007 tabIndex = 0 click success")
        })
        .onFocus(() => {
          this.onFocusEvent1 = `Column01007 tabIndex = 0 获焦`
        })

        .key('Column01007')

        Text(`${this.onFocusEvent2}`)
          .fontSize(20)
        Column(){
          Button("Button2 tabIndex = 0")
            .width(100)
            .height(50)
        }
        .tabIndex(2)
        .commonStyle()
        .onClick(() => {
          console.info("Column02007 tabIndex = 2 click success")
        })
        .onFocus(() => {
          this.onFocusEvent1 = `Column02007 tabIndex = 2 获焦`
        })
        .key('Column02007')

        Text(`${this.onFocusEvent3}`)
          .fontSize(20)
        Column(){
          Button("Button3 tabIndex = 0")
            .width(100)
            .height(50)
        }
        .tabIndex(3)
        .commonStyle()
        .onClick(() => {
          console.info("Column03007 tabIndex = 3 click success")
        })
        .onFocus(() => {
          this.onFocusEvent1 = `Column03007 tabIndex = 3 获焦`
        })
        .key('Column03007')

      }
      .width('100%')
      .height('100%')
      .defaultFocus(true)
  }
}