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
struct OnClickDistanceThreshold0160 {
  @State clickCount: number = 0;
  @State testStatus: string = '等待测试';
  @State testResult: string = '';
  @State touchStartX: number = 0;
  @State touchStartY: number = 0;
  @State touchEndX: number = 0;
  @State touchEndY: number = 0;
  @State moveDistance: number = 0;
  @State isStartInside: boolean = false; // 标记是否从内部开始
  @State buttonTop: number = 0; // 按钮的顶部位置
  @State buttonBottom: number = 0; // 按钮的底部位置
  @State buttonLeft: number = 0; // 按钮的左侧位置
  @State buttonRight: number = 0; // 按钮的右侧位置
  private distanceThreshold: number = 100; // 设置为100vp，小于组件区域（按钮宽度约288vp，高度200vp）

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
        Text('distanceThreshold 测试')
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

            Text('本测试用例验证distanceThreshold阈值小于组件区域时，手指从组件内滑入组件外，移动距离在阈值内触发点击事件')
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

              Text('1. 打开demo，设置distanceThreshold为100vp（小于组件区域）')
                .fontSize(12)
                .fontColor('#666666')
                .alignSelf(ItemAlign.Start)
                .margin({ left: 10, bottom: 3 })

              Text('2. 手指从组件内滑入组件外，移动距离在100vp阈值内')
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

              Text('✓ 触发点击事件')
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
              Text('测试操作: ')
                .fontSize(14)
                .fontColor('#666666')
              Text('从组件内滑入组件外')
                .fontSize(14)
                .fontWeight(FontWeight.Bold)
                .fontColor('#FF5722')
            }
            .width('100%')

            Row() {
              Text('特殊说明: ')
                .fontSize(14)
                .fontColor('#666666')
              Text('从组件内滑出时触发点击')
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
              Text(`${this.clickCount}`)
                .fontSize(18)
                .fontWeight(FontWeight.Bold)
                .fontColor(this.clickCount > 0 ? '#4CAF50' : '#F44336')
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

          // 测试区域（包含按钮和周围空间）
          Column() {
            Text('测试区域说明')
              .fontSize(14)
              .fontColor('#FF9800')
              .margin({ bottom: 10 })

            Text('蓝色区域 = 测试按钮（组件内）')
              .fontSize(12)
              .fontColor('#666666')
              .margin({ bottom: 5 })

            Text('灰色区域 = 组件外区域')
              .fontSize(12)
              .fontColor('#666666')
              .margin({ bottom: 15 })

            // 外部容器（用于监听滑出到外部的触摸）
            Column() {
              Column() {
                Text('测试按钮')
                  .fontSize(18)
                  .fontWeight(FontWeight.Bold)
                  .fontColor('#FFFFFF')
                  .margin({ bottom: 10 })

                Text('请从蓝色区域滑出到灰色区域')
                  .fontSize(14)
                  .fontColor('#E3F2FD')
                  .margin({ bottom: 5 })

                Text(`当前点击次数: ${this.clickCount}`)
                  .fontSize(14)
                  .fontColor(this.clickCount > 0 ? '#C8E6C9' : '#FFCDD2')
                  .fontWeight(FontWeight.Medium)

                Text(this.isStartInside ? '✓ 起点在内部' : '⚠ 起点在外部')
                  .fontSize(12)
                  .fontColor(this.isStartInside ? '#C8E6C9' : '#FFCDD2')
                  .margin({ top: 5 })
              }
              .id('test_button')
              .width('60%')
              .height(180)
              .backgroundColor('#2196F3')
              .borderRadius(12)
              .justifyContent(FlexAlign.Center)
              .onTouch((event: TouchEvent) => {
                // 按钮内的触摸事件
                const globalX = event.touches[0].displayX;
                const globalY = event.touches[0].displayY;

                if (event.type === TouchType.Down) {
                  // 在按钮内按下
                  this.touchStartX = globalX;
                  this.touchStartY = globalY;
                  this.isStartInside = this.isPointInsideButton(globalX, globalY);
                  this.testStatus = `✓ 按下在组件内(${globalX.toFixed(0)}, ${globalY.toFixed(0)})，请向外滑动...`;
                  console.info(`[OnClickDistanceThreshold0160] Button TouchDown at (${globalX}, ${globalY}), Button area: (${this.buttonLeft}, ${this.buttonTop}) to (${this.buttonRight}, ${this.buttonBottom})`);
                } else if (event.type === TouchType.Move) {
                  // 处理移动到按钮外的情况
                  const isNowOutside = !this.isPointInsideButton(globalX, globalY);
                  if (this.isStartInside && isNowOutside) {
                    this.testStatus = `✓ 已滑出组件外(${globalX.toFixed(0)}, ${globalY.toFixed(0)})，请抬起...`;
                    console.info(`[OnClickDistanceThreshold0160] Button Move: Moved out of button at (${globalX}, ${globalY}), Button area: (${this.buttonLeft}, ${this.buttonTop}) to (${this.buttonRight}, ${this.buttonBottom})`);
                  }
                }
              })
              .onClick(() => {
                // 按钮被点击时触发
                this.clickCount++;
                this.testStatus = '✓ 触发了点击事件（符合预期）';
                this.testResult = `✓ 测试成功：从组件内滑入组件外，触发了点击事件`;
                console.info(`[OnClickDistanceThreshold0160] 点击事件被触发，点击次数: ${this.clickCount}`);
              }, this.distanceThreshold)
              .onAreaChange((oldArea: Area, newArea: Area) => {
                // 获取按钮的全局位置信息（屏幕绝对坐标）
                this.buttonLeft = newArea.globalPosition.x as number;
                this.buttonTop = newArea.globalPosition.y as number;
                this.buttonRight = this.buttonLeft + (newArea.width as number);
                this.buttonBottom = this.buttonTop + (newArea.height as number);
                console.info(`[OnClickDistanceThreshold0160] Button global area: (${this.buttonLeft}, ${this.buttonTop}) to (${this.buttonRight}, ${this.buttonBottom})`);
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
                // 在灰色区域按下
                const isInside = this.isPointInsideButton(globalX, globalY);
                if (!isInside) {
                  this.touchStartX = globalX;
                  this.touchStartY = globalY;
                  this.isStartInside = false;
                  this.testStatus = '⚠ 按下在组件外，请从蓝色按钮内开始';
                  console.warn(`[OnClickDistanceThreshold0160] Container TouchDown OUTSIDE button at (${globalX}, ${globalY}), Button area: (${this.buttonLeft}, ${this.buttonTop}) to (${this.buttonRight}, ${this.buttonBottom})`);
                }
              } else if (event.type === TouchType.Move) {
                const isNowOutside = !this.isPointInsideButton(globalX, globalY);
                if (this.isStartInside && isNowOutside) {
                  this.testStatus = `✓ 已滑出组件外(${globalX.toFixed(0)}, ${globalY.toFixed(0)})，请抬起...`;
                  console.info(`[OnClickDistanceThreshold0160] Container Move: Moved out of button at (${globalX}, ${globalY}), Button area: (${this.buttonLeft}, ${this.buttonTop}) to (${this.buttonRight}, ${this.buttonBottom})`);
                }
              } else if (event.type === TouchType.Up) {
                // 在灰色区域抬起
                this.touchEndX = globalX;
                this.touchEndY = globalY;
                this.moveDistance = this.calculateDistance(
                  this.touchStartX,
                  this.touchStartY,
                  this.touchEndX,
                  this.touchEndY
                );
                
                const isEndOutside = !this.isPointInsideButton(globalX, globalY);
                
                console.info(`[OnClickDistanceThreshold0160] Container TouchUp at (${globalX}, ${globalY}), 移动距离: ${this.moveDistance}vp, 起点在内: ${this.isStartInside}, 终点在外: ${isEndOutside}, Button area: (${this.buttonLeft}, ${this.buttonTop}) to (${this.buttonRight}, ${this.buttonBottom})`);

                // 立即处理结果判断
                if (!this.isStartInside) {
                  this.testStatus = '⚠️ 测试无效：起点必须在组件内';
                  this.testResult = `⚠️ 请重新测试：确保从蓝色区域（组件内）开始滑动`;
                } else if (!isEndOutside) {
                  this.testStatus = '⚠️ 测试无效：终点必须在组件外';
                  this.testResult = `⚠️ 请重新测试：确保在灰色区域（组件外）抬起`;
                } else if (this.moveDistance > this.distanceThreshold) {
                  this.testStatus = '⚠️ 移动距离超出阈值';
                  this.testResult = `⚠️ 移动距离${this.moveDistance.toFixed(2)}vp > ${this.distanceThreshold}vp，请重新测试并保持移动距离在阈值内`;
                } else {
                  // 有效的测试 - 延迟检查点击事件
                  this.testStatus = '⏳ 检测中，等待点击事件判断...';
                  setTimeout(() => {
                    if (this.clickCount > 0) {
                      this.testStatus = '✓✓✓ 测试通过！';
                      this.testResult = `✓ 测试成功：从组件内滑出到组件外（距离${this.moveDistance.toFixed(2)}vp），触发了点击事件`;
                      console.info(`[OnClickDistanceThreshold0160] 测试通过：从组件内滑出，触发了点击`);
                    } else {
                      this.testStatus = '❌ 测试失败';
                      this.testResult = `❌ 测试失败：从组件内滑出到组件外时应该触发点击事件，但未触发`;
                      console.error(`[OnClickDistanceThreshold0160] 测试失败：未触发点击`);
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
                Text('在蓝色区域（测试按钮内部）按下手指')
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
                Text('保持按住状态，向外滑动到灰色区域（移动距离 ≤ 100vp）')
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
                Text('在灰色区域抬起手指')
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
                Text('观察点击次数是否增加（应该增加，表示触发了点击）')
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
                Text('关键：必须从蓝色区域开始，滑出到灰色区域后抬起')
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
              this.clickCount = 0;
              this.testStatus = '等待测试';
              this.testResult = '';
              this.moveDistance = 0;
              this.touchStartX = 0;
              this.touchStartY = 0;
              this.touchEndX = 0;
              this.touchEndY = 0;
              this.isStartInside = false;
              console.info('[OnClickDistanceThreshold0160] 测试已重置');
            })

          Column() {
            Text('💡 测试提示')
              .fontSize(13)
              .fontWeight(FontWeight.Bold)
              .fontColor('#FF9800')
              .margin({ bottom: 8 })

            Text('• 从蓝色区域（组件内）按下手指')
              .fontSize(11)
              .fontColor('#666666')
              .alignSelf(ItemAlign.Start)
              .margin({ bottom: 3 })

            Text('• 向灰色区域（组件外）滑动，距离 ≤ 100vp')
              .fontSize(11)
              .fontColor('#666666')
              .alignSelf(ItemAlign.Start)
              .margin({ bottom: 3 })

            Text('• 在灰色区域抬起手指')
              .fontSize(11)
              .fontColor('#666666')
              .alignSelf(ItemAlign.Start)
              .margin({ bottom: 3 })

            Text('• 预期：触发点击事件（点击次数增加）')
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

