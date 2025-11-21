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
struct TextSpanStore24 {
  controller: TextController = new TextController();
  options: TextOptions = { controller: this.controller };
  
  // 使用MutableStyledString，支持appendStyledString操作
  mutableStyledString: MutableStyledString = new MutableStyledString('Hello 😀');

  async onPageShow() {
    this.controller.setStyledString(this.mutableStyledString);
  }

  appendStyledString() {
    // appendStyledString追加新的属性字符串
    let newStyledString: StyledString = new StyledString(' World', []);
    this.mutableStyledString.appendStyledString(newStyledString);
    this.controller.setStyledString(this.mutableStyledString);
  }

  build() {
    Column() {
      Text('Text组件添加属性字符串，appendStyledString追加新的属性字符串')
        .fontSize(16)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20, bottom: 20 })

      Text(undefined, this.options)
        .id('text_span_store_24')
        .fontSize(20)
        .width('90%')
        .padding(10)
        .border({ width: 1, color: Color.Black })

      Button('appendStyledString追加新的属性字符串')
        .id('append_styled_string_button_24')
        .margin({ top: 10 })
        .onClick(() => this.appendStyledString())
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .backgroundColor(0xF5F5F5)
  }
}

