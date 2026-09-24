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
struct TextSpanStore03 {
  controller: TextController = new TextController();
  options: TextOptions = { controller: this.controller };

  build() {
    Column() {
      Text('Text组件添加span/属性字符串，拖拽手柄')
        .fontSize(16)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20, bottom: 20 })

      // Text组件添加Span，包含多个表情
      Text() {
        Span('Text with ')
        Span('😀')
        Span(' and ')
        Span('😁')
        Span(' emoji')
      }
      .id('text_span_store_03')
      .fontSize(20)
      .copyOption(CopyOptions.InApp)
      .draggable(true)
      .enableHapticFeedback(true)
      .width('90%')
      .padding(10)
      .border({ width: 1, color: Color.Black })
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .backgroundColor(0xF5F5F5)
  }
}

