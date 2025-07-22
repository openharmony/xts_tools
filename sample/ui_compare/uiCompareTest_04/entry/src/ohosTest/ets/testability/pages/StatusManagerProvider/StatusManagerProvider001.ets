/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

@Entry
@ComponentV2
struct StatusManagerProvider001 {
  @Provider() val2: number = 10;

  build() {
    Column() {
      AComp()
    }
  }
}

@ComponentV2
struct AComp {
  @Provider() val1: number = 20;
  @Consumer("val") val2: number = 5;

  build() {
    Column() {
      Text(`AComp: ${this.val2}`).textAlign(TextAlign.Center).fontSize(30).fontColor(Color.Black)
      A1Compont()
    }
  }
}

@ComponentV2
struct A1Compont {
  @Consumer() val: number = 0;

  build() {
    Column() {
      Text(`A1Comppont: ${this.val}`).textAlign(TextAlign.Center).fontSize(30).fontColor(Color.Blue)
    }
  }
}
