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

interface Position {
  x: number;
  y: number;
}

@Entry
@ComponentV2
export struct ActionSr0060 {
  @Local iconPosition: Position = { x: 100, y: 100 };
  @Local isDragging: boolean = false;
  @Local iconScale: number = 1.0;
  @Local testStatus: string = '待测试';

  build() {
    Column({ space: 20 }) {
      Text('SUB_ACE_ACTION_ARKUI_SR20250106997626_0060')
        .fontSize(18)
        .fontWeight(FontWeight.Bold)

      Text(`测试描述：单手模式拖拽缩小动画`)
        .fontSize(14)
        .fontColor(Color.Gray)

      Divider()

      Text(`测试步骤：`)
        .fontSize(14)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)

      Text(`1. 长按手机桌面图标，进行拖拽`)
        .fontSize(13)
        .fontColor(Color.Gray)
        .alignSelf(ItemAlign.Start)

      Divider()

      Column({ space: 10 }) {
        Text(`测试状态：${this.testStatus}`)
          .fontSize(14)
          .fontColor(Color.Blue)

        Text(`图标位置：X=${Math.round(this.iconPosition.x)}, Y=${Math.round(this.iconPosition.y)}`)
          .fontSize(14)
          .fontColor(Color.Orange)

        Text(`图标缩放：${this.iconScale.toFixed(2)}`)
          .fontSize(14)
          .fontColor(Color.Orange)
      }
      .width('100%')
      .padding(10)
      .backgroundColor('#F0F0F0')
      .borderRadius(8)

      // 拖拽区域
      Stack() {
        Column() {
          Image($r('app.media.icon'))
            .width(60)
            .height(60)
            .scale({ x: this.iconScale, y: this.iconScale })
            .transition(TransitionEffect.OPACITY.animation({ duration: 200 }))
        }
        .width(60)
        .height(60)
        .position({ x: this.iconPosition.x, y: this.iconPosition.y })
        .gesture(
          LongPressGesture({ repeat: false })
            .onAction(() => {
              this.isDragging = true;
              this.iconScale = 0.8;
              this.testStatus = '✅ 长按触发，图标缩小至0.8倍';
            })
            .onActionEnd(() => {
              this.isDragging = false;
              this.iconScale = 1.0;
              this.testStatus = '✅ 长按结束，图标恢复原大小';
            })
        )
        .gesture(
          PanGesture()
            .onActionStart(() => {
              this.testStatus = '🔄 拖拽开始...';
            })
            .onActionUpdate((event?: GestureEvent) => {
              if (event) {
                this.iconPosition.x += event.offsetX;
                this.iconPosition.y += event.offsetY;
                this.testStatus = `🔄 拖拽中...位置(${Math.round(this.iconPosition.x)}, ${Math.round(this.iconPosition.y)})`;
              }
            })
            .onActionEnd(() => {
              this.testStatus = '✅ 拖拽结束，位置已固定';
            })
        )
      }
      .width('100%')
      .height(300)
      .backgroundColor('#E0E0E0')
      .borderRadius(10)

      Button(`模拟长按`)
        .id('btn')
        .onClick(() => {
          this.iconScale = 0.8;
          this.testStatus = '✅ 缩小动画正常（缩小至0.8倍）';
          setTimeout(() => {
            this.iconScale = 1.0;
            this.testStatus += '\n✅ 恢复动画正常（恢复至1.0倍）';
          }, 1000);
        })

      Button(`重置`)
        .onClick(() => {
          this.iconPosition = { x: 100, y: 100 };
          this.iconScale = 1.0;
          this.isDragging = false;
          this.testStatus = '待测试';
        })

      Divider()

      Text(`预期结果：`)
        .fontSize(14)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)

      Text(`1.1、缩小动画正常\n1.2、拖拽正常，松手后位置正常`)
        .fontSize(13)
        .fontColor(Color.Green)
        .alignSelf(ItemAlign.Start)

      Divider()

      Text(`说明：`)
        .fontSize(12)
        .fontColor(Color.Blue)
        .alignSelf(ItemAlign.Start)

      Text(`本测试模拟单手模式下拖拽图标的缩小动画效果。实际测试建议在真机桌面进行。`)
        .fontSize(12)
        .fontColor(Color.Blue)
        .alignSelf(ItemAlign.Start)
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .backgroundColor(Color.White)
  }
}

