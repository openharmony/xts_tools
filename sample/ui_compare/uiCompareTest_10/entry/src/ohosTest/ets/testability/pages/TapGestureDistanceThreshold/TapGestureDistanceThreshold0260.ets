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
struct TapGestureDistanceThreshold0260 {
  @State tapCount: number = 0;
  @State testStatus: string = '等待测试';
  @State testResult: string = '';
  @State touchStartX: number = 0;
  @State touchStartY: number = 0;
  @State touchEndX: number = 0;
  @State touchEndY: number = 0;
  @State moveDistance: number = 0;
  @State isStartOutside: boolean = false; // 标记是否从外部开始
  @State buttonTop: number = 0; // 按钮的顶部位置
  @State buttonBottom: number = 0; // 按钮的底部位置
  @State buttonLeft: number = 0; // 按钮的左侧位置
  @State buttonRight: number = 0; // 按钮的右侧位置
  private distanceThreshold: number = 300; // 设置为300vp，大于组件区域（按钮宽度约216vp，高度180vp）

  // 计算移动距离
  calculateDistance(startX: number, startY: number, endX: number, endY: number): number {
    const dx = endX - startX;
    const dy = endY - startY;
    return Math.sqrt(dx * dx + dy * dy);
  }

  // 判断点是否在按钮内
  isPointInsideButton(x: number, y: number): boolean {
    return x >= this.buttonLeft && x <= this.buttonRight &&
           y >= this.buttonTop && y <= this.buttonBottom;
  }

  build() {
    Column() {
      // 标题栏
      Row() {
        Text('TapGesture distanceThreshold 测试')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .fontColor('#FFFFFF')
      }
      .width('100%')
      .height(56)
      .backgroundColor('#2196F3')
      .justifyContent(FlexAlign.Center)

      Scroll() {
        Column({ space: 20 }) {
          // 测试说明
          Column() {
            Text('测试说明')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .margin({ bottom: 10 })
              .alignSelf(ItemAlign.Start)

            Text('本测试用例验证TapGesture的distanceThreshold阈值大于组件区域时，手指从组件外滑入组件内，移动距离在阈值内不触发点击事件')
              .fontSize(12)
              .fontColor('#666666')
              .margin({ bottom: 10 })

            Column() {
              Text('测试步骤:')
                .fontSize(13)
                .fontWeight(FontWeight.Medium)
                .fontColor('#333333')
                .alignSelf(ItemAlign.Start)
                .margin({ bottom: 5 })

              Text('1. 打开demo，设置distanceThreshold为300vp（大于组件区域）')
                .fontSize(12)
                .fontColor('#666666')
                .alignSelf(ItemAlign.Start)
                .margin({ left: 10, bottom: 3 })

              Text('2. 手指从组件外滑入组件内，手指落下至抬起的移动距离在distanceThreshold阈值内')
                .fontSize(12)
                .fontColor('#666666')
                .alignSelf(ItemAlign.Start)
                .margin({ left: 10 })
            }
            .width('100%')
            .padding(10)
            .backgroundColor('#FFF3E0')
            .borderRadius(8)
            .margin({ bottom: 10 })

            Column() {
              Text('预期结果:')
                .fontSize(13)
                .fontWeight(FontWeight.Medium)
                .fontColor('#333333')
                .alignSelf(ItemAlign.Start)
                .margin({ bottom: 5 })

              Text('✓ 不触发点击事件')
                .fontSize(12)
                .fontColor('#4CAF50')
                .alignSelf(ItemAlign.Start)
                .margin({ left: 10 })
            }
            .width('100%')
            .padding(10)
            .backgroundColor('#E8F5E9')
            .borderRadius(8)
          }
          .width('90%')
          .padding(15)
          .backgroundColor('#FFFFFF')
          .borderRadius(12)
          .shadow({ radius: 8, color: '#1F000000', offsetX: 0, offsetY: 2 })

          // 配置信息
          Column() {
            Text('配置信息')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .margin({ bottom: 10 })
              .alignSelf(ItemAlign.Start)

            Row() {
              Text('distanceThreshold: ')
                .fontSize(14)
                .fontColor('#666666')
              Text('300 vp')
                .fontSize(14)
                .fontWeight(FontWeight.Bold)
                .fontColor('#2196F3')
            }
            .width('100%')

            Row() {
              Text('组件区域: ')
                .fontSize(14)
                .fontColor('#666666')
              Text('约 216vp × 180vp')
                .fontSize(14)
                .fontWeight(FontWeight.Bold)
                .fontColor('#9C27B0')
            }
            .width('100%')

            Row() {
              Text('测试操作: ')
                .fontSize(14)
                .fontColor('#666666')
              Text('外→内，距离 < 300vp')
                .fontSize(14)
                .fontWeight(FontWeight.Bold)
                .fontColor('#FF5722')
            }
            .width('100%')

            Row() {
              Text('特殊说明: ')
                .fontSize(14)
                .fontColor('#666666')
              Text('从灰色区域滑入蓝色区域，在蓝色区域抬起')
                .fontSize(12)
                .fontColor('#FF9800')
                .layoutWeight(1)
            }
            .width('100%')
            .margin({ top: 10 })
          }
          .width('90%')
          .padding(15)
          .backgroundColor('#FFFFFF')
          .borderRadius(12)
          .shadow({ radius: 8, color: '#1F000000', offsetX: 0, offsetY: 2 })

          // 实时状态
          Column() {
            Text('实时状态')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .margin({ bottom: 10 })
              .alignSelf(ItemAlign.Start)

            Row() {
              Text('点击次数: ')
                .fontSize(14)
                .fontColor('#666666')
              Text(`${this.tapCount}`)
                .fontSize(18)
                .fontWeight(FontWeight.Bold)
                .fontColor(this.tapCount > 0 ? '#F44336' : '#4CAF50')
            }
            .width('100%')
            .margin({ bottom: 8 })

            Row() {
              Text('移动距离: ')
                .fontSize(14)
                .fontColor('#666666')
              Text(`${this.moveDistance.toFixed(2)} vp`)
                .fontSize(14)
                .fontWeight(FontWeight.Bold)
                .fontColor('#2196F3')
            }
            .width('100%')
            .margin({ bottom: 8 })

            Row() {
              Text('距离阈值: ')
                .fontSize(14)
                .fontColor('#666666')
              Text(`${this.distanceThreshold} vp`)
                .fontSize(14)
                .fontWeight(FontWeight.Bold)
                .fontColor('#9C27B0')
            }
            .width('100%')
            .margin({ bottom: 8 })

            Row() {
              Text('测试状态: ')
                .fontSize(14)
                .fontColor('#666666')
              Text(this.testStatus)
                .fontSize(14)
                .fontWeight(FontWeight.Bold)
                .fontColor(
                  this.testStatus.includes('✓') ? '#4CAF50' :
                  this.testStatus.includes('❌') ? '#F44336' :
                  this.testStatus.includes('⚠') ? '#FF9800' : '#666666'
                )
            }
            .width('100%')
            .margin({ bottom: 8 })

            if (this.testResult) {
              Text(this.testResult)
                .fontSize(12)
                .fontColor(
                  this.testResult.includes('✓') ? '#4CAF50' :
                  this.testResult.includes('❌') ? '#F44336' : '#FF9800'
                )
                .width('100%')
                .margin({ top: 10 })
            }
          }
          .width('90%')
          .padding(15)
          .backgroundColor('#FFFFFF')
          .borderRadius(12)
          .shadow({ radius: 8, color: '#1F000000', offsetX: 0, offsetY: 2 })

          // 测试按钮区域
          Column() {
            Text('操作区域')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .margin({ bottom: 10 })
              .alignSelf(ItemAlign.Start)

            Text('蓝色区域 = 组件内区域')
              .fontSize(12)
              .fontColor('#666666')
              .margin({ bottom: 5 })

            Text('灰色区域 = 组件外区域')
              .fontSize(12)
              .fontColor('#666666')
              .margin({ bottom: 15 })

            // 外部容器
            Column() {
              Column() {
                Text('测试按钮')
                  .fontSize(18)
                  .fontWeight(FontWeight.Bold)
                  .fontColor('#FFFFFF')
                  .margin({ bottom: 10 })

                Text('请从灰色区域滑入蓝色区域（<300vp）')
                  .fontSize(14)
                  .fontColor('#E3F2FD')
                  .margin({ bottom: 5 })

                Text(`当前点击次数: ${this.tapCount}`)
                  .fontSize(14)
                  .fontColor(this.tapCount > 0 ? '#FFCDD2' : '#C8E6C9')
                  .fontWeight(FontWeight.Medium)
              }
              .id('test_button')
              .width('60%')
              .height(180)
              .backgroundColor('#2196F3')
              .borderRadius(12)
              .justifyContent(FlexAlign.Center)
              .onTouch((event: TouchEvent) => {
                // 按钮内的触摸事件也需要处理
                const globalX = event.touches[0].displayX;
                const globalY = event.touches[0].displayY;

                console.info(`[TapGestureDistanceThreshold0260] Button onTouch: type=${event.type}, at (${globalX}, ${globalY})`);

                if (event.type === TouchType.Move) {
                  // 处理移动到按钮内的情况
                  const isNowInside = this.isPointInsideButton(globalX, globalY);
                  if (this.isStartOutside && isNowInside) {
                    this.testStatus = `✓ 已滑入组件内(${globalX.toFixed(0)}, ${globalY.toFixed(0)})，请抬起...`;
                    console.info(`[TapGestureDistanceThreshold0260] Button TouchMove: Moved inside at (${globalX}, ${globalY}), Button area: (${this.buttonLeft}, ${this.buttonTop}) to (${this.buttonRight}, ${this.buttonBottom})`);
                  }
                } else if (event.type === TouchType.Up) {
                  this.touchEndX = globalX;
                  this.touchEndY = globalY;
                  this.moveDistance = this.calculateDistance(
                    this.touchStartX,
                    this.touchStartY,
                    this.touchEndX,
                    this.touchEndY
                  );

                  const isEndInside = this.isPointInsideButton(globalX, globalY);

                  console.info(`[TapGestureDistanceThreshold0260] Button TouchUp at (${globalX}, ${globalY}), 移动距离: ${this.moveDistance.toFixed(2)}vp, 起点在外: ${this.isStartOutside}, 终点在内: ${isEndInside}, touchStart: (${this.touchStartX}, ${this.touchStartY}), Button area: (${this.buttonLeft}, ${this.buttonTop}) to (${this.buttonRight}, ${this.buttonBottom})`);

                  // 立即处理结果判断
                  if (!this.isStartOutside) {
                    this.testStatus = '⚠️ 测试无效：起点必须在组件外';
                    this.testResult = `⚠️ 请重新测试：确保从灰色区域（组件外）开始滑动`;
                  } else if (!isEndInside) {
                    this.testStatus = '⚠️ 测试无效：终点必须在组件内';
                    this.testResult = `⚠️ 请重新测试：确保在蓝色区域（组件内）抬起`;
                  } else if (this.moveDistance >= this.distanceThreshold) {
                    this.testStatus = '⚠️ 移动距离超出阈值';
                    this.testResult = `⚠️ 移动距离${this.moveDistance.toFixed(2)}vp ≥ ${this.distanceThreshold}vp，请重新测试并保持移动距离在阈值内`;
                  } else {
                    // 有效的测试 - 延迟检查点击事件
                    this.testStatus = '⏳ 检测中，等待点击事件判断...';
                    setTimeout(() => {
                      if (this.tapCount === 0) {
                        this.testStatus = '✓✓✓ 测试通过！';
                        this.testResult = `✓ 测试成功：从组件外滑入组件内（距离${this.moveDistance.toFixed(2)}vp < ${this.distanceThreshold}vp），未触发点击事件`;
                        console.info(`[TapGestureDistanceThreshold0260] 测试通过：外→内，未触发点击`);
                      } else {
                        this.testStatus = '❌ 测试失败';
                        this.testResult = `❌ 测试失败：从组件外滑入组件内时不应触发点击事件，但触发了${this.tapCount}次`;
                        console.error(`[TapGestureDistanceThreshold0260] 测试失败：触发了点击`);
                      }
                    }, 150);
                  }
                }
              })
              .onAreaChange((oldArea: Area, newArea: Area) => {
                this.buttonLeft = newArea.globalPosition.x as number;
                this.buttonTop = newArea.globalPosition.y as number;
                this.buttonRight = this.buttonLeft + (newArea.width as number);
                this.buttonBottom = this.buttonTop + (newArea.height as number);
                console.info(`[TapGestureDistanceThreshold0260] Button global area: (${this.buttonLeft.toFixed(0)}, ${this.buttonTop.toFixed(0)}) to (${this.buttonRight.toFixed(0)}, ${this.buttonBottom.toFixed(0)})`);
              })
            }
            .width('90%')
            .height(300)
            .backgroundColor('#E0E0E0')
            .borderRadius(12)
            .justifyContent(FlexAlign.Center)
            .onTouch((event: TouchEvent) => {
              const globalX = event.touches[0].displayX;
              const globalY = event.touches[0].displayY;

              if (event.type === TouchType.Down) {
                this.touchStartX = globalX;
                this.touchStartY = globalY;
                this.isStartOutside = !this.isPointInsideButton(globalX, globalY);

                if (this.isStartOutside) {
                  this.testStatus = `✓ 按下在组件外(${globalX.toFixed(0)}, ${globalY.toFixed(0)})，请向内滑动...`;
                  console.info(`[TapGestureDistanceThreshold0260] Outer TouchDown OUTSIDE button at (${globalX}, ${globalY})`);
                } else {
                  this.testStatus = `⚠ 按下在组件内(${globalX.toFixed(0)}, ${globalY.toFixed(0)})，请重新从外部开始`;
                  console.warn(`[TapGestureDistanceThreshold0260] Outer TouchDown INSIDE button at (${globalX}, ${globalY})`);
                }
              } else if (event.type === TouchType.Move) {
                const isNowInside = this.isPointInsideButton(globalX, globalY);
                if (this.isStartOutside && isNowInside) {
                  this.testStatus = `✓ 已滑入组件内(${globalX.toFixed(0)}, ${globalY.toFixed(0)})，请抬起...`;
                  console.info(`[TapGestureDistanceThreshold0260] Outer TouchMove: Moved inside at (${globalX}, ${globalY})`);
                }
              } else if (event.type === TouchType.Up) {
                const isEndInside = this.isPointInsideButton(globalX, globalY);

                console.info(`[TapGestureDistanceThreshold0260] Outer TouchUp at (${globalX}, ${globalY}), 起点在外: ${this.isStartOutside}, 终点在内: ${isEndInside}`);

                // 如果终点在组件内，按钮的onTouch不会收到TouchUp（因为TouchDown不在按钮内）
                // 所以需要在这里手动处理
                if (isEndInside) {
                  console.info(`[TapGestureDistanceThreshold0260] Outer TouchUp: 终点在组件内，手动处理结果判断`);
                  
                  this.touchEndX = globalX;
                  this.touchEndY = globalY;
                  this.moveDistance = this.calculateDistance(
                    this.touchStartX,
                    this.touchStartY,
                    this.touchEndX,
                    this.touchEndY
                  );

                  console.info(`[TapGestureDistanceThreshold0260] Outer TouchUp: 移动距离=${this.moveDistance.toFixed(2)}vp, touchStart=(${this.touchStartX}, ${this.touchStartY})`);

                  // 立即处理结果判断
                  if (!this.isStartOutside) {
                    this.testStatus = '⚠️ 测试无效：起点必须在组件外';
                    this.testResult = `⚠️ 请重新测试：确保从灰色区域（组件外）开始滑动`;
                  } else if (this.moveDistance >= this.distanceThreshold) {
                    this.testStatus = '⚠️ 移动距离超出阈值';
                    this.testResult = `⚠️ 移动距离${this.moveDistance.toFixed(2)}vp ≥ ${this.distanceThreshold}vp，请重新测试并保持移动距离在阈值内`;
                  } else {
                    // 有效的测试 - 延迟检查点击事件
                    this.testStatus = '⏳ 检测中，等待点击事件判断...';
                    setTimeout(() => {
                      if (this.tapCount === 0) {
                        this.testStatus = '✓✓✓ 测试通过！';
                        this.testResult = `✓ 测试成功：从组件外滑入组件内（距离${this.moveDistance.toFixed(2)}vp < ${this.distanceThreshold}vp），未触发点击事件`;
                        console.info(`[TapGestureDistanceThreshold0260] 测试通过：外→内，未触发点击`);
                      } else {
                        this.testStatus = '❌ 测试失败';
                        this.testResult = `❌ 测试失败：从组件外滑入组件内时不应触发点击事件，但触发了${this.tapCount}次`;
                        console.error(`[TapGestureDistanceThreshold0260] 测试失败：触发了点击`);
                      }
                    }, 150);
                  }
                } else {
                  // 终点在外部，需要在这里处理
                  this.touchEndX = globalX;
                  this.touchEndY = globalY;
                  this.moveDistance = this.calculateDistance(
                    this.touchStartX,
                    this.touchStartY,
                    this.touchEndX,
                    this.touchEndY
                  );

                  if (!this.isStartOutside) {
                    this.testStatus = '⚠️ 测试无效：起点必须在组件外';
                    this.testResult = `⚠️ 请重新测试：确保从灰色区域（组件外）开始滑动。`;
                  } else {
                    // 起点在外，终点也在外
                    this.testStatus = '⚠️ 测试无效：终点必须在组件内';
                    this.testResult = `⚠️ 请重新测试：确保在蓝色区域（组件内）抬起。`;
                  }
                }
              }
            })
          }

          // 操作说明
          Column() {
            Text('操作说明')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .margin({ bottom: 15 })
              .alignSelf(ItemAlign.Start)

            Column() {
              Row() {
                Text('1.')
                  .fontSize(14)
                  .fontWeight(FontWeight.Bold)
                  .margin({ right: 8 })
                Text('在灰色区域（组件外）按下手指')
                  .fontSize(14)
                  .fontColor('#333333')
                  .layoutWeight(1)
              }
              .width('100%')
              .margin({ bottom: 8 })

              Row() {
                Text('2.')
                  .fontSize(14)
                  .fontWeight(FontWeight.Bold)
                  .margin({ right: 8 })
                Text('保持按住状态，向蓝色区域（组件内）滑动')
                  .fontSize(14)
                  .fontColor('#333333')
                  .layoutWeight(1)
              }
              .width('100%')
              .margin({ bottom: 8 })

              Row() {
                Text('3.')
                  .fontSize(14)
                  .fontWeight(FontWeight.Bold)
                  .margin({ right: 8 })
                Text('在蓝色区域（组件内）抬起手指（总移动距离 < 300vp）')
                  .fontSize(14)
                  .fontColor('#333333')
                  .layoutWeight(1)
              }
              .width('100%')

              Row() {
                Text('⚠️')
                  .fontSize(14)
                  .fontWeight(FontWeight.Bold)
                  .margin({ right: 8 })
                Text('关键：外→内，移动距离必须小于300vp，不触发点击')
                  .fontSize(13)
                  .fontColor('#FF5722')
                  .fontWeight(FontWeight.Medium)
                  .layoutWeight(1)
              }
              .width('100%')
              .margin({ top: 10 })
            }
            .width('100%')
            .padding(10)
            .backgroundColor('#E3F2FD')
            .borderRadius(8)
          }
          .width('90%')
          .padding(15)
          .backgroundColor('#F5F5F5')
          .borderRadius(10)
          .margin({ bottom: 30 })

          // 重置按钮
          Button('重置测试')
            .fontSize(16)
            .backgroundColor('#FF9800')
            .fontColor('#FFFFFF')
            .width('90%')
            .height(48)
            .onClick(() => {
              this.tapCount = 0;
              this.testStatus = '等待测试';
              this.testResult = '';
              this.moveDistance = 0;
              this.touchStartX = 0;
              this.touchStartY = 0;
              this.touchEndX = 0;
              this.touchEndY = 0;
              this.isStartOutside = false;
              console.info('[TapGestureDistanceThreshold0260] 测试已重置');
            })

          Column() {
            Text('💡 测试提示')
              .fontSize(13)
              .fontWeight(FontWeight.Bold)
              .fontColor('#FF9800')
              .margin({ bottom: 8 })

            Text('• 在灰色区域（组件外）按下手指')
              .fontSize(11)
              .fontColor('#666666')
              .alignSelf(ItemAlign.Start)
              .margin({ bottom: 3 })

            Text('• 向蓝色区域滑入，距离 < 300vp')
              .fontSize(11)
              .fontColor('#666666')
              .alignSelf(ItemAlign.Start)
              .margin({ bottom: 3 })

            Text('• 在蓝色区域（组件内）抬起手指')
              .fontSize(11)
              .fontColor('#666666')
              .alignSelf(ItemAlign.Start)
              .margin({ bottom: 3 })

            Text('• 预期：不触发点击事件（点击次数保持为0）')
              .fontSize(11)
              .fontColor('#4CAF50')
              .fontWeight(FontWeight.Medium)
              .alignSelf(ItemAlign.Start)
          }
          .width('90%')
          .padding(12)
          .backgroundColor('#FFF8E1')
          .borderRadius(8)
          .margin({ top: 15 })

          Text('提示：distanceThreshold为300vp（大于组件区域）时，从组件外滑入组件内，移动距离在阈值内不会触发点击事件')
            .fontSize(11)
            .fontColor('#FF9800')
            .margin({ top: 15 })
            .textAlign(TextAlign.Center)
        }
        .width('100%')
        .padding({ top: 20, bottom: 20 })
      }
      .layoutWeight(1)
      .scrollBar(BarState.Auto)
      .edgeEffect(EdgeEffect.Spring)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F5F5')
  }
}

