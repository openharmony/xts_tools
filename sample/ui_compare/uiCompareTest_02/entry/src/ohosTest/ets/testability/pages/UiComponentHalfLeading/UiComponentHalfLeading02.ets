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
struct UiComponentHalfLeading02 {
  textAreaController: TextAreaController = new TextAreaController();
  textinputController: TextInputController = new TextInputController();
  searchController: TextInputController = new SearchController();
  @State onCopy: string = '';
  @State text: string = 'hello world';
  @State start: number = 0;
  @State end: number = 20;
  @State changeValue: string = ''
  @State submitValue: string = ''
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
        .backgroundColor('#FFFFFF')
        .onChange((value: string) => {
          this.text = value;
        })
        .id('UiComponentHalfLeading02_01')
      TextInput({ text: this.text, placeholder: '', controller: this.textinputController })
        .placeholderColor(Color.Grey)
        .placeholderFont({ size: 14, weight: 400 })
        .caretColor(Color.Blue)
        .width('95%')
        .height(120)
        .maxLength(9)
        .lineHeight(80)
        .margin(20)
        .style(TextContentStyle.INLINE)
        .fontSize(16)
        .halfLeading(true)
        .fontColor(Color.Black)
        .id('UiComponentHalfLeading02_02')
      Search({ value: this.text, placeholder: '', controller: this.searchController })
        .searchButton('SEARCH')
        .width('95%')
        .height(120)
        .backgroundColor('#F5F5F5')
        .maxLength(9)
        .lineHeight(80)
        .halfLeading(true)
        .enableKeyboardOnFocus(false)
        .placeholderColor(Color.Grey)
        .placeholderFont({ size: 14, weight: 400 })
        .textFont({ size: 14, weight: 400 })
        .onSubmit((value: string) => {
          this.submitValue = value
        })
        .onChange((value: string) => {
          this.changeValue = value
        })
        .margin(20)
        .id('UiComponentHalfLeading02_03')
    }
    .height(600)
    .width(335)
    .padding({ left: 35, right: 35, top: 35 })
  }
}