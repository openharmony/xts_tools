/**
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

@Entry
@Component
struct ComponentNavNavigation037 {
  @State titlemode:NavigationTitleMode = NavigationTitleMode.Mini
  @State mode:NavigationMode = NavigationMode.Stack
  @State title:NavigationCommonTitle = {main:'主标题长文本主标题长文本主标题长文本主标题长文本主标题长文本',sub:'副标题长文本副标题长文本副标题长文本副标题长文本副标题长文本'}
  @State back:Optional<boolean> = true
  build() {
    Column() {
      Navigation() {
        Column() {
          TextInput({ placeholder: 'search...' })
            .width('90%')
            .height(40)
            .backgroundColor('#FFFFFF')
            .margin({ top: 8 })
          Button('titlemode', { type: ButtonType.Normal, stateEffect: true })
            .borderRadius(8)
            .backgroundColor(0x317aff)
            .width(200)
            .margin(20)
            .id('ComponentNavNavigation037_001')
            .onClick(() => {
              this.titlemode = NavigationTitleMode.Mini
            })
          Button('mode', { type: ButtonType.Normal, stateEffect: true })
            .borderRadius(8)
            .backgroundColor(0x317aff)
            .width(200)
            .margin(20)
            .id('ComponentNavNavigation037_002')
            .onClick(() => {
              this.mode = NavigationMode.Split
            })
          Button('title', { type: ButtonType.Normal, stateEffect: true })
            .borderRadius(8)
            .backgroundColor(0x317aff)
            .width(200)
            .margin(20)
            .id('ComponentNavNavigation037_003')
            .onClick(() => {
              this.title = { main: '主标题短文本', sub: '副标题短文本' }
            })
          Button('back', { type: ButtonType.Normal, stateEffect: true })
            .borderRadius(8)
            .backgroundColor(0x317aff)
            .width(200)
            .margin(20)
            .id('ComponentNavNavigation037_004')
            .onClick(() => {
              this.back = false
            })
        }
      }
      .title(this.title,{backgroundColor:Color.Pink})
      .titleMode(this.titlemode)
      .mode(this.mode)
      .hideBackButton(this.back)
    }.width('100%').height('100%').backgroundColor('#F1F3F5')
  }
}
