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
struct UiComponentControllerAddDelete27 {
  textAreaController: TextAreaController = new TextAreaController();
  textinputController: TextInputController = new TextInputController();
  @State onCopy: string = '';
  @State text: string = 'ababababaababababaababababaababababaababababaababababaababababa'+
    'ababababaababababaababababaababababa';
  @State start: number = 0;
  @State end: number = 20;
  @State changeValue: string = ''
  @State submitValue: string = ''
  @State textareatype:TextContentStyle=TextContentStyle.INLINE
  @State textinputtype:TextContentStyle=TextContentStyle.INLINE
  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Start, justifyContent: FlexAlign.Start }) {
      TextArea({
        text: this.text,
        placeholder: '',
        controller: this.textAreaController
      })
        .placeholderFont({ size: 16, weight: 400 })
        .width(336)
        .height(100)
        .margin(20)
        .border({ width: 1 })
        .fontSize(16)
        .maxLines(2)
        .fontColor('#182431')
        .maxLines(1)
        .backgroundColor('#FFFFFF')
        .textOverflow(TextOverflow.Ellipsis)
        .style(this.textareatype)
        .onChange((value: string) => {
          this.text = value;
        })
        .id('UiComponentControllerAddDelete27_01')
      TextInput({ text: this.text, placeholder: '', controller: this.textinputController })
        .placeholderColor(Color.Grey)
        .placeholderFont({ size: 14, weight: 400 })
        .caretColor(Color.Blue)
        .width('95%')
        .height(40)
        .margin(20)
        .textOverflow(TextOverflow.Ellipsis)
        .maxLines(1)
        .style(this.textinputtype)
        .fontSize(14)
        .fontColor(Color.Black)
        .id('UiComponentControllerAddDelete27_02')
      Button('add text at end')
        .margin({ left: 20 })
        .onClick(() => {
          this.textAreaController.addText('123');
          this.textinputController.addText('123');
        })
        .id('UiComponentControllerAddDelete27_03')
      Text(this.onCopy).fontSize(12).margin(10).key('copy')
    }
    .height(600)
    .width(335)
    .padding({ left: 35, right: 35, top: 35 })
  }
}