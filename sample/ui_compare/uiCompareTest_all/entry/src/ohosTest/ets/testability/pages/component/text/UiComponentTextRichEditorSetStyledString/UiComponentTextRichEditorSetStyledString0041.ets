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

import { LengthMetrics } from '@kit.ArkUI';
import { image } from '@kit.ImageKit';

@Entry
@Component
struct UiComponentTextRichEditorSetStyledString0041 {
  controller: RichEditorStyledStringController = new RichEditorStyledStringController();
  controller2: RichEditorStyledStringController = new RichEditorStyledStringController();
  options: RichEditorStyledStringOptions = { controller: this.controller };
  options2: RichEditorStyledStringOptions = { controller: this.controller2 };
  mutableStr: MutableStyledString = new MutableStyledString("");
  mutableStr2: MutableStyledString = new MutableStyledString("");
  @State imagePixelMap: image.PixelMap | null = null;

  async loadImage() {
    try {
      const context = getContext(this);
      const resourceMgr = context.resourceManager;
      const imageData = await resourceMgr.getMediaContent($r('app.media.icon'));
      const imageSource = image.createImageSource(imageData.buffer as ArrayBuffer);
      this.imagePixelMap = await imageSource.createPixelMap();
    } catch (error) {
      console.error('加载图片失败:', error);
    }
  }

  async aboutToAppear() {
    await this.loadImage();
    
    // 创建包含两张图片的属性字符串
    if (this.imagePixelMap) {
      let imageAttachment1 = new ImageAttachment({
        value: this.imagePixelMap,
        size: { width: 50, height: 50 },
        layoutStyle: { borderRadius: LengthMetrics.vp(5) },
        verticalAlign: ImageSpanAlignment.BASELINE
      });
      this.mutableStr.appendStyledString(new StyledString(imageAttachment1));
    }
    
    // 在两张图片之间添加空格，便于输入
    this.mutableStr.appendStyledString(new StyledString("  "));
    
    if (this.imagePixelMap) {
      let imageAttachment2 = new ImageAttachment({
        value: this.imagePixelMap,
        size: { width: 50, height: 50 },
        layoutStyle: { borderRadius: LengthMetrics.vp(5) },
        verticalAlign: ImageSpanAlignment.BASELINE
      });
      this.mutableStr.appendStyledString(new StyledString(imageAttachment2));
    }

    // 设置文本样式
    let textStyle = new TextStyle({
      fontColor: Color.Black,
      fontSize: LengthMetrics.vp(18)
    });
    this.mutableStr.setStyle({
      start: 0,
      length: this.mutableStr.length,
      styledKey: StyledStringKey.FONT,
      styledValue: textStyle
    });

    this.controller.setStyledString(this.mutableStr);

    // 创建辅助说明的属性字符串
    this.mutableStr2.appendStyledString(new StyledString("点击按钮在两张图片之间输入字符或emoji"));
    
    let grayStyle = new TextStyle({ fontColor: Color.Gray, fontSize: LengthMetrics.vp(14) });
    this.mutableStr2.setStyle({ start: 0, length: this.mutableStr2.length, styledKey: StyledStringKey.FONT, styledValue: grayStyle });
    
    this.controller2.setStyledString(this.mutableStr2);
  }

  build() {
    Column({ space: 10 }) {
      Text('验证属性字符串的输入操作')
        .fontSize(14)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 10 })

      RichEditor(this.options2)
        .id('rich_editor_setstyledstring_0041_info')
        .width('100%')
        .height(100)
        .backgroundColor('#FFF9E6')
        .border({ width: 1, color: Color.Orange })
        .borderRadius(8)
        .padding(8)

      Button('在图片间输入单个字符A')
        .id('button_setstyledstring_0041_input_char')
        .fontSize(14)
        .width('90%')
        .onClick(() => {
          let currentStr = this.controller.getStyledString();
          let newStr = new MutableStyledString("");
          
          // 在第一张图片后、第一个空格的位置插入字符A
          // 结构：[图片1] + "A" + [空格空格] + [图片2]
          newStr.appendStyledString(currentStr.subStyledString(0, 1)); // 图片1
          newStr.appendStyledString(new StyledString("A")); // 插入字符A
          newStr.appendStyledString(currentStr.subStyledString(1, currentStr.length - 1)); // 空格+图片2
          
          this.controller.setStyledString(newStr);
          
          this.mutableStr2 = new MutableStyledString("");
          this.mutableStr2.appendStyledString(new StyledString("已在图片间输入字符A"));
          
          let blackStyle = new TextStyle({ fontColor: Color.Black, fontSize: LengthMetrics.vp(14) });
          this.mutableStr2.setStyle({ start: 0, length: this.mutableStr2.length, styledKey: StyledStringKey.FONT, styledValue: blackStyle });
          
          this.controller2.setStyledString(this.mutableStr2);
        })

      Button('在图片间输入多个emoji')
        .id('button_setstyledstring_0041_input_emoji')
        .fontSize(14)
        .width('90%')
        .onClick(() => {
          let currentStr = this.controller.getStyledString();
          let newStr = new MutableStyledString("");
          
          // 在第一张图片后、第一个空格的位置插入emoji
          // 结构：[图片1] + "😀😊👍" + [空格空格] + [图片2]
          newStr.appendStyledString(currentStr.subStyledString(0, 1)); // 图片1
          newStr.appendStyledString(new StyledString("😀😊👍")); // 插入emoji
          newStr.appendStyledString(currentStr.subStyledString(1, currentStr.length - 1)); // 空格+图片2
          
          this.controller.setStyledString(newStr);
          
          this.mutableStr2 = new MutableStyledString("");
          this.mutableStr2.appendStyledString(new StyledString("已在图片间输入多个emoji"));
          
          let blackStyle2 = new TextStyle({ fontColor: Color.Black, fontSize: LengthMetrics.vp(14) });
          this.mutableStr2.setStyle({ start: 0, length: this.mutableStr2.length, styledKey: StyledStringKey.FONT, styledValue: blackStyle2 });
          
          this.controller2.setStyledString(this.mutableStr2);
        })

      Button('重置内容')
        .id('button_setstyledstring_0041_reset')
        .fontSize(14)
        .width('90%')
        .onClick(async () => {
          if (!this.imagePixelMap) {
            await this.loadImage();
          }
          
          this.mutableStr = new MutableStyledString("");
          
          if (this.imagePixelMap) {
            let imageAttachment1 = new ImageAttachment({
              value: this.imagePixelMap,
              size: { width: 50, height: 50 },
              layoutStyle: { borderRadius: LengthMetrics.vp(5) },
              verticalAlign: ImageSpanAlignment.BASELINE
            });
            this.mutableStr.appendStyledString(new StyledString(imageAttachment1));
          }
          
          this.mutableStr.appendStyledString(new StyledString("  "));
          
          if (this.imagePixelMap) {
            let imageAttachment2 = new ImageAttachment({
              value: this.imagePixelMap,
              size: { width: 50, height: 50 },
              layoutStyle: { borderRadius: LengthMetrics.vp(5) },
              verticalAlign: ImageSpanAlignment.BASELINE
            });
            this.mutableStr.appendStyledString(new StyledString(imageAttachment2));
          }
          
          let textStyle = new TextStyle({
            fontColor: Color.Black,
            fontSize: LengthMetrics.vp(18)
          });
          this.mutableStr.setStyle({
            start: 0,
            length: this.mutableStr.length,
            styledKey: StyledStringKey.FONT,
            styledValue: textStyle
          });
          
          this.controller.setStyledString(this.mutableStr);
          
          this.mutableStr2 = new MutableStyledString("");
          this.mutableStr2.appendStyledString(new StyledString("内容已重置"));
          
          let blackStyle3 = new TextStyle({ fontColor: Color.Black, fontSize: LengthMetrics.vp(14) });
          this.mutableStr2.setStyle({ start: 0, length: this.mutableStr2.length, styledKey: StyledStringKey.FONT, styledValue: blackStyle3 });
          
          this.controller2.setStyledString(this.mutableStr2);
        })

      RichEditor(this.options)
        .id('rich_editor_setstyledstring_0041')
        .width('100%')
        .height(180)
        .backgroundColor(Color.White)
        .border({ width: 2, color: Color.Blue })
        .borderRadius(8)
        .padding(10)
    }
    .width('100%')
    .height('100%')
    .padding(15)
    .backgroundColor('#F6F7F9')
  }
}

