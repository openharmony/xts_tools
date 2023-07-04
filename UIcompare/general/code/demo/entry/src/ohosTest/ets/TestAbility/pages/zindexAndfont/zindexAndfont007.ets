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
struct ZIndex007 {

  @State zIndex1:number = 3
  @State zIndex2:number = 2
  @State zIndex3:number = 1

  build() {
    Column() {
      Stack() {
        Image($r('app.media.icon'))
          .width(80)
          .height(60)
          .zIndex(this.zIndex1)
        Image($r('app.media.icon'))
          .width(200)
          .height(120)
          .align(Alignment.TopStart)
          .zIndex(this.zIndex2)
        Image($r('app.media.icon'))
          .width(400)
          .height(220)
          .align(Alignment.TopStart)
          .zIndex(this.zIndex3)
      }.width('100%').height(400)
    }.width('100%').height(600)
  }
}