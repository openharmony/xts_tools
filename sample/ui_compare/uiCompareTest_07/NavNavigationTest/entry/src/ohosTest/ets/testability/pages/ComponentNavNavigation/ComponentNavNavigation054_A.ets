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
struct ComponentNavNavigation054_A {
  @State Color:ResourceColor = Color.Red
  build() {
    NavDestination() {
      Column() {
        Button('swithch color')
          .width('80%')
          .height(40)
          .margin(20)
          .id('ComponentNavNavigation054_A1')
          .onClick(() => {
            this.Color = Color.Blue
          })
      }
    }.title('test only blur',{backgroundColor:this.Color})
  }

}

export { ComponentNavNavigation054_A }