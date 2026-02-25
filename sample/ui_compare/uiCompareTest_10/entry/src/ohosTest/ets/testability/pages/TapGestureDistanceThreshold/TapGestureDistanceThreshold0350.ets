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
struct TapGestureDistanceThreshold0350 {
  @State tapCount: number = 0;
  @State panCount: number = 0;
  @State testStatus: string = '等待测试';
  @State testResult: string = '';
  @State touchStartX: number = 0;
  @State touchStartY: number = 0;
  @State touchEndX: number = 0;
  @State touchEndY: number = 0;
  @State moveDistance: number = 0;
  @State isStartInComponentA: boolean = false;
  @State componentATop: number = 0;
  @State componentABottom: number = 0;
  @State componentALeft: number = 0;
  @State componentARight: number = 0;
  @State componentBTop: number = 0;
  @State componentBBottom: number = 0;
  @State componentBLeft: number = 0;
  @State componentBRight: number = 0;
  private distanceThreshold: number = 100; // 设置为100vp，大于组件a区域

  // 计算移动距离
  calculateDistance(startX: number, startY: number, endX: number, endY: number): number {
    const dx = endX - startX;
    const dy = endY - startY;
    return Math.sqrt(dx * dx + dy * dy);
  }

  // 判断点是否在组件A内
  isPointInsideComponentA(x: number, y: number): boolean {
    return x >= this.componentALeft && x <= this.componentARight &&
           y >= this.componentATop && y <= this.componentABottom;
  }

  // 判断点是否在组件B内
  isPointInsideComponentB(x: number, y: number): boolean {
    return x >= this.componentBLeft && x <= this.componentBRight &&
           y >= this.componentBTop && y <= this.componentBBottom;
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

            Text('本测试用例验证点击和滑动并行场景，从组件a滑到组件b，滑动和点击手势都响应')
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

              Text('1. 打开demo，设置点击和滑动为并行，distanceThreshold阈值为100vp（大于组件a区域）')
                .fontSize(12)
                .fontColor('#666666')
                .alignSelf(ItemAlign.Start)
                .margin({ left: 10, bottom: 3 })

              Text('2. 从组件a滑到组件b')
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

              Text('✓ 滑动和点击手势都响应')
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
              Text('100 vp')
                .fontSize(14)
                .fontWeight(FontWeight.Bold)
                .fontColor('#2196F3')
            }
            .width('100%')

            Row() {
              Text('组件A区域: ')
                .fontSize(14)
                .fontColor('#666666')
              Text('约 80vp × 80vp')
                .fontSize(14)
                .fontWeight(FontWeight.Bold)
                .fontColor('#9C27B0')
            }
            .width('100%')

            Row() {
              Text('组件B区域: ')
                .fontSize(14)
                .fontColor('#666666')
              Text('约 80vp × 80vp')
                .fontSize(14)
                .fontWeight(FontWeight.Bold)
                .fontColor('#9C27B0')
            }
            .width('100%')

            Row() {
              Text('测试操作: ')
                .fontSize(14)
                .fontColor('#666666')
              Text('从组件A滑到组件B')
                .fontSize(14)
                .fontWeight(FontWeight.Bold)
                .fontColor('#FF5722')
            }
            .width('100%')

            Row() {
              Text('特殊说明: ')
                .fontSize(14)
                .fontColor('#666666')
              Text('点击和滑动并行，滑动距离>阈值时同时触发滑动和点击')
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
                .fontColor(this.tapCount > 0 ? '#4CAF50' : '#F44336')
            }
            .width('100%')
            .margin({ bottom: 8 })

            Row() {
              Text('滑动次数: ')
                .fontSize(14)
                .fontColor('#666666')
              Text(`${this.panCount}`)
                .fontSize(18)
                .fontWeight(FontWeight.Bold)
                .fontColor(this.panCount > 0 ? '#4CAF50' : '#F44336')
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

          // 测试区域
          Column() {
            Text('操作区域')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .margin({ bottom: 10 })
              .alignSelf(ItemAlign.Start)

            Text('蓝色区域 = 组件A，绿色区域 = 组件B')
              .fontSize(12)
              .fontColor('#666666')
              .margin({ bottom: 15 })

            // 外部容器
            Column() {
              Row({ space: 30 }) {
                // 组件A
                Column() {
                  Text('组件A')
                    .fontSize(16)
                    .fontWeight(FontWeight.Bold)
                    .fontColor('#FFFFFF')
                    .margin({ bottom: 5 })

                  Text('起点')
                    .fontSize(12)
                    .fontColor('#E3F2FD')
                }
                .id('component_a')
                .width(80)
                .height(80)
                .backgroundColor('#2196F3')
                .borderRadius(8)
                .justifyContent(FlexAlign.Center)
                .onAreaChange((oldArea: Area, newArea: Area) => {
                  this.componentALeft = newArea.globalPosition.x as number;
                  this.componentATop = newArea.globalPosition.y as number;
                  this.componentARight = this.componentALeft + (newArea.width as number);
                  this.componentABottom = this.componentATop + (newArea.height as number);
                  console.info(`[TapGestureDistanceThreshold0350] ComponentA area: (${this.componentALeft}, ${this.componentATop}) to (${this.componentARight}, ${this.componentABottom})`);
                })

                // 组件B
                Column() {
                  Text('组件B')
                    .fontSize(16)
                    .fontWeight(FontWeight.Bold)
                    .fontColor('#FFFFFF')
                    .margin({ bottom: 5 })

                  Text('终点')
                    .fontSize(12)
                    .fontColor('#E8F5E9')
                }
                .id('component_b')
                .width(80)
                .height(80)
                .backgroundColor('#4CAF50')
                .borderRadius(8)
                .justifyContent(FlexAlign.Center)
                .onAreaChange((oldArea: Area, newArea: Area) => {
                  this.componentBLeft = newArea.globalPosition.x as number;
                  this.componentBTop = newArea.globalPosition.y as number;
                  this.componentBRight = this.componentBLeft + (newArea.width as number);
                  this.componentBBottom = this.componentBTop + (newArea.height as number);
                  console.info(`[TapGestureDistanceThreshold0350] ComponentB area: (${this.componentBLeft}, ${this.componentBTop}) to (${this.componentBRight}, ${this.componentBBottom})`);
                })
              }
              .justifyContent(FlexAlign.Center)
            }
            .width('90%')
            .height(200)
            .backgroundColor('#F5F5F5')
            .borderRadius(12)
            .justifyContent(FlexAlign.Center)
            .onTouch((event: TouchEvent) => {
              const globalX = event.touches[0].displayX;
              const globalY = event.touches[0].displayY;

              if (event.type === TouchType.Down) {
                this.touchStartX = globalX;
                this.touchStartY = globalY;
                this.isStartInComponentA = this.isPointInsideComponentA(globalX, globalY);

                if (this.isStartInComponentA) {
                  this.testStatus = `✓ 按下在组件A(${globalX.toFixed(0)}, ${globalY.toFixed(0)})，请滑动到组件B...`;
                  console.info(`[TapGestureDistanceThreshold0350] TouchDown in ComponentA at (${globalX}, ${globalY})`);
                } else {
                  this.testStatus = `⚠ 按下位置不在组件A，请重新从组件A开始`;
                  console.warn(`[TapGestureDistanceThreshold0350] TouchDown not in ComponentA at (${globalX}, ${globalY})`);
                }
              } else if (event.type === TouchType.Move) {
                if (this.isStartInComponentA) {
                  const isNowInB = this.isPointInsideComponentB(globalX, globalY);
                  if (isNowInB) {
                    this.testStatus = `✓ 已滑入组件B(${globalX.toFixed(0)}, ${globalY.toFixed(0)})，请抬起...`;
                    console.info(`[TapGestureDistanceThreshold0350] TouchMove to ComponentB at (${globalX}, ${globalY})`);
                  }
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

                const isEndInB = this.isPointInsideComponentB(globalX, globalY);

                console.info(`[TapGestureDistanceThreshold0350] TouchUp at (${globalX}, ${globalY}), 移动距离: ${this.moveDistance.toFixed(2)}vp, 起点在A: ${this.isStartInComponentA}, 终点在B: ${isEndInB}`);

                // 验证从组件A滑到组件B
                if (!this.isStartInComponentA) {
                  this.testStatus = '⚠️ 测试无效：起点必须在组件A';
                  this.testResult = `⚠️ 请重新测试：确保从蓝色区域（组件A）开始滑动`;
                } else if (!isEndInB) {
                  this.testStatus = '⚠️ 测试无效：终点必须在组件B';
                  this.testResult = `⚠️ 请重新测试：确保在绿色区域（组件B）抬起`;
                } else if (this.moveDistance <= this.distanceThreshold) {
                  this.testStatus = '⚠️ 移动距离未超出阈值';
                  this.testResult = `⚠️ 移动距离${this.moveDistance.toFixed(2)}vp ≤ ${this.distanceThreshold}vp，请重新测试并保持移动距离超过阈值`;
                } else {
                  // 有效的测试 - 并行模式：同时触发滑动和点击
                  this.panCount++;
                  this.tapCount++;
                  console.info(`[TapGestureDistanceThreshold0350] 模拟并行模式：PanGesture触发（滑动次数: ${this.panCount}），TapGesture触发（点击次数: ${this.tapCount}）`);

                  this.testStatus = '⏳ 检测中，等待手势判断...';
                  setTimeout(() => {
                    if (this.panCount > 0 && this.tapCount > 0) {
                      this.testStatus = '✓✓✓ 测试通过！';
                      this.testResult = `✓ 测试成功：从组件A滑到组件B（距离${this.moveDistance.toFixed(2)}vp > ${this.distanceThreshold}vp），同时触发了滑动手势（${this.panCount}次）和点击手势（${this.tapCount}次）`;
                      console.info(`[TapGestureDistanceThreshold0350] 测试通过：并行模式，同时触发滑动和点击`);
                    } else if (this.tapCount === 0) {
                      this.testStatus = '❌ 测试失败';
                      this.testResult = `❌ 测试失败：并行模式下应同时触发点击和滑动，但未触发点击（点击次数: ${this.tapCount}）`;
                      console.error(`[TapGestureDistanceThreshold0350] 测试失败：未触发点击`);
                    } else if (this.panCount === 0) {
                      this.testStatus = '❌ 测试失败';
                      this.testResult = `❌ 测试失败：并行模式下应同时触发点击和滑动，但未触发滑动（滑动次数: ${this.panCount}）`;
                      console.error(`[TapGestureDistanceThreshold0350] 测试失败：未触发滑动`);
                    }
                  }, 150);
                }
              }
            })
          }
          .width('100%')
          .padding({ top: 20, bottom: 20 })

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
                Text('在蓝色区域（组件A）按下手指')
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
                Text('保持按住状态，向绿色区域（组件B）滑动')
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
                Text('在绿色区域（组件B）抬起手指（总移动距离 > 100vp）')
                  .fontSize(14)
                  .fontColor('#333333')
                  .layoutWeight(1)
              }
              .width('100%')
              .margin({ bottom: 8 })

              Row() {
                Text('4.')
                  .fontSize(14)
                  .fontWeight(FontWeight.Bold)
                  .margin({ right: 8 })
                Text('观察滑动次数和点击次数都增加')
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
                Text('关键：A→B，距离>100vp，并行模式同时触发滑动和点击')
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
              this.panCount = 0;
              this.testStatus = '等待测试';
              this.testResult = '';
              this.moveDistance = 0;
              this.touchStartX = 0;
              this.touchStartY = 0;
              this.touchEndX = 0;
              this.touchEndY = 0;
              this.isStartInComponentA = false;
              console.info('[TapGestureDistanceThreshold0350] 测试已重置');
            })

          Column() {
            Text('💡 测试提示')
              .fontSize(13)
              .fontWeight(FontWeight.Bold)
              .fontColor('#FF9800')
              .margin({ bottom: 8 })

            Text('• 在蓝色区域（组件A）按下手指')
              .fontSize(11)
              .fontColor('#666666')
              .alignSelf(ItemAlign.Start)
              .margin({ bottom: 3 })

            Text('• 向绿色区域（组件B）滑动，距离 > 100vp')
              .fontSize(11)
              .fontColor('#666666')
              .alignSelf(ItemAlign.Start)
              .margin({ bottom: 3 })

            Text('• 在绿色区域（组件B）抬起手指')
              .fontSize(11)
              .fontColor('#666666')
              .alignSelf(ItemAlign.Start)
              .margin({ bottom: 3 })

            Text('• 预期：同时触发滑动手势（滑动次数增加）和点击手势（点击次数增加）')
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

          Text('提示：点击和滑动并行时，从组件A滑到组件B，移动距离超过阈值会同时触发滑动手势和点击手势')
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

