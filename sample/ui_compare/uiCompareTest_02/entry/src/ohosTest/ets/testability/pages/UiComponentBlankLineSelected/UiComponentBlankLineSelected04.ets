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
struct UiComponentBlankLineSelected04 {
  @State onCopy: string = '';
  @State text: string =
    'hello world hello world hello world hello world hello world hello world'+"" +
      "                                                              ";
  @State start: number = 80;
  @State end: number = 100;
  @State fontsize:number=12;
  build() {
    Column() {
      Text(this.text)
        .fontSize(this.fontsize)
        .border({ width: 1 })
        .lineHeight(20)
        .margin(30)
        .copyOption(CopyOptions.InApp)
        .selection(this.start, this.end)
        .onCopy((value: string) => {
          this.onCopy = value;
        })
        .baselineOffset(-20)
        .draggable(true)
        .caretColor(Color.Red)
        .selectedBackgroundColor(Color.Grey)
        .enableHapticFeedback(true)
        .textIndent(60)
        .height(200)
        .width(200)
      Button('change fontsize')
        .margin({ left: 20 })
        .onClick(() => {
          this.fontsize=30
        })
        .id('UiComponentBlankLineSelected04')
      Text(this.onCopy).fontSize(12).margin(10).key('copy')
    }.height(600).width(335).padding({ left: 35, right: 35, top: 35 })
  }
}

