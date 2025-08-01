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
struct UiComponentTextTranslateMenu02 {
  @State text: string = '123456';
  @State positionInfo: CaretOffset = { index: 0, x: 0, y: 0 };
  @State passwordState: boolean = false;
  @State start: number = 0;
  @State end: number = 20;
  textAreaController: TextAreaController = new TextAreaController();
  textinputController: TextInputController = new TextInputController();
  searchController: SearchController = new SearchController();
  build() {
    Column() {
      Text(this.text)
        .width('95%')
        .height(40)
        .margin(20)
        .copyOption(CopyOptions.InApp)
        .id('UiComponentTextTranslateMenu02_01')
      TextInput({ text: this.text!!, placeholder: 'input your word...', controller: this.textinputController })
        .placeholderColor(Color.Grey)
        .placeholderFont({ size: 14, weight: 400 })
        .caretColor(Color.Blue)
        .width('95%')
        .height(40)
        .margin(20)
        .fontSize(14)
        .fontColor(Color.Black)
        .showPasswordIcon(true)
        .showPassword(this.passwordState)
        .onSecurityStateChange(((isShowPassword: boolean) => {
          console.info('isShowPassword', isShowPassword);
          this.passwordState = isShowPassword;
        }))
        .id('UiComponentTextTranslateMenu02_02')
      TextArea({
        text: this.text,
        placeholder: '11111111',
        controller: this.textAreaController
      })
        .placeholderFont({ size: 16, weight: 400 })
        .width(336)
        .height(100)
        .margin(20)
        .border({ width: 1 })
        .fontSize(16)
        .fontColor('#182431')
        .backgroundColor('#FFFFFF')
        .onChange((value: string) => {
          this.text = value;
        })
        .id('UiComponentTextTranslateMenu02_03')
      Search({ value: this.text, placeholder: 'Type to search...', controller: this.searchController })
        .searchButton('SEARCH')
        .width('95%')
        .height(40)
        .backgroundColor('#F5F5F5')
        .placeholderColor(Color.Grey)
        .placeholderFont({ size: 14, weight: 400 })
        .textFont({ size: 14, weight: 400 })
        .id('UiComponentTextTranslateMenu02_04')
    }.width('100%')
  }
}