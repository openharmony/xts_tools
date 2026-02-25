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

import { font } from '@kit.ArkUI';

@Entry
@Component
struct CanvasCustomFont0020 {
  private settings: RenderingContextSettings = new RenderingContextSettings(true);
  private context: CanvasRenderingContext2D = new CanvasRenderingContext2D(this.settings);
  @State fontRegistered: boolean = false;
  @State registrationStatus: string = '正在注册字体...';
  @State customFontFamily: string = 'InvalidPathFont';

  aboutToAppear() {
    this.registerCustomFont();
  }

  registerCustomFont() {
    try {
      font.registerFont({
        familyName: this.customFontFamily,
        familySrc: 'fonts/invalid_path/nonexistent_font.ttf'
      });
      this.fontRegistered = true;
      this.registrationStatus = '✅ 字体注册成功（异常）';
      console.info('[CanvasCustomFont0020] Font registered successfully: ' + this.customFontFamily);
    } catch (error) {
      this.fontRegistered = false;
      this.registrationStatus = '❌ 字体注册失败（预期行为）';
      console.error('[CanvasCustomFont0020] Font registration failed: ' + JSON.stringify(error));
    }
  }

  build() {
    Scroll() {
      Column({ space: 15 }) {
        Text('Canvas 自定义字体测试')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .margin({ top: 10 })

        Divider()

        Text('测试说明')
          .fontSize(16)
          .fontWeight(FontWeight.Medium)
          .width('90%')

        Column({ space: 8 }) {
          Text('• 注册自定义字体，使用异常字体文件路径')
            .fontSize(12)
            .width('90%')
          
          Text('• 路径：fonts/invalid_path/nonexistent_font.ttf')
            .fontSize(12)
            .fontColor(Color.Red)
            .width('90%')
          
          Text('• 字体名称：' + this.customFontFamily)
            .fontSize(12)
            .width('90%')
          
          Text('• 预期：使用默认字体显示')
            .fontSize(12)
            .fontColor(Color.Blue)
            .fontWeight(FontWeight.Bold)
            .width('90%')
        }
        .alignItems(HorizontalAlign.Start)
        .width('100%')
        .padding(10)
        .backgroundColor('#FFF9C4')
        .borderRadius(8)

        Divider()

        Column({ space: 8 }) {
          Text('字体注册状态')
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .width('100%')
          
          Text(this.registrationStatus)
            .fontSize(12)
            .fontColor(this.fontRegistered ? Color.Orange : Color.Green)
            .fontWeight(FontWeight.Bold)
            .width('100%')
          
          Text(this.fontRegistered ? 
            '⚠️ 异常：路径无效但注册成功' : 
            '✓ 路径无效，注册失败，符合预期')
            .fontSize(11)
            .fontColor(this.fontRegistered ? Color.Orange : Color.Green)
            .width('100%')
        }
        .alignItems(HorizontalAlign.Start)
        .width('100%')
        .padding(10)
        .backgroundColor(this.fontRegistered ? '#FFF3E0' : '#E8F5E9')
        .borderRadius(8)

        Divider()

        Text('Canvas 绘制区域')
          .fontSize(16)
          .fontWeight(FontWeight.Medium)
          .width('90%')

        Canvas(this.context)
          .width('95%')
          .height(450)
          .backgroundColor('#F5F5F5')
          .border({ width: 2, color: '#1E90FF', style: BorderStyle.Solid })
          .borderRadius(8)
          .onReady(() => {
            // 尝试使用注册的字体（应该回退到默认字体）
            this.context.font = '35px ' + this.customFontFamily;
            this.context.fillStyle = '#FF0000';
            this.context.fillText('尝试使用无效字体', 40, 50);
            
            this.context.font = '12px sans-serif';
            this.context.fillStyle = '#FF0000';
            this.context.fillText('字体: ' + this.customFontFamily + ' (无效)', 40, 72);
            
            // 添加分隔线
            this.context.strokeStyle = '#CCCCCC';
            this.context.lineWidth = 1;
            this.context.setLineDash([5, 5]);
            this.context.beginPath();
            this.context.moveTo(30, 95);
            this.context.lineTo(370, 95);
            this.context.stroke();
            this.context.setLineDash([]);
            
            // 绘制默认字体对比
            this.context.font = '35px sans-serif';
            this.context.fillStyle = '#000000';
            this.context.fillText('Sans-serif 字体', 40, 145);
            
            this.context.font = '12px sans-serif';
            this.context.fillStyle = '#1E90FF';
            this.context.fillText('字体: sans-serif', 40, 167);
            
            // serif 字体
            this.context.font = '35px serif';
            this.context.fillStyle = '#006400';
            this.context.fillText('Serif Font Test', 40, 230);
            
            this.context.font = '12px sans-serif';
            this.context.fillStyle = '#006400';
            this.context.fillText('字体: serif', 40, 252);
            
            // monospace 字体
            this.context.font = '35px monospace';
            this.context.fillStyle = '#8B4513';
            this.context.fillText('Monospace Test', 40, 315);
            
            this.context.font = '12px sans-serif';
            this.context.fillStyle = '#8B4513';
            this.context.fillText('字体: monospace', 40, 337);
            
            // 添加验证说明
            this.context.font = '11px sans-serif';
            this.context.fillStyle = '#666666';
            this.context.fillText('验证：红色文本应与黑色文本字体相同', 40, 380);
            this.context.fillText('（都使用 sans-serif 默认字体）', 40, 395);
          })

        Divider()

        Column({ space: 8 }) {
          Text('📍 验证要点')
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .width('100%')
          
          Text('• 红色：无效字体→回退到 sans-serif')
            .fontSize(12)
            .width('100%')
          
          Text('• 黑色：sans-serif 字体')
            .fontSize(12)
            .width('100%')
          
          Text('• 绿色：serif 字体')
            .fontSize(12)
            .width('100%')
          
          Text('• 棕色：monospace 字体')
            .fontSize(12)
            .width('100%')
          
          Text('• 红色与黑色字体样式应相同')
            .fontSize(12)
            .fontColor(Color.Red)
            .fontWeight(FontWeight.Bold)
            .width('100%')
          
          Text('• 字体注册状态应显示失败')
            .fontSize(12)
            .fontColor(Color.Red)
            .fontWeight(FontWeight.Bold)
            .width('100%')
        }
        .alignItems(HorizontalAlign.Start)
        .width('100%')
        .padding(10)
        .backgroundColor('#E3F2FD')
        .borderRadius(8)
        .margin({ bottom: 10 })
      }
      .width('100%')
      .padding({ left: 15, right: 15, top: 10, bottom: 10 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)
    .scrollBar(BarState.Auto)
    .scrollable(ScrollDirection.Vertical)
    .edgeEffect(EdgeEffect.Spring)
  }
}
