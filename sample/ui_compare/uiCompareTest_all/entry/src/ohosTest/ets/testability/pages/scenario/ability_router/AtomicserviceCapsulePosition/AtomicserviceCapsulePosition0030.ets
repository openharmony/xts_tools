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
struct AtomicserviceCapsulePosition0030 {
  @State xPosition: number = 0;
  @State errorInfo: string = '';
  @State showOverlay: boolean = false;
  private uiContext: UIContext | null = null;

  aboutToAppear(): void {
    setTimeout(() => {
      this.getCapsuleXPosition();
    }, 500);
  }

  getCapsuleXPosition(): void {
    try {
      this.uiContext = this.getUIContext();
      if (this.uiContext) {
        const atomicServiceBar = this.uiContext.getAtomicServiceBar();
        console.info('atomicServiceBar:', atomicServiceBar);
        
        if (atomicServiceBar) {
          const barRect = atomicServiceBar.getBarRect();
          console.info('barRect:', JSON.stringify(barRect));
          
          if (barRect) {
            this.xPosition = Number(barRect.x) || 0;
            
            if (this.xPosition === 0) {
              this.errorInfo = '胶囊X坐标为0，可能胶囊不可见';
            } else {
              this.errorInfo = '';
            }
            console.info('胶囊X坐标:', this.xPosition);
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
      this.errorInfo = `获取胶囊X坐标失败: ${error}`;
      console.error('获取胶囊X坐标失败:', error);
    }
  }

  build() {
    Stack({ alignContent: Alignment.TopStart }) {
      Column({ space: 20 }) {
        Text('获取胶囊X坐标测试')
          .fontSize(24)
          .fontWeight(FontWeight.Bold)
          .margin({ top: 20 })

        Divider()

        Text('获取到的胶囊X坐标：')
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .margin({ top: 10 })

        Column({ space: 15 }) {
          Row() {
            Text('X坐标:')
              .fontSize(22)
              .fontWeight(FontWeight.Medium)
              .width('35%')
            Text(`${this.xPosition} px`)
              .fontSize(26)
              .fontColor(this.xPosition > 0 ? Color.Blue : Color.Red)
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
          Button('刷新X坐标')
            .fontSize(18)
            .width('48%')
            .height(55)
            .backgroundColor('#4CAF50')
            .onClick(() => {
              console.info('=== 开始刷新X坐标 ===');
              this.getCapsuleXPosition();
              console.info(`刷新后的X值: ${this.xPosition}`);
            })

          Button(this.showOverlay ? '隐藏标记' : '显示标记')
            .fontSize(18)
            .width('48%')
            .height(55)
            .backgroundColor(this.showOverlay ? '#FF9800' : '#2196F3')
            .onClick(() => {
              this.showOverlay = !this.showOverlay;
              console.info('showOverlay:', this.showOverlay);
              console.info('X坐标:', this.xPosition);
            })
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)

        if (this.showOverlay) {
          Text(`✓ 标记线已显示 ${this.xPosition > 0 ? '(位置: X=' + this.xPosition + ')' : '(测试位置: X=100)'}`)
            .fontSize(15)
            .fontColor(this.xPosition > 0 ? Color.Green : Color.Orange)
            .fontWeight(FontWeight.Bold)
            .textAlign(TextAlign.Center)
            .width('100%')
            .padding(10)
            .backgroundColor(this.xPosition > 0 ? '#E8F5E9' : '#FFF3E0')
            .borderRadius(8)
        }

        Divider()

        Column({ space: 10 }) {
          Text('📍 X坐标说明')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .width('100%')
          
          Text('• X坐标：胶囊距离屏幕左边缘的水平距离')
            .fontSize(14)
            .width('100%')
          
          Text('• 典型值：接近屏幕右边缘（例如：屏幕宽度 - 100px）')
            .fontSize(14)
            .width('100%')
          
          Text('• 测试方法：点击"刷新X坐标"查看数值，点击"显示标记"查看垂直标记线')
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
        if (this.xPosition > 0) {
          Line()
            .width(3)
            .height('100%')
            .stroke(Color.Red)
            .strokeWidth(3)
            .position({ x: this.xPosition, y: 0 })
            .zIndex(999)
          
          Text(`X=${this.xPosition}`)
            .fontSize(14)
            .fontColor(Color.White)
            .backgroundColor(Color.Red)
            .padding(5)
            .position({ x: this.xPosition - 30, y: 100 })
            .zIndex(999)
        } else {
          Line()
            .width(3)
            .height('100%')
            .stroke(Color.Red)
            .strokeWidth(3)
            .position({ x: 100, y: 0 })
            .zIndex(999)
          
          Text('测试标记线 X=100')
            .fontSize(12)
            .fontColor(Color.White)
            .backgroundColor(Color.Red)
            .padding(5)
            .position({ x: 50, y: 100 })
            .zIndex(999)
        }
      }
    }
    .width('100%')
    .height('100%')
  }
}

