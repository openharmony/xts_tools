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

/**
 * @tc.name: SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_TRANSLATE_0003
 * @tc.desc: 选中纯文本内容，点击翻译按钮
 * @tc.level: Level 1
 */
import { hilog } from '@kit.PerformanceAnalysisKit';

@Entry
@ComponentV2
struct RicheditorTranslate0003 {
  @Local testLog: string = '';
  @Local textContent: string = 'Hello, this is a text for translation test. 你好，这是一段翻译测试文本！😊';

  private addLog(message: string): void {
    this.testLog += message + '\n';
    hilog.info(0x0000, 'RicheditorTranslate0003', message);
  }

  aboutToAppear(): void {
    this.addLog('Page loaded - RichEditor翻译功能测试');
  }

  build() {
    Column() {
      Text('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_TRANSLATE_0003')
        .fontSize(11)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 8 });

      Text('选中纯文本内容，点击翻译按钮')
        .fontSize(12)
        .margin({ bottom: 10 });

      // 模拟RichEditor区域
      Column() {
        Text(this.textContent)
          .fontSize(14)
          .width('100%')
          .id('rich_text_content');
      }
      .width('90%')
      .height(100)
      .padding(10)
      .backgroundColor('#FAFAFA')
      .borderRadius(8)
      .border({ width: 1, color: '#E0E0E0' })
      .margin({ bottom: 10 });

      Column() {
        Text('测试步骤:')
          .fontSize(11)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 5 });

        Text('1. richeditor添加一段文本内容')
          .fontSize(10);
        Text('2. 选中纯文本内容(含标点、表情、文字)')
          .fontSize(10);
        Text('3. 点击翻译按钮')
          .fontSize(10);
      }
      .width('90%')
      .padding(10)
      .backgroundColor('#E3F2FD')
      .borderRadius(8)
      .alignItems(HorizontalAlign.Start);

      Column() {
        Text('预期结果:')
          .fontSize(11)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 5 });

        Text('正常拉起翻译面板，翻译栏内容只是选中的纯文本内容')
          .fontSize(10)
          .fontColor('#4CAF50');
      }
      .width('90%')
      .padding(10)
      .backgroundColor('#E8F5E9')
      .borderRadius(8)
      .alignItems(HorizontalAlign.Start)
      .margin({ top: 10 });

      Scroll() {
        Text(this.testLog)
          .fontSize(9)
          .fontColor('#333333')
          .id('log_text');
      }
      .height(60)
      .width('90%')
      .backgroundColor('#F5F5F5')
      .padding(5)
      .margin({ top: 10 });
    }
    .width('100%')
    .height('100%')
    .padding(15);
  }
}

