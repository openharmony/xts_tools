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
struct CanvasCustomFont0040 {
  private settings: RenderingContextSettings = new RenderingContextSettings(true);
  private context: CanvasRenderingContext2D = new CanvasRenderingContext2D(this.settings);
  @State validFontRegistered: boolean = false;
  @State invalidFontRegistered: boolean = false;
  @State registrationStatus: string = '正在注册字体...';
  @State validFontFamily: string = 'ValidTestFont';
  @State invalidFontFamily: string = 'InvalidTestFont';

  aboutToAppear() {
    this.registerMultipleFonts();
  }

  registerMultipleFonts() {
    let statusMessages: string[] = [];
    
    // 先注册有效字体
    try {
      font.registerFont({
        familyName: this.validFontFamily,
        familySrc: 'fonts/HarmonyOS_Sans_SC_Medium.ttf'
      });
      this.validFontRegistered = true;
      statusMessages.push('✅ 有效字体注册成功: ' + this.validFontFamily);
      console.info('[CanvasCustomFont0040] Valid font registered: ' + this.validFontFamily);
    } catch (error) {
      this.validFontRegistered = false;
      statusMessages.push('❌ 有效字体注册失败: ' + this.validFontFamily);
      console.error('[CanvasCustomFont0040] Valid font registration failed: ' + JSON.stringify(error));
    }
    
    // 再注册无效字体
    try {
      font.registerFont({
        familyName: this.invalidFontFamily,
        familySrc: 'fonts/invalid_path/nonexistent.ttf'
      });
      this.invalidFontRegistered = true;
      statusMessages.push('⚠️ 无效字体注册成功（异常）: ' + this.invalidFontFamily);
      console.info('[CanvasCustomFont0040] Invalid font registered: ' + this.invalidFontFamily);
    } catch (error) {
      this.invalidFontRegistered = false;
      statusMessages.push('✅ 无效字体注册失败（预期）: ' + this.invalidFontFamily);
      console.error('[CanvasCustomFont0040] Invalid font registration failed: ' + JSON.stringify(error));
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
          
          Text('• 指定字体，有效值在无效值前面')
            .fontSize(12)
            .fontColor(Color.Blue)
            .width('90%')
          
          Text('• 有效字体：' + this.validFontFamily + ' (先注册)')
            .fontSize(12)
            .width('90%')
          
          Text('• 无效字体：' + this.invalidFontFamily + ' (后注册)')
            .fontSize(12)
            .width('90%')
          
          Text('• 预期：使用指定字体显示')
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

        Text('Canvas 绘制区域')
          .fontSize(16)
          .fontWeight(FontWeight.Medium)
          .width('90%')

        Canvas(this.context)
          .width('95%')
          .height(400)
          .backgroundColor('#F5F5F5')
          .border({ width: 2, color: '#1E90FF', style: BorderStyle.Solid })
          .borderRadius(8)
          .onReady(() => {
            // 使用有效字体（在前面注册）
            if (this.validFontRegistered) {
              this.context.font = '35px ' + this.validFontFamily;
              this.context.fillStyle = '#000000';
              this.context.fillText('有效字体测试', 40, 50);
              this.context.fillText('Valid Font Test', 40, 95);
              
              this.context.font = '12px sans-serif';
              this.context.fillStyle = '#1E90FF';
              this.context.fillText('字体: ' + this.validFontFamily + ' (有效，先注册)', 40, 117);
            } else {
              this.context.font = '35px sans-serif';
              this.context.fillStyle = '#FF0000';
              this.context.fillText('有效字体注册失败', 40, 50);
            }
            
            // 添加分隔线
            this.context.strokeStyle = '#CCCCCC';
            this.context.lineWidth = 1;
            this.context.setLineDash([5, 5]);
            this.context.beginPath();
            this.context.moveTo(30, 140);
            this.context.lineTo(370, 140);
            this.context.stroke();
            this.context.setLineDash([]);
            
            // 尝试使用无效字体（在后面注册）
            this.context.font = '35px ' + this.invalidFontFamily;
            this.context.fillStyle = '#FF6600';
            this.context.fillText('无效字体测试', 40, 190);
            this.context.fillText('Invalid Font Test', 40, 235);
            
            this.context.font = '12px sans-serif';
            this.context.fillStyle = '#FF6600';
            this.context.fillText('字体: ' + this.invalidFontFamily + ' (无效，后注册)', 40, 257);
            
            // 添加验证说明
            this.context.font = '11px sans-serif';
            this.context.fillStyle = '#666666';
            this.context.fillText('验证：上方使用有效字体（先注册）', 40, 310);
            this.context.fillText('下方尝试使用无效字体（后注册）', 40, 325);
            this.context.fillText('有效字体应正常显示，无效字体回退到默认', 40, 340);
          })

        Divider()

        Column({ space: 8 }) {
          Text('📍 验证要点')
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .width('100%')
          
          Text('• 黑色文本：使用有效字体（先注册）')
            .fontSize(12)
            .width('100%')
          
          Text('• 橙色文本：尝试使用无效字体（后注册）')
            .fontSize(12)
            .width('100%')
          
          Text('• 有效字体应正常显示自定义字体效果')
            .fontSize(12)
            .fontColor(Color.Red)
            .fontWeight(FontWeight.Bold)
            .width('100%')
          
          Text('• 无效字体应回退到系统默认字体')
            .fontSize(12)
            .width('100%')
          
          Text('• 注册顺序：有效在前，无效在后')
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
