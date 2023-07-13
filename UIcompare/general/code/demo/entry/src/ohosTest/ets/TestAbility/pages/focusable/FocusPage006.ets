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
struct FocusPage006 {
  @State _generalAttr: boolean = true; //通用属性初始值
  @State componentKey: string = router.getParams() ? router.getParams()['view']['componentKey'] : "" //组件唯一标识
  @State state: AnimationStatus = AnimationStatus.Initial
  @State reverse: boolean = false
  @State iterations: number = 1
  @State eventType: string = '';
  @State onFocusEvent1:string = `Button1 tabIndex = 0 未获焦`
  @State onFocusEvent2:string = `Button2 tabIndex = 0 未获焦`
  @State onFocusEvent3:string = `Button3 tabIndex = 0 未获焦`
  @State onFocusEvent4:string = `Column tabIndex = 0 未获焦`

  @Styles commonStyle(){
    .width(200)
    .height(100)
    .border({width:2})
    .margin({top:40})
    .key(this.componentKey)
  }

  onPageShow() {
    AttrsManager.registerDataChange(value => this._generalAttr = value)
  }

  build() {
      Column() {
        Text(`${this.onFocusEvent4}`)
          .fontSize(20)
        Column(){

          Text(`${this.onFocusEvent1}`)
            .fontSize(20)
          Button("Button1 tabIndex = 0")
            .width(100)
            .height(50)
            .tabIndex(0)
            .onClick(() => {
              console.info("Button01006 tabIndex = 0 click success")
            })
            .onFocus(() => {
              this.onFocusEvent1 = `Button01006 tabIndex = 0 获焦`
            })
            .id('Button01006')

          Text(`${this.onFocusEvent2}`)
            .fontSize(20)
          Button("Button2 tabIndex = 0")
            .width(100)
            .height(50)
            .tabIndex(0)
            .onClick(() => {
              console.info("Button02006 tabIndex = 0 click success")
            })
            .onFocus(() => {
              this.onFocusEvent2 = `Button02006 tabIndex = 0 获焦`
            })
            .id('Button02006')

          Text(`${this.onFocusEvent3}`)
            .fontSize(20)
          Button("Button3 tabIndex = 0")
            .width(100)
            .height(50)
            .tabIndex(0)
            .onClick(() => {
              console.info("Button03006 tabIndex = 0 click success")
            })
            .onFocus(() => {
              this.onFocusEvent3 = `Button03006 tabIndex = 0 获焦`
            })
            .id('Button03006')

        }.tabIndex(0)
        .commonStyle()
        .onClick(() => {
          console.info("Column01006 tabIndex = 0 click success")
        })
        .onFocus(() => {
          this.onFocusEvent3 = `Column01006 tabIndex = 0 获焦`
        })
        .id('Column01006')
      }
      .width('100%')
      .height('100%')
      .defaultFocus(true)

  }
}