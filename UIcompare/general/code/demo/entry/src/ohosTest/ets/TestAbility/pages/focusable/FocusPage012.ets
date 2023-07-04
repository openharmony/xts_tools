/**
 * Copyright (c) 2022 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
struct FocusPage {
  @State _generalAttr: boolean = false; //通用属性初始值
  @State componentKey: string = router.getParams() ? router.getParams()['view']['componentKey'] : "" //组件唯一标识
  @State state: AnimationStatus = AnimationStatus.Initial
  @State reverse: boolean = false
  @State iterations: number = 1

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
    Row() {
      Column() {
        Column(){
          Text("Column1")
            .width(100)
            .height(50)
        }
        .width(200)
        .height(100)
        .border({width:2})
        .defaultFocus(true)
        Column(){
          Text("Column2")
            .width(100)
            .height(50)
        }
        .commonStyle()
        Column(){
          Text("Column3")
            .width(100)
            .height(50)
        }
        .commonStyle()
      }
      .width('100%')
      .height('100%')
      .backgroundColor(Color.Orange)
    }
  }
}