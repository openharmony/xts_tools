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
struct FocusPage018 {
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
  @State onFocusEvent1:string = `FocusPage018 Button focusOnTouch(true) 未获焦`
  @State onFocusEvent2:string = `FocusPage018 Button focusOnTouch(false) 未获焦`
  @State onFocusEvent3:string = `FocusPage018 Button focusOnTouch  未获焦`
  @State onFocusEvent4:string = `FocusPage018 Search focusOnTouch  未获焦`

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
      Button('Set caretPosition 1')
        .margin(15)
        .onClick(() => {
          // 将光标移动至第一个字符后
          this.controller1.caretPosition(1)
        })
        .focusOnTouch(true)
        .onFocus(() => {
          this.onFocusEvent1 = `FocusPage018 Button1 focusOnTouch(true) 获焦`
        })
        .id('Button01018')

      Text(`${this.onFocusEvent2}`)
        .fontSize(20)
      Button('Set caretPosition 1')
        .margin(15)
        .onClick(() => {
          // 将光标移动至第二个字符后
          this.controller1.caretPosition(2)
        })
        .focusOnTouch(false)
        .onFocus(() => {
          this.onFocusEvent2 = `FocusPage018 Button2 focusOnTouch(false) 获焦`
        })
        .id('Button02018')

      Text(`${this.onFocusEvent3}`)
        .fontSize(20)
      Button('Set caretPosition 1')
        .margin(15)
        .onClick(() => {
          // 将光标移动至第三个字符后
          this.controller1.caretPosition(3)
        })
        .onFocus(() => {
          this.onFocusEvent3 = `FocusPage018 Button3 focusOnTouch 获焦`
        })
        .id('Button03018')

      Text(`${this.onFocusEvent4}`)
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
        .onFocus(() => {
          this.onFocusEvent4 = `FocusPage018 Search focusOnTouch  获焦`
        })
    }
    .width('100%')
    .height('100%')

  }
}