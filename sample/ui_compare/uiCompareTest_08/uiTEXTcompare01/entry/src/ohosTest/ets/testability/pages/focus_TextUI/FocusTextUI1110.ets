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
struct FocusTextUI1110 {
  @State letterSpacingValue: string = '2';

  build() {
    Column() {
      Text('这是一段测试文本，用于验证文本字符间距设置空字符恢复默认0的效果。')
        .id('changeResBtn1110')
        .letterSpacing(this.letterSpacingValue)
        .onClick(() => {
          this.letterSpacingValue = ' ';
        })
    }
    .width('100%')
    .padding(20)
  }
}