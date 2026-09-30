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

/**
 * 测试用例：SUB_ACE_UI_COMPONENT_TEXTINPUT_TV_0240
 * 测试目的：验证输入法避让测试
 * 预置条件：存在输入框在页面底部
 * 预期结果：输入框避让输入法弹出框
 */

@Entry
@ComponentV2
export struct TextinputTv0240 {
  @Local inputValue: string = '';

  build() {
    // 使用Flex让输入框固定在底部
    Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.SpaceBetween }) {
      // 顶部内容区域
      Column({ space: 15 }) {
        Text('SUB_ACE_UI_COMPONENT_TEXTINPUT_TV_0240')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)

        Text('测试：输入法避让测试')
          .fontSize(14)
          .fontColor(Color.Gray)

        Divider()

        // 测试说明
        Column({ space: 8 }) {
          Text('测试步骤：')
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .alignSelf(ItemAlign.Start)

          Text('1. 点击底部输入框')
            .fontSize(13)
            .alignSelf(ItemAlign.Start)

          Text('2. 观察键盘弹出时页面的响应')
            .fontSize(13)
            .alignSelf(ItemAlign.Start)

          Text('3. 确认输入框上移避让键盘')
            .fontSize(13)
            .alignSelf(ItemAlign.Start)
        }
        .width('100%')
        .padding(15)
        .backgroundColor('#FFF3E0')
        .borderRadius(8)

        // 预期结果
        Column({ space: 5 }) {
          Text('预期结果：')
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .alignSelf(ItemAlign.Start)

          Text('输入框避让输入法弹出框，输入框和光标在屏幕中可见')
            .fontSize(13)
            .fontColor(Color.Green)
        }
        .width('100%')
        .padding(15)
        .backgroundColor('#E8F5E9')
        .borderRadius(8)
      }
      .width('100%')
      .padding(20)

      // 中间占位区域
      Column() {
        Text('👇 输入框在页面底部 👇')
          .fontSize(14)
          .fontColor(Color.Gray)
      }
      .width('100%')
      .layoutWeight(1)
      .justifyContent(FlexAlign.Center)

      // 底部输入框区域
      Column({ space: 10 }) {
        Text('底部输入框（点击弹出键盘测试避让）：')
          .fontSize(12)
          .fontColor(Color.Gray)

        TextInput({ text: this.inputValue, placeholder: '点击这里弹出键盘...' })
          .id('textInput')
          .width('100%')
          .height(50)
          .backgroundColor(Color.White)
          .borderRadius(8)
          .borderWidth(1)
          .borderColor('#007AFF')
          .onChange((value: string) => {
            this.inputValue = value;
          })
      }
      .width('100%')
      .padding(20)
      .backgroundColor('#E3F2FD')
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#FAFAFA')
  }
}

