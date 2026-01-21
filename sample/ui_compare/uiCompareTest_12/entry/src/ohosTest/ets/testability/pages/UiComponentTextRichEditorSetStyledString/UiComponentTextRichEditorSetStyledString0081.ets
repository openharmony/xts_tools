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
struct UiComponentTextRichEditorSetStyledString0081 {
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
    
    // 创建包含图文混合内容的属性字符串
    this.mutableStr.appendStyledString(new StyledString("文本内容"));
    
    // 添加加粗样式
    let boldStyle = new TextStyle({
      fontColor: Color.Blue,
      fontSize: LengthMetrics.vp(20),
      fontWeight: FontWeight.Bold
    });
    this.mutableStr.setStyle({
      start: 0,
      length: 4,
      styledKey: StyledStringKey.FONT,
      styledValue: boldStyle
    });
    
    // 添加图片
    if (this.imagePixelMap) {
      let imageAttachment = new ImageAttachment({
        value: this.imagePixelMap,
        size: { width: 50, height: 50 },
        layoutStyle: { borderRadius: LengthMetrics.vp(5) },
        verticalAlign: ImageSpanAlignment.BASELINE
      });
      this.mutableStr.appendStyledString(new StyledString(imageAttachment));
    }
    
    // 添加更多文本
    this.mutableStr.appendStyledString(new StyledString("更多内容😀"));
    
    // 设置基础文本样式（注意：图片占1个字符位置）
    let textStyle = new TextStyle({
      fontColor: Color.Black,
      fontSize: LengthMetrics.vp(18)
    });
    this.mutableStr.setStyle({
      start: 5,
      length: this.mutableStr.length - 5,
      styledKey: StyledStringKey.FONT,
      styledValue: textStyle
    });

    this.controller.setStyledString(this.mutableStr);

    // 创建辅助说明的属性字符串
    this.mutableStr2.appendStyledString(new StyledString("点击按钮获取富文本组件的属性字符串"));
    
    let grayStyle = new TextStyle({ fontColor: Color.Gray, fontSize: LengthMetrics.vp(14) });
    this.mutableStr2.setStyle({ start: 0, length: this.mutableStr2.length, styledKey: StyledStringKey.FONT, styledValue: grayStyle });
    
    this.controller2.setStyledString(this.mutableStr2);
  }

  build() {
    Column({ space: 10 }) {
      Text('通过getStyledString获取富文本组件显示的属性字符串')
        .fontSize(13)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 10 })

      RichEditor(this.options2)
        .id('rich_editor_setstyledstring_0081_info')
        .width('100%')
        .height(120)
        .backgroundColor('#FFF9E6')
        .border({ width: 1, color: Color.Orange })
        .borderRadius(8)
        .padding(8)

      Button('获取属性字符串')
        .id('button_setstyledstring_0081_get')
        .fontSize(14)
        .width('90%')
        .onClick(() => {
          let styledString = this.controller.getStyledString();
          
          this.mutableStr2 = new MutableStyledString("");
          this.mutableStr2.appendStyledString(new StyledString("字符串长度: " + styledString.length + "\n"));
          this.mutableStr2.appendStyledString(new StyledString("字符串内容: " + styledString.getString()));
          
          let textStyle = new TextStyle({ fontColor: Color.Black, fontSize: LengthMetrics.vp(14) });
          this.mutableStr2.setStyle({ start: 0, length: this.mutableStr2.length, styledKey: StyledStringKey.FONT, styledValue: textStyle });
          
          this.controller2.setStyledString(this.mutableStr2);
        })

      Button('修改属性字符串后再获取')
        .id('button_setstyledstring_0081_modify_get')
        .fontSize(14)
        .width('90%')
        .onClick(() => {
          // 修改属性字符串
          let newStr = new MutableStyledString("已修改的文本内容");
          let textStyle = new TextStyle({
            fontColor: Color.Black,
            fontSize: LengthMetrics.vp(18)
          });
          newStr.setStyle({
            start: 0,
            length: newStr.length,
            styledKey: StyledStringKey.FONT,
            styledValue: textStyle
          });
          
          this.controller.setStyledString(newStr);
          
          // 再次获取
          let styledString = this.controller.getStyledString();
          
          this.mutableStr2 = new MutableStyledString("");
          this.mutableStr2.appendStyledString(new StyledString("新字符串长度: " + styledString.length + "\n"));
          this.mutableStr2.appendStyledString(new StyledString("新字符串内容: " + styledString.getString()));
          
          let textStyle2 = new TextStyle({ fontColor: Color.Black, fontSize: LengthMetrics.vp(14) });
          this.mutableStr2.setStyle({ start: 0, length: this.mutableStr2.length, styledKey: StyledStringKey.FONT, styledValue: textStyle2 });
          
          this.controller2.setStyledString(this.mutableStr2);
        })

      RichEditor(this.options)
        .id('rich_editor_setstyledstring_0081')
        .width('100%')
        .height(150)
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

