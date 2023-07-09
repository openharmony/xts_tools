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
import prompt from '@ohos.prompt'
import windowSnap from '../../../test/model/snapShot'

@Entry
@Component
struct FocusPage {
  @State _generalAttr: boolean = false; //通用属性初始值
  @State componentKey: string = router.getParams() ? router.getParams()['view']['componentKey'] : "" //组件唯一标识
  @State state: AnimationStatus = AnimationStatus.Initial
  @State reverse: boolean = false
  @State iterations: number = 1
  @State text: string = ''
  @State changeValue: string = '';
  @State submitValue: string = '';
  @State idList: string[] = ['A', 'B', 'C', 'D']
  @State selectId: string = 'A'

  @Styles commonStyle(){
    .width(200)
    .height(100)
    .border({width:2})
  }

  onPageShow() {
    AttrsManager.registerDataChange(value => this._generalAttr = value)
  }

  build() {
    Column() {
      Button("id: " + this.idList[0] + " focusable(false)")
        .margin(15)
        .onClick(() => {
          // 将光标移动至第一个字符后
        })
        .focusable(false)
        .commonStyle()
        .key(this.idList[0])

      Button("id: " + this.idList[1] + " focusable(true)")
        .margin(15)
        .onClick(() => {
          // 将光标移动至第一个字符后
        })
        .commonStyle()
        .key(this.idList[1])

      Button("id: " + this.idList[2] + " focusable(true)")
        .margin(15)
        .commonStyle()
        .key(this.idList[2])

      Row({space: 5}) {
        Select([{value: this.idList[0]},
          {value: this.idList[1]},
          {value: this.idList[2]},
          {value: this.idList[3]}])
          .value(this.selectId)
          .onSelect((index: number) => {
            this.selectId = this.idList[index]
          })
        Button("RequestFocus")
          .width(200).height(70).fontColor(Color.White)
          .onClick(() => {
            var res = focusControl.requestFocus(this.selectId)      // 使选中的this.selectId的组件获焦
            if (res) {
              prompt.showToast({message: 'Request success'})
              console.info(`RequestFocus res is : ${res}`)
            } else {
              prompt.showToast({message: 'Request failed'})
            }
          })
          .id("RequestFocus")
      }

    }
    .focusOnTouch(true)
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Orange)
  }
}