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
struct CanvasLetterSpacing0030 {
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
        Text('• 初始化未指定 LengthMetricsUnit')
          .fontSize(14)
          .width('90%')
        
        Text('• 设置 letterSpacing = "10vp"')
          .fontSize(14)
          .width('90%')
        
        Text('• 调用 fillText("Hello World", 50, 102)')
          .fontSize(14)
          .width('90%')
        
        Text('• 预期结果：默认文字间隔 10VP')
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
        .height(300)
        .backgroundColor('#F5F5F5')
        .border({ width: 2, color: '#1E90FF', style: BorderStyle.Solid })
        .borderRadius(8)
        .onReady(() => {
          this.context.font = '30px sans-serif';
          
          this.context.letterSpacing = '10vp';
          
          this.context.fillStyle = '#000000';
          
          this.context.fillText('Hello World', 50, 102);
          
          this.context.strokeStyle = '#FF0000';
          this.context.lineWidth = 1;
          this.context.beginPath();
          this.context.moveTo(50, 0);
          this.context.lineTo(50, 300);
          this.context.stroke();
          
          this.context.font = '12px sans-serif';
          this.context.fillStyle = '#FF0000';
          this.context.fillText('起始位置 (50, 102)', 10, 122);
          
          this.context.font = '30px sans-serif';
          this.context.letterSpacing = '0';
          this.context.fillStyle = '#999999';
          this.context.fillText('Hello World', 50, 182);
          
          this.context.font = '12px sans-serif';
          this.context.fillStyle = '#999999';
          this.context.fillText('对比：letterSpacing=0', 10, 202);
        })

      Divider()

      Column({ space: 10 }) {
        Text('📍 验证要点')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .width('100%')
        
        Text('• 上方文本：letterSpacing="10vp"，字符间距明显增大')
          .fontSize(14)
          .width('100%')
        
        Text('• 下方文本：letterSpacing="0"，正常字符间距')
          .fontSize(14)
          .width('100%')
        
        Text('• 对比两行文本，可以看到10VP的间距差异')
          .fontSize(14)
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
