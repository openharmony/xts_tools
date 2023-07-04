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

@Entry
@Component
struct ZIndex005 {

  @State zIndex1:number = -1
  @State zIndex2:number = -2
  @State zIndex3:number = 0

  build() {
    Column() {
      Stack() {
        Text(`3, zIndex(${this.zIndex1})`)
          .size({ width: '40%', height: '30%' })
          .backgroundColor(0xbbb2cb)
          .zIndex(this.zIndex1)
        Text(`3, zIndex(${this.zIndex2})`)
          .size({ width: '70%', height: '50%' })
          .backgroundColor(0xd2cab3)
          .align(Alignment.TopStart)
          .zIndex(this.zIndex2)
        Text(`3, zIndex(${this.zIndex3})`)
          .size({ width: '90%', height: '80%' })
          .backgroundColor(0xc1cbac)
          .align(Alignment.TopStart)
          .zIndex(this.zIndex3)
      }.width('100%').height(400)
    }.width('100%').height(600)
  }
}