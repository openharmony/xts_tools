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
struct TextSpanStore02 {
  @State selectionStart: number = 5;
  @State selectionEnd: number = 7;
  controller: TextController = new TextController();
  options: TextOptions = { controller: this.controller };

  build() {
    Column() {
      Text('Text组件添加span/属性字符串，selection在表情中间，拖拽文本至输入框')
        .fontSize(16)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20, bottom: 20 })

      // Text组件添加Span，包含表情
      Text() {
        Span('Hello ')
        Span('😀')  // 表情
        Span(' World')
      }
      .id('text_span_store_02')
      .fontSize(20)
      .copyOption(CopyOptions.InApp)
      .draggable(true)
      .selection(this.selectionStart, this.selectionEnd)
      .width('90%')
      .padding(10)
      .border({ width: 1, color: Color.Black })

      TextInput({ placeholder: '拖拽文本到这里' })
        .id('text_input_02')
        .width('90%')
        .margin({ top: 20 })
        .padding(10)
        .border({ width: 1, color: Color.Blue })
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .backgroundColor(0xF5F5F5)
  }
}

