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
@Component
struct UIAttributesInterfaceReconstitution037 {
  @State message: string = 'shadow值为undefined';
  private shadowArr: Array<Optional<ShadowOptions | ShadowStyle>> = [undefined, {
    radius: 10,
    color: Color.Green,
    offsetX: 30,
    offsetY: 30
  }];
  @State index: number = 0;
  @State shadowFlag: number = 0;

  build() {
    Column() {
      Row() {
        Text(this.message)
          .fontColor(Color.Black)
          .fontSize(20)
      }
      .justifyContent(FlexAlign.Center)
      .width('90%')
      .height('10%')

      Row() {
        Text('shadow')
          .fontColor(Color.Black)
          .padding(15)
          .fontSize(30)
          .backgroundColor(0xAFEEEE)
          .shadow(this.shadowArr[this.index])
      }
      .justifyContent(FlexAlign.Center)
      .width('90%')
      .height('70%')

      Row() {
        Button('设置shadow值')
          .id('setting')
          .stateEffect(true)
          .onClick(() => {
            this.shadowFlag++;
            if(this.shadowFlag % 2 == 1) {
              this.index = 1;
              this.message = 'shadow值为正常值';
            } else {
              this.index = 0;
              this.message = 'shadow值为undefined';
            }
          })
      }
      .justifyContent(FlexAlign.Center)
      .height('10%')
      .width('90%')
    }
    .backgroundColor(0xDCDCDC)
    .width('100%')
  }
}