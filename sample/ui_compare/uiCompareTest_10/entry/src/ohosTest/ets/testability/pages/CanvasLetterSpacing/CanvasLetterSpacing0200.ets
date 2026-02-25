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
struct CanvasLetterSpacing0200 {
  private settings: RenderingContextSettings = new RenderingContextSettings(true);
  private context: CanvasRenderingContext2D = new CanvasRenderingContext2D(this.settings);

  build() {
    Column({ space: 20 }) {
      Text('Canvas letterSpacing 测试')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20 })

      Divider()

      Text('测试说明')
        .fontSize(18)
        .fontWeight(FontWeight.Medium)
        .width('90%')

      Column({ space: 10 }) {
        Text('• 连续设置两个 letterSpacing 属性')
          .fontSize(14)
          .width('90%')
        
        Text('• 第一次设置有效值：letterSpacing = "10px"')
          .fontSize(14)
          .width('90%')
        
        Text('• 第二次设置无效值：letterSpacing = "aaa"')
          .fontSize(14)
          .width('90%')
        
        Text('• 调用 fillText("Hello World", 50, 100)')
          .fontSize(14)
          .width('90%')
        
        Text('• 预期结果：无效值设置没有生效，默认为 0 间距')
          .fontSize(14)
          .fontColor(Color.Blue)
          .fontWeight(FontWeight.Bold)
          .width('90%')
      }
      .alignItems(HorizontalAlign.Start)
      .width('100%')
      .padding(15)
      .backgroundColor('#FFF9C4')
      .borderRadius(8)

      Divider()

      Text('Canvas 绘制区域')
        .fontSize(18)
        .fontWeight(FontWeight.Medium)
        .width('90%')

      Canvas(this.context)
        .width('95%')
        .height(350)
        .backgroundColor('#F5F5F5')
        .border({ width: 2, color: '#1E90FF', style: BorderStyle.Solid })
        .borderRadius(8)
        .onReady(() => {
          // 设置字体大小
          this.context.font = '30px sans-serif';
          
          // 第一次设置有效值
          this.context.letterSpacing = '10px';
          
          // 第二次设置无效值
          this.context.letterSpacing = 'aaa';
          
          // 设置填充颜色
          this.context.fillStyle = '#000000';
          
          // 绘制文本（应该使用默认0间距）
          this.context.fillText('Hello World', 50, 100);
          
          // 添加参考线
          this.context.strokeStyle = '#FF0000';
          this.context.lineWidth = 1;
          this.context.beginPath();
          this.context.moveTo(50, 0);
          this.context.lineTo(50, 350);
          this.context.stroke();
          
          // 添加标注
          this.context.font = '12px sans-serif';
          this.context.fillStyle = '#FF0000';
          this.context.fillText('无效值 "aaa" (应为0间距)', 10, 120);
          
          // 绘制对比文本（有效的10px间距）
          this.context.font = '30px sans-serif';
          this.context.letterSpacing = '10px';
          this.context.fillStyle = '#0000FF';
          this.context.fillText('Hello World', 50, 180);
          
          this.context.font = '12px sans-serif';
          this.context.fillStyle = '#0000FF';
          this.context.fillText('对比：letterSpacing="10px"', 10, 200);
          
          // 绘制对比文本（明确的0间距）
          this.context.font = '30px sans-serif';
          this.context.letterSpacing = '0';
          this.context.fillStyle = '#999999';
          this.context.fillText('Hello World', 50, 260);
          
          this.context.font = '12px sans-serif';
          this.context.fillStyle = '#999999';
          this.context.fillText('对比：letterSpacing="0"', 10, 280);
        })

      Divider()

      Column({ space: 10 }) {
        Text('📍 验证要点')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .width('100%')
        
        Text('• 上方黑色文本：先设置"10px"后设置"aaa"，无效值导致间距为0')
          .fontSize(14)
          .width('100%')
        
        Text('• 中间蓝色文本：letterSpacing="10px"，字符间距明显增大')
          .fontSize(14)
          .width('100%')
        
        Text('• 下方灰色文本：letterSpacing="0"，正常字符间距')
          .fontSize(14)
          .width('100%')
        
        Text('• 上方黑色文本应该与下方灰色文本间距一致（都是0间距）')
          .fontSize(14)
          .fontColor(Color.Red)
          .fontWeight(FontWeight.Bold)
          .width('100%')
        
        Text('• 红色竖线标记起始位置 X=50')
          .fontSize(14)
          .width('100%')
      }
      .alignItems(HorizontalAlign.Start)
      .width('100%')
      .padding(15)
      .backgroundColor('#E3F2FD')
      .borderRadius(8)
      .margin({ bottom: 20 })
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .backgroundColor(Color.White)
  }
}
