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
struct FocusPage011 {
  @State _generalAttr: boolean = false; //通用属性初始值
  @State componentKey: string = router.getParams() ? router.getParams()['view']['componentKey'] : "" //组件唯一标识
  @State state: AnimationStatus = AnimationStatus.Initial
  @State reverse: boolean = false
  @State iterations: number = 1
  @State onFocusEvent1:string = `Column1 defaultFocus=false 无默认获焦`
  @State onFocusEvent2:string = `Column2 defaultFocus=false 无默认获焦`
  @State onFocusEvent3:string = `Column3 defaultFocus=false 无默认获焦`

  @Styles commonStyle(){
    .width(200)
    .height(100)
    .border({width:2})
    .defaultFocus(this._generalAttr)
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
          Text("Column1")
            .width(100)
            .height(50)
        }
        .commonStyle()
        .onFocus(() => {
          this.onFocusEvent1 = `Column01011 defaultFocus=false 默认获焦`
        })

        Text(`${this.onFocusEvent2}`)
          .fontSize(20)
        Column(){
          Text("Column2")
            .width(100)
            .height(50)
        }
        .commonStyle()
        .onFocus(() => {
          this.onFocusEvent2 = `Column02011 defaultFocus=false 默认获焦`
        })

        Text(`${this.onFocusEvent3}`)
          .fontSize(20)
        Column(){
          Text("Column3")
            .width(100)
            .height(50)
        }
        .commonStyle()
        .onFocus(() => {
          this.onFocusEvent3 = `Column03011 defaultFocus=false 默认获焦`
        })
      }
      .width('100%')
      .height('100%')


  }
}