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
struct FocusPage017 {
  @State _generalAttr: boolean = false; //通用属性初始值
  @State componentKey: string = router.getParams() ? router.getParams()['view']['componentKey'] : "" //组件唯一标识
  @State state: AnimationStatus = AnimationStatus.Initial
  @State reverse: boolean = false
  @State iterations: number = 1
  @State text: string = ''
  @State changeValue: string = '';
  @State submitValue: string = '';
  controller2: SearchController = new SearchController();
  controller1: TextInputController = new TextInputController()
  @State onFocusEvent1:string = `FocusPage017 TextInput groupDefaultFocus(true) 无默认获焦`
  @State onFocusEvent2:string = `FocusPage017 Button groupDefaultFocus(false) 无默认获焦`
  @State onFocusEvent3:string = `FocusPage017 Search groupDefaultFocus  无默认获焦`

  @Styles commonStyle(){
    .width(200)
    .height(100)
    .border({width:2})
    .key(this.componentKey)
  }

  onPageShow() {
    AttrsManager.registerDataChange(value => this._generalAttr = value)
  }

  build() {
    Column() {
      Text(`${this.onFocusEvent1}`)
        .fontSize(20)
      TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controller1 })
        .placeholderColor(Color.Grey)
        .placeholderFont({ size: 14, weight: 400 })
        .caretColor(Color.Blue)
        .width(400)
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
        .groupDefaultFocus(true)
        .onFocus(() => {
          this.onFocusEvent1 = `FocusPage017 TextInput groupDefaultFocus(true) 默认获焦`
        })

      Text(`${this.onFocusEvent2}`)
        .fontSize(20)
      Button('Set caretPosition 1')
        .margin(15)
        .onClick(() => {
          // 将光标移动至第一个字符后
          this.controller1.caretPosition(1)
        })
        .groupDefaultFocus(true)
        .onFocus(() => {
          this.onFocusEvent2 = `FocusPage017 Button groupDefaultFocus(false) 默认获焦`
        })

      Text(`${this.onFocusEvent3}`)
        .fontSize(20)
      Search({ value: this.changeValue, placeholder: 'Type to search...', controller: this.controller2 })
        .searchButton('SEARCH')
        .width(300)
        .height(40)
        .backgroundColor(Color.White)
        .placeholderColor(Color.Grey)
        .placeholderFont({ size: 14, weight: 400 })
        .textFont({ size: 14, weight: 400 })
        .onSubmit((value: string) => {
          this.submitValue = value;
        })
        .onChange((value: string) => {
          this.changeValue = value;
        })
        .margin(20)
        .onFocus(() => {
          this.onFocusEvent3 = `FocusPage017 Search groupDefaultFocus  默认获焦`
        })

    }
    .width('100%')
    .height('100%')
  }
}