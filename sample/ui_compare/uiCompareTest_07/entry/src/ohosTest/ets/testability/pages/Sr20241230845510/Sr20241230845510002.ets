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
struct Sr20241230845510002 {
  @State animationAngle: number = 0;
  @State animationScale: number = 1.0;
  @State animationOpacity: number = 1.0;
  @State isAnimationRunning: boolean = false;
  private animationTimer: number = -1;

  aboutToAppear(): void {
    // 页面加载时启动动效
    this.startAnimation();
  }

  aboutToDisappear(): void {
    // 页面销毁时清理定时器
    this.stopAnimation();
  }

  // 启动动效
  startAnimation(): void {
    if (!this.isAnimationRunning) {
      this.isAnimationRunning = true;
      console.log('[Animation] Symbol animation started - 动效启动');
      
      this.animationTimer = setInterval(() => {
        this.animationAngle = (this.animationAngle + 10) % 360;
        this.animationScale = 1.0 + 0.2 * Math.sin(this.animationAngle * Math.PI / 180);
        this.animationOpacity = 0.7 + 0.3 * Math.cos(this.animationAngle * Math.PI / 180);
      }, 50);
    }
  }

  // 停止动效
  stopAnimation(): void {
    if (this.isAnimationRunning) {
      this.isAnimationRunning = false;
      console.log('[Animation] Symbol animation stopped - 动效停止');
      
      if (this.animationTimer !== -1) {
        clearInterval(this.animationTimer);
        this.animationTimer = -1;
      }
      
      // 重置动效状态
      this.animationAngle = 0;
      this.animationScale = 1.0;
      this.animationOpacity = 1.0;
    }
  }

  build() {
    Scroll() {
      Column() {
        // 顶部占位区域
        Column() {
          Text('测试上下滑动页面')
            .fontSize(24)
            .fontWeight(FontWeight.Bold)
            .margin({ top: 30, bottom: 20 })
            .id('text_title_sr20241230845510_002')

          Text('观察symbol图标动效启停机制')
            .fontSize(16)
            .fontColor(Color.Gray)
            .margin({ bottom: 30 })
            .id('text_subtitle_sr20241230845510_002')

          // 填充内容，使页面可以滚动
          ForEach([0, 1, 2, 3, 4, 5, 6, 7, 8, 9], (index: number) => {
            Row() {
              Text(`滑动内容区域 ${index + 1}`)
                .fontSize(18)
                .fontWeight(FontWeight.Medium)
              
              Blank()
              
              Text(`Item ${index + 1}`)
                .fontSize(14)
                .fontColor(Color.Blue)
            }
            .width('90%')
            .height(60)
            .padding({ left: 20, right: 20 })
            .backgroundColor('#F8F9FA')
            .borderRadius(8)
            .margin({ bottom: 10 })
            .id(`content_item_${index}_sr20241230845510_002`)
          })
        }
        .width('100%')
        .padding({ left: 16, right: 16 })

        // Symbol图标动效区域
        Column() {
          Text('Symbol动效区域')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .margin({ top: 40, bottom: 30 })
            .id('text_animation_title_sr20241230845510_002')

          // Symbol图标容器
          Row() {
            // 旋转动效Symbol
            Column() {
              Text('🔄')
                .fontSize(48)
                .rotate({ angle: this.animationAngle })
                .animation({
                  duration: 50,
                  curve: Curve.Linear
                })
              
              Text('旋转动效')
                .fontSize(12)
                .margin({ top: 10 })
            }
            .margin({ right: 30 })

            // 缩放动效Symbol
            Column() {
              Text('⭐')
                .fontSize(48)
                .scale({ x: this.animationScale, y: this.animationScale })
                .animation({
                  duration: 50,
                  curve: Curve.EaseInOut
                })
              
              Text('缩放动效')
                .fontSize(12)
                .margin({ top: 10 })
            }
            .margin({ right: 30 })

            // 透明度动效Symbol
            Column() {
              Text('💫')
                .fontSize(48)
                .opacity(this.animationOpacity)
                .animation({
                  duration: 50,
                  curve: Curve.EaseInOut
                })
              
              Text('透明度动效')
                .fontSize(12)
                .margin({ top: 10 })
            }
          }
          .justifyContent(FlexAlign.Center)
          .width('100%')
          .height(120)
          .backgroundColor('#E3F2FD')
          .borderRadius(16)
          .padding(20)
          .id('symbol_animation_container_sr20241230845510_002')

          // 动效状态显示
          Text(`动效状态: ${this.isAnimationRunning ? '运行中' : '已停止'}`)
            .fontSize(16)
            .fontColor(this.isAnimationRunning ? Color.Green : Color.Red)
            .margin({ top: 20 })
            .id('animation_status_sr20241230845510_002')

          // 手动控制按钮（用于测试）
          Row() {
            Button('启动动效')
              .id('button_start_animation_sr20241230845510_002')
              .fontSize(14)
              .width(100)
              .height(40)
              .margin({ right: 10 })
              .onClick(() => {
                this.startAnimation();
              })

            Button('停止动效')
              .id('button_stop_animation_sr20241230845510_002')
              .fontSize(14)
              .width(100)
              .height(40)
              .onClick(() => {
                this.stopAnimation();
              })
          }
          .margin({ top: 20 })
        }
        .width('100%')
        .padding({ left: 16, right: 16 })

        // 底部占位区域
        Column() {
          ForEach([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], (index: number) => {
            Row() {
              Text(`底部内容区域 ${index + 1}`)
                .fontSize(18)
                .fontWeight(FontWeight.Medium)
              
              Blank()
              
              Text(`Bottom ${index + 1}`)
                .fontSize(14)
                .fontColor(Color.Orange)
            }
            .width('90%')
            .height(60)
            .padding({ left: 20, right: 20 })
            .backgroundColor('#FFF3E0')
            .borderRadius(8)
            .margin({ bottom: 10 })
            .id(`bottom_item_${index}_sr20241230845510_002`)
          })
        }
        .width('100%')
        .padding({ left: 16, right: 16, top: 40, bottom: 40 })
      }
    }
    .id('scroll_container_sr20241230845510_002')
    .width('100%')
    .height('100%')
    .scrollBar(BarState.Auto)
    .onScrollFrameBegin((offset: number, state: ScrollState) => {
      // 监听滚动事件，根据Symbol图标是否可见来控制动效
      // 这里可以根据实际需求添加可见性检测逻辑
      console.log(`[Scroll] Scroll offset: ${offset}, state: ${state}`);
      return { offsetRemain: offset };
    })
  }
}
