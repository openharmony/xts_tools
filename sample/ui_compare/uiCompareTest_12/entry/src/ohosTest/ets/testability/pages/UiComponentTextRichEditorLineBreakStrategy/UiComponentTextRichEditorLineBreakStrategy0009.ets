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
struct UiComponentTextRichEditorLineBreakStrategy0009 {
  controller: RichEditorController = new RichEditorController();
  private spanParagraphs: RichEditorParagraphResult[] = [];
  @State lineBreakOptionStr: string[] = ['GREEDY', 'HIGH_QUALITY', 'BALANCED'];
  @State attributeValue: string = "";
  
  // 测试文本：包含Non-CJK文本(英文)、CJK文本(中文、日文、韩文)、数字、特殊符号、表情
  @State testStr: string = "Good Morning! 早上好！おはようございます！좋은 아침입니다! 11111 ~!@#$%^&*() 🚀🎪🎭";

  build() {
    Column() {
      // RichEditor组件：设置lineBreakStrategy为GREEDY，观察折行效果
      RichEditor({ controller: this.controller })
        .onReady(() => {
          // 添加混合内容文本，测试GREEDY策略的折行效果
          this.controller.addTextSpan(this.testStr, {
            style: {
              fontColor: Color.Black,
              fontSize: "20"
            },
            paragraphStyle: {
              textAlign: TextAlign.Start,
              lineBreakStrategy: LineBreakStrategy.GREEDY  // 初始策略：GREEDY
            }
          })
        })
        .id("rich_editor_linebreakstrategy_0009")
        .width(500)
        .height(300)
        .margin({bottom:20})
        .draggable(false)
        .backgroundColor('#f0f8ff')
        .borderRadius(16)
        .padding(24)
      
      // 显示当前linebreak属性值
      Column(){
        Text('linebreak属性值为：' + this.attributeValue).fontSize(20).fontColor(Color.Black)
      }.margin({bottom: 10})
      
      // 按钮控制区域
      Column({ space: 10 }) {
        // 步骤1：先设置非当前测试策略（HIGH_QUALITY），用于对比测试
        Button("设置HIGH_QUALITY策略（对比测试）")
          .id("button_linebreakstrategy_0009_setHighQuality")
          .width("80%")
          .onClick(() => {
            // 设置HIGH_QUALITY策略作为对比
            this.controller.updateParagraphStyle({ start: -1, end: -1,
              style: {
                lineBreakStrategy: LineBreakStrategy.HIGH_QUALITY
              }
            })
          })
        
        // 步骤2：切换到当前要测试的GREEDY策略
        Button("切换到GREEDY策略（测试目标）")
          .id("button_linebreakstrategy_0009_testGreedy")
          .width("80%")
          .onClick(() => {
            // 切换到GREEDY策略，观察折行效果
            this.controller.updateParagraphStyle({ start: -1, end: -1,
              style: {
                lineBreakStrategy: LineBreakStrategy.GREEDY
              }
            })
          })
        
        Divider()
        
        // 步骤3：获取当前linebreak属性值，用于验证策略设置是否成功
        Row(){
          Button("获取linebreak属性值")
            .id("button_linebreakstrategy_0009_getAttribute")
            .width("80%")
            .onClick(() => {
              this.spanParagraphs = this.controller.getParagraphs({ start: -1, end: -1 });
              console.info("RichEditor getParagraphs:" + JSON.stringify(this.spanParagraphs));
              this.spanParagraphs.forEach(item => {
                if(typeof(item as RichEditorParagraphResult)['style'] != 'undefined'){
                  this.attributeValue = "";
                  console.info('lineBreakStrategy:'+ JSON.stringify((item as RichEditorParagraphResult)['style']));
                  this.attributeValue += this.lineBreakOptionStr[Number((item as RichEditorParagraphResult)['style'].lineBreakStrategy)];
                }
              })
            })
        }
      }
    }
  }
}
