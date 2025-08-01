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
struct UiComponentHalfLeading11 {
  textAreaController: TextAreaController = new TextAreaController();
  textinputController: TextInputController = new TextInputController();
  searchController: TextInputController = new SearchController();
  @State onCopy: string = '';
  @State text: string = 'hello world';
  @State start: number = 0;
  @State end: number = 20;
  @State changeValue: string = ''
  @State submitValue: string = ''
  @State textcontenstyle:TextContentStyle=TextContentStyle.DEFAULT
  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Start, justifyContent: FlexAlign.Start }) {
      TextArea({
        text: this.text,
        placeholder: '',
        controller: this.textAreaController
      })
        .placeholderFont({ size: 16, weight: 400 })
        .width(336)
        .height(120)
        .margin(20)
        .border({ width: 1 })
        .fontSize(16)
        .lineHeight(80)
        .halfLeading(true)
        .fontColor('#182431')
        .style(this.textcontenstyle)
        .type(TextAreaType.NORMAL)
        .backgroundColor('#FFFFFF')
        .onChange((value: string) => {
          this.text = value;
        })
        .id('UiComponentHalfLeading11_01')
      TextInput({ text: this.text, placeholder: '', controller: this.textinputController })
        .placeholderColor(Color.Grey)
        .placeholderFont({ size: 14, weight: 400 })
        .caretColor(Color.Blue)
        .width('95%')
        .height(120)
        .maxLength(9)
        .type(InputType.Normal)
        .lineHeight(80)
        .margin(20)
        .style(this.textcontenstyle)
        .fontSize(16)
        .halfLeading(true)
        .fontColor(Color.Black)
        .id('UiComponentHalfLeading11_02')
      Button('change style')
        .backgroundColor('#007DFF')
        .margin(15)
        .onClick(() => {
          this.textcontenstyle=TextContentStyle.INLINE;
        })
        .id('UiComponentHalfLeading11_03')
    }
    .height(600)
    .width(335)
    .padding({ left: 35, right: 35, top: 35 })
  }
}