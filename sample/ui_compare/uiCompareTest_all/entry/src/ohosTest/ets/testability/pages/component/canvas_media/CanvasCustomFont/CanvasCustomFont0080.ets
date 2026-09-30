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
struct CanvasCustomFont0080 {
  private settings: RenderingContextSettings = new RenderingContextSettings(true);
  private context: CanvasRenderingContext2D = new CanvasRenderingContext2D(this.settings);
  @State font1Registered: boolean = false;
  @State font2Registered: boolean = false;
  @State registrationStatus: string = '正在注册字体...';
  @State font1Name: string = 'SwitchTestFont1';
  @State font2Name: string = 'SwitchTestFont2';

  aboutToAppear() {
    this.registerMultipleFonts();
  }

  registerMultipleFonts() {
    let statusMessages: string[] = [];
    
    // 注册第一个字体（有效）
    try {
      font.registerFont({
        familyName: this.font1Name,
        familySrc: 'fonts/HarmonyOS_Sans_SC_Medium.ttf'
      });
      this.font1Registered = true;
      statusMessages.push('✅ 字体1注册成功: ' + this.font1Name);
      console.info('[CanvasCustomFont0080] Font1 registered: ' + this.font1Name);
    } catch (error) {
      this.font1Registered = false;
      statusMessages.push('❌ 字体1注册失败: ' + this.font1Name);
      console.error('[CanvasCustomFont0080] Font1 registration failed: ' + JSON.stringify(error));
    }
    
    // 注册第二个字体（无效路径）
    try {
      font.registerFont({
        familyName: this.font2Name,
        familySrc: 'fonts/invalid_path/test_font.ttf'
      });
      this.font2Registered = true;
      statusMessages.push('⚠️ 字体2注册成功（异常）: ' + this.font2Name);
      console.info('[CanvasCustomFont0080] Font2 registered: ' + this.font2Name);
    } catch (error) {
      this.font2Registered = false;
      statusMessages.push('✅ 字体2注册失败（预期）: ' + this.font2Name);
      console.error('[CanvasCustomFont0080] Font2 registration failed: ' + JSON.stringify(error));
    }
    
    this.registrationStatus = statusMessages.join('\n');
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
          Text('• 注册多个自定义字体，有无效值')
            .fontSize(12)
            .width('90%')
          
          Text('• 创建单个 Canvas 组件')
            .fontSize(12)
            .width('90%')
          
          Text('• 多次使用不同的字体绘制文本')
            .fontSize(12)
            .fontColor(Color.Blue)
            .width('90%')
          
          Text('• 预期：使用不同的字体风格显示')
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
            .fontSize(11)
            .fontColor(Color.Black)
            .width('100%')
            .lineHeight(18)
        }
        .alignItems(HorizontalAlign.Start)
        .width('100%')
        .padding(10)
        .backgroundColor('#E8F5E9')
        .borderRadius(8)

        Divider()

        Text('Canvas 绘制区域 - 切换字体绘制')
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
            let yPosition = 50;
            
            // 第一次绘制：使用字体1（有效）
            if (this.font1Registered) {
              this.context.font = '30px ' + this.font1Name;
              this.context.fillStyle = '#000000';
              this.context.fillText('第1次：字体1', 40, yPosition);
              
              this.context.font = '11px sans-serif';
              this.context.fillStyle = '#1E90FF';
              this.context.fillText('字体: ' + this.font1Name + ' (有效)', 40, yPosition + 20);
              yPosition += 60;
            }
            
            // 添加分隔线
            this.context.strokeStyle = '#CCCCCC';
            this.context.lineWidth = 1;
            this.context.setLineDash([5, 5]);
            this.context.beginPath();
            this.context.moveTo(30, yPosition);
            this.context.lineTo(370, yPosition);
            this.context.stroke();
            this.context.setLineDash([]);
            yPosition += 30;
            
            // 第二次绘制：切换到字体2（无效，回退到默认）
            this.context.font = '30px ' + this.font2Name;
            this.context.fillStyle = '#FF6600';
            this.context.fillText('第2次：字体2', 40, yPosition);
            
            this.context.font = '11px sans-serif';
            this.context.fillStyle = '#FF6600';
            this.context.fillText('字体: ' + this.font2Name + ' (无效，回退)', 40, yPosition + 20);
            yPosition += 60;
            
            // 添加分隔线
            this.context.strokeStyle = '#CCCCCC';
            this.context.lineWidth = 1;
            this.context.setLineDash([5, 5]);
            this.context.beginPath();
            this.context.moveTo(30, yPosition);
            this.context.lineTo(370, yPosition);
            this.context.stroke();
            this.context.setLineDash([]);
            yPosition += 30;
            
            // 第三次绘制：切换回字体1（有效）
            if (this.font1Registered) {
              this.context.font = '30px ' + this.font1Name;
              this.context.fillStyle = '#006400';
              this.context.fillText('第3次：字体1', 40, yPosition);
              
              this.context.font = '11px sans-serif';
              this.context.fillStyle = '#006400';
              this.context.fillText('字体: ' + this.font1Name + ' (有效)', 40, yPosition + 20);
              yPosition += 60;
            }
            
            // 添加分隔线
            this.context.strokeStyle = '#CCCCCC';
            this.context.lineWidth = 1;
            this.context.setLineDash([5, 5]);
            this.context.beginPath();
            this.context.moveTo(30, yPosition);
            this.context.lineTo(370, yPosition);
            this.context.stroke();
            this.context.setLineDash([]);
            yPosition += 30;
            
            // 第四次绘制：使用系统字体
            this.context.font = '30px sans-serif';
            this.context.fillStyle = '#666666';
            this.context.fillText('第4次：系统字体', 40, yPosition);
            
            this.context.font = '11px sans-serif';
            this.context.fillStyle = '#666666';
            this.context.fillText('字体: sans-serif (系统默认)', 40, yPosition + 20);
            
            // 添加验证说明
            this.context.font = '10px sans-serif';
            this.context.fillStyle = '#999999';
            this.context.fillText('验证：在同一Canvas中多次切换字体', 40, 420);
            this.context.fillText('每次绘制使用不同的字体风格', 40, 435);
          })

        Divider()

        Column({ space: 8 }) {
          Text('📍 验证要点')
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .width('100%')
          
          Text('• 第1次：使用字体1（有效自定义字体）')
            .fontSize(12)
            .width('100%')
          
          Text('• 第2次：切换到字体2（无效，回退到默认）')
            .fontSize(12)
            .width('100%')
          
          Text('• 第3次：切换回字体1（有效自定义字体）')
            .fontSize(12)
            .width('100%')
          
          Text('• 第4次：切换到系统字体（sans-serif）')
            .fontSize(12)
            .width('100%')
          
          Text('• 同一Canvas中可以多次切换字体')
            .fontSize(12)
            .fontColor(Color.Red)
            .fontWeight(FontWeight.Bold)
            .width('100%')
          
          Text('• 每次绘制显示对应的字体风格')
            .fontSize(12)
            .fontColor(Color.Blue)
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
