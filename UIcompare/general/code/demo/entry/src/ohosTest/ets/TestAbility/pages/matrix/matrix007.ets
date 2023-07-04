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
import matrix4 from '@ohos.matrix4'

@Entry
@Component
struct Matrix2DTranslate {
  @State message: string = 'Matrix2D Translate'
  private matrix1 = matrix4.identity().scale({x:2, y:3, z:4})

  build() {
    Row() {
      Column() {
        Image($r("app.media.icon"))
          .width("40%")
          .height(100)
          .transform(this.matrix1)
        Text("Matrix007")
          .width(100)
          .height(60)
          .id("Matrix007")
          .onClick(() => {
            console.info(
              "Matrix007 matrix1:" + JSON.stringify(this.matrix1)
            )
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}