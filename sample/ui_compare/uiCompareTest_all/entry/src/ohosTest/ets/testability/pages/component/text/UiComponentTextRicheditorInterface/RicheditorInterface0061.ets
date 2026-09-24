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
 * getParagraphs范围边界落在长度大于1的元素中间
 * SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0061
 */
@Entry
@ComponentV2
export struct RicheditorInterface0061 {
  controller: RichEditorController = new RichEditorController();
  @Local logText: string = '';

  testGetParagraphs(): void {
    // 获取段落，范围边界落在emoji和symbol中间
    const paragraphs = this.controller.getParagraphs({ start: 2, end: 10 });
    this.logText = `获取到${paragraphs.length}个段落，无crash`;
  }

  build() {
    Scroll() {
      Column() {
        Text('getParagraphs边界测试')
          .fontSize(14)
          .fontWeight(FontWeight.Bold)
          .margin({ top: 10, bottom: 10 })

        Text('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_INTERFACE_0061')
          .fontSize(11)
          .fontColor('#666')
          .margin({ bottom: 15 })

        Text(`结果: ${this.logText}`)
          .fontSize(12)
          .margin({ bottom: 10 })

        RichEditor({ controller: this.controller })
          .width('90%')
          .height(200)
          .border({ width: 1, color: '#ccc' })
          .margin({ bottom: 15 })

        Button('测试getParagraphs')
          .fontSize(12)
          .onClick(() => this.testGetParagraphs())
          .margin({ bottom: 15 })

        Button('测试完成')
          .id('btn')
          .width('80%')
          .onClick(() => {})
          .margin({ bottom: 15 })

        Text('测试说明：')
          .fontSize(12)
          .fontWeight(FontWeight.Bold)
          .margin({ top: 10, bottom: 5 })
          .alignSelf(ItemAlign.Start)

        Text('1. RichEditor添加包含emoji和symbol的图文混合内容\\n2. 调用getParagraphs，范围边界落在emoji和symbol中间')
          .fontSize(10)
          .width('95%')
          .margin({ bottom: 10 })

        Text('预期结果：')
          .fontSize(12)
          .fontWeight(FontWeight.Bold)
          .margin({ top: 5, bottom: 5 })
          .alignSelf(ItemAlign.Start)

        Text('可以获取到完整的段落内容，无crash现象')
          .fontSize(10)
          .fontColor('#FF6B35')
          .width('95%')
      }
      .width('100%')
      .padding(10)
    }
    .width('100%')
    .height('100%')
  }

  aboutToAppear(): void {
    this.controller.addTextSpan('文本😀emoji♠️symbol内容测试', {
      style: {
        fontColor: Color.Black,
        fontSize: 14
      }
    });
  }
}

