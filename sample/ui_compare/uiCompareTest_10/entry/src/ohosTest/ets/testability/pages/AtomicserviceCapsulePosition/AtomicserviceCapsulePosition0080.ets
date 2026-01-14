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

import { UIContext } from '@kit.ArkUI';

@Entry
@Component
struct AtomicserviceCapsulePosition0080 {
  @State widthValue: number = 0;
  @State heightValue: number = 0;
  @State errorInfo: string = '';
  @State showOverlay: boolean = false;
  private uiContext: UIContext | null = null;

  aboutToAppear(): void {
    setTimeout(() => {
      this.getCapsuleSize();
    }, 500);
  }

  getCapsuleSize(): void {
    try {
      this.uiContext = this.getUIContext();
      if (this.uiContext) {
        const atomicServiceBar = this.uiContext.getAtomicServiceBar();
        console.info('atomicServiceBar:', atomicServiceBar);
        
        if (atomicServiceBar) {
          const barRect = atomicServiceBar.getBarRect();
          console.info('barRect:', JSON.stringify(barRect));
          
          if (barRect) {
            this.widthValue = Number(barRect.width) || 0;
            this.heightValue = Number(barRect.height) || 0;
            
            if (this.widthValue === 0 && this.heightValue === 0) {
              this.errorInfo = '胶囊宽度、高度全为0，可能胶囊不可见';
            } else {
              this.errorInfo = '';
            }
            console.info('胶囊宽度、高度:', `width:${this.widthValue}, height:${this.heightValue}`);
          } else {
            this.errorInfo = 'getBarRect返回null';
            console.warn('getBarRect返回null');
          }
        } else {
          this.errorInfo = 'AtomicServiceBar不可用，可能不是原子化服务环境';
          console.warn('AtomicServiceBar不可用');
        }
      } else {
        this.errorInfo = 'UIContext未初始化';
        console.error('UIContext未初始化');
      }
    } catch (error) {
      this.errorInfo = `获取胶囊宽度、高度失败: ${error}`;
      console.error('获取胶囊宽度、高度失败:', error);
    }
  }

  build() {
    Stack({ alignContent: Alignment.TopStart }) {
      Column({ space: 20 }) {
        Text('获取胶囊宽度、高度测试')
          .fontSize(24)
          .fontWeight(FontWeight.Bold)
          .margin({ top: 20 })

        Divider()

        Text('获取到的胶囊宽度、高度：')
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .margin({ top: 10 })

        Column({ space: 15 }) {
          Row() {
            Text('宽度(Width):')
              .fontSize(20)
              .fontWeight(FontWeight.Medium)
              .width('40%')
            Text(`${this.widthValue} px`)
              .fontSize(22)
              .fontColor(this.widthValue > 0 ? Color.Blue : Color.Red)
              .fontWeight(FontWeight.Bold)
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
          .padding({ left: 10, right: 10 })

          Row() {
            Text('高度(Height):')
              .fontSize(20)
              .fontWeight(FontWeight.Medium)
              .width('40%')
            Text(`${this.heightValue} px`)
              .fontSize(22)
              .fontColor(this.heightValue > 0 ? Color.Blue : Color.Red)
              .fontWeight(FontWeight.Bold)
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
          .padding({ left: 10, right: 10 })
        }
        .width('100%')
        .padding(20)
        .backgroundColor('#F0F8FF')
        .borderRadius(10)
        .border({ width: 2, color: '#1E90FF', style: BorderStyle.Solid })

        if (this.errorInfo) {
          Column() {
            Text('状态信息：')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .fontColor(Color.Red)
            
            Text(this.errorInfo)
              .fontSize(14)
              .fontColor(Color.Red)
              .margin({ top: 5 })
          }
          .width('100%')
          .padding(15)
          .backgroundColor('#FFE4E1')
          .borderRadius(8)
          .alignItems(HorizontalAlign.Start)
        }

        Divider()

        Row({ space: 10 }) {
          Button('刷新尺寸')
            .fontSize(18)
            .width('48%')
            .height(55)
            .backgroundColor('#4CAF50')
            .onClick(() => {
              console.info('=== 开始刷新宽度、高度 ===');
              this.getCapsuleSize();
              console.info(`刷新后的值: width=${this.widthValue}, height=${this.heightValue}`);
            })

          Button(this.showOverlay ? '隐藏标记' : '显示标记')
            .fontSize(18)
            .width('48%')
            .height(55)
            .backgroundColor(this.showOverlay ? '#FF9800' : '#2196F3')
            .onClick(() => {
              this.showOverlay = !this.showOverlay;
              console.info('showOverlay:', this.showOverlay);
              console.info('宽度、高度:', `width:${this.widthValue}, height:${this.heightValue}`);
            })
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)

        if (this.showOverlay) {
          Text(`✓ 标记框已显示 ${this.widthValue > 0 || this.heightValue > 0 ? '(尺寸: ' + this.widthValue + '×' + this.heightValue + 'px)' : '(测试尺寸: 100×40px)'}`)
            .fontSize(15)
            .fontColor(this.widthValue > 0 || this.heightValue > 0 ? Color.Green : Color.Orange)
            .fontWeight(FontWeight.Bold)
            .textAlign(TextAlign.Center)
            .width('100%')
            .padding(10)
            .backgroundColor(this.widthValue > 0 || this.heightValue > 0 ? '#E8F5E9' : '#FFF3E0')
            .borderRadius(8)
        }

        Divider()

        Column({ space: 10 }) {
          Text('📍 宽度、高度说明')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .width('100%')
          
          Text('• 宽度(Width)：胶囊按钮的水平尺寸')
            .fontSize(14)
            .width('100%')
          
          Text('• 高度(Height)：胶囊按钮的垂直尺寸')
            .fontSize(14)
            .width('100%')
          
          Text('• 典型尺寸：宽度约80-120px，高度约30-40px')
            .fontSize(14)
            .width('100%')
          
          Text('• 测试方法：点击"刷新尺寸"查看数值，点击"显示标记"查看尺寸标记框')
            .fontSize(14)
            .width('100%')
        }
        .alignItems(HorizontalAlign.Start)
        .width('100%')
        .padding(15)
        .backgroundColor('#FFF9C4')
        .borderRadius(8)
      }
      .width('100%')
      .height('100%')
      .padding(20)
      .backgroundColor(Color.White)

      if (this.showOverlay) {
        if (this.widthValue > 0 && this.heightValue > 0) {
          Column()
            .width(this.widthValue)
            .height(this.heightValue)
            .backgroundColor('rgba(255, 0, 0, 0.3)')
            .border({ width: 3, color: Color.Red, style: BorderStyle.Solid })
            .position({ x: 50, y: 150 })
            .zIndex(999)
          
          Text(`${this.widthValue}×${this.heightValue}px`)
            .fontSize(14)
            .fontColor(Color.White)
            .backgroundColor(Color.Red)
            .padding(5)
            .position({ x: 50, y: 150 + this.heightValue + 5 })
            .zIndex(999)
        } else {
          Column()
            .width(100)
            .height(40)
            .backgroundColor('rgba(255, 0, 0, 0.3)')
            .border({ width: 3, color: Color.Red, style: BorderStyle.Solid })
            .position({ x: 50, y: 150 })
            .zIndex(999)
          
          Text('测试标记框 100×40px')
            .fontSize(12)
            .fontColor(Color.White)
            .backgroundColor(Color.Red)
            .padding(5)
            .position({ x: 50, y: 195 })
            .zIndex(999)
        }
      }
    }
    .width('100%')
    .height('100%')
  }
}

