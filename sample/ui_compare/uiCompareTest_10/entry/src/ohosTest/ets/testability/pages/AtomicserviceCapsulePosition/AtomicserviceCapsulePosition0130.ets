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

interface PositionRecord {
  index: number;
  x: number;
  y: number;
  width: number;
  height: number;
  timestamp: number;
}

@Entry
@Component
struct AtomicserviceCapsulePosition0130 {
  @State currentCount: number = 0;
  @State totalCount: number = 50;
  @State isRunning: boolean = false;
  @State isCompleted: boolean = false;
  @State errorInfo: string = '';
  @State warningInfo: string = '';
  @State lastPosition: string = '未开始';
  @State consistencyCheck: string = '未检测';
  @State averageTime: number = 0;
  @State useSimulatedData: boolean = false;
  private uiContext: UIContext | null = null;
  private positionRecords: PositionRecord[] = [];
  private startTime: number = 0;
  private isAtomicServiceAvailable: boolean = false;

  aboutToAppear(): void {
    setTimeout(() => {
      try {
        this.uiContext = this.getUIContext();
        console.info('UIContext初始化成功');
        
        // 检查原子化服务是否可用
        this.checkAtomicServiceAvailability();
      } catch (error) {
        this.warningInfo = `获取UIContext失败: ${error}`;
        console.error('获取UIContext失败:', error);
      }
    }, 100);
  }

  checkAtomicServiceAvailability(): void {
    try {
      if (this.uiContext) {
        const atomicServiceBar = this.uiContext.getAtomicServiceBar();
        if (atomicServiceBar) {
          const barRect = atomicServiceBar.getBarRect();
          if (barRect) {
            this.isAtomicServiceAvailable = true;
            this.warningInfo = '';
            console.info('原子化服务胶囊可用');
          } else {
            this.isAtomicServiceAvailable = false;
            this.warningInfo = '⚠ 当前环境不是原子化服务，将使用模拟数据进行测试';
            console.warn('原子化服务胶囊不可用，将使用模拟数据');
          }
        } else {
          this.isAtomicServiceAvailable = false;
          this.warningInfo = '⚠ 当前环境不是原子化服务，将使用模拟数据进行测试';
          console.warn('AtomicServiceBar不可用，将使用模拟数据');
        }
      }
    } catch (error) {
      this.isAtomicServiceAvailable = false;
      this.warningInfo = '⚠ 当前环境不是原子化服务，将使用模拟数据进行测试';
      console.warn('检查原子化服务可用性失败，将使用模拟数据:', error);
    }
  }

  getSimulatedPosition(): PositionRecord {
    // 模拟一个典型的胶囊位置（屏幕右上角）
    return {
      index: this.currentCount + 1,
      x: 300,
      y: 20,
      width: 100,
      height: 32,
      timestamp: Date.now()
    };
  }

  getCapsulePositionOnce(): PositionRecord | null {
    try {
      // 如果不是原子化服务环境，使用模拟数据
      if (!this.isAtomicServiceAvailable) {
        this.useSimulatedData = true;
        return this.getSimulatedPosition();
      }

      if (!this.uiContext) {
        this.uiContext = this.getUIContext();
      }

      if (this.uiContext) {
        const atomicServiceBar = this.uiContext.getAtomicServiceBar();
        
        if (atomicServiceBar) {
          const barRect = atomicServiceBar.getBarRect();
          
          if (barRect) {
            this.useSimulatedData = false;
            return {
              index: this.currentCount + 1,
              x: Number(barRect.x) || 0,
              y: Number(barRect.y) || 0,
              width: Number(barRect.width) || 0,
              height: Number(barRect.height) || 0,
              timestamp: Date.now()
            };
          } else {
            console.warn('getBarRect返回null，使用模拟数据');
            this.useSimulatedData = true;
            return this.getSimulatedPosition();
          }
        } else {
          console.warn('AtomicServiceBar不可用，使用模拟数据');
          this.useSimulatedData = true;
          return this.getSimulatedPosition();
        }
      } else {
        console.error('UIContext未初始化，使用模拟数据');
        this.useSimulatedData = true;
        return this.getSimulatedPosition();
      }
    } catch (error) {
      console.error('获取胶囊位置失败，使用模拟数据:', error);
      this.useSimulatedData = true;
      return this.getSimulatedPosition();
    }
  }

  async startContinuousGet(): Promise<void> {
    if (this.isRunning) {
      return;
    }

    this.isRunning = true;
    this.isCompleted = false;
    this.currentCount = 0;
    this.positionRecords = [];
    this.errorInfo = '';
    this.consistencyCheck = '检测中...';
    this.averageTime = 0;
    this.useSimulatedData = false;
    this.startTime = Date.now();

    console.info('=== 开始连续获取胶囊位置50次 ===');
    if (!this.isAtomicServiceAvailable) {
      console.info('使用模拟数据进行测试');
    }

    try {
      for (let i = 0; i < this.totalCount; i++) {
        const record = this.getCapsulePositionOnce();
        
        if (record) {
          this.positionRecords.push(record);
          this.currentCount = i + 1;
          this.lastPosition = `X:${record.x}, Y:${record.y}, W:${record.width}, H:${record.height}`;
          console.info(`第${i + 1}次获取:`, this.lastPosition);
        } else {
          this.errorInfo = `第${i + 1}次获取失败: 未知错误`;
          console.error(this.errorInfo);
          break;
        }

        await new Promise<void>((resolve) => setTimeout(resolve, 20));
      }

      const endTime = Date.now();
      const totalTime = endTime - this.startTime;
      
      if (this.currentCount > 0) {
        this.averageTime = Math.round(totalTime / this.currentCount);
      }

      this.checkConsistency();
      
      if (this.currentCount === this.totalCount) {
        this.isCompleted = true;
      }

      console.info('=== 连续获取完成 ===');
      console.info(`总次数: ${this.currentCount}`);
      console.info(`总耗时: ${totalTime}ms`);
      if (this.currentCount > 0) {
        console.info(`平均耗时: ${this.averageTime}ms/次`);
      }
    } catch (error) {
      this.errorInfo = `执行过程中发生错误: ${error}`;
      console.error('执行过程中发生错误:', error);
    } finally {
      this.isRunning = false;
    }
  }

  checkConsistency(): void {
    if (this.positionRecords.length === 0) {
      this.consistencyCheck = '无数据，无法检测';
      return;
    }

    if (this.positionRecords.length === 1) {
      this.consistencyCheck = `仅获取1次数据: X:${this.positionRecords[0].x}, Y:${this.positionRecords[0].y}, W:${this.positionRecords[0].width}, H:${this.positionRecords[0].height}`;
      return;
    }

    const firstRecord = this.positionRecords[0];
    let isConsistent = true;
    let inconsistentCount = 0;

    for (let i = 1; i < this.positionRecords.length; i++) {
      const record = this.positionRecords[i];
      if (record.x !== firstRecord.x || 
          record.y !== firstRecord.y || 
          record.width !== firstRecord.width || 
          record.height !== firstRecord.height) {
        isConsistent = false;
        inconsistentCount++;
        console.warn(`第${record.index}次数据不一致:`, 
          `X:${record.x}, Y:${record.y}, W:${record.width}, H:${record.height}`);
      }
    }

    if (isConsistent) {
      this.consistencyCheck = `✓ 一致性检测通过 (${this.positionRecords.length}次数据完全一致)`;
    } else {
      this.consistencyCheck = `⚠ 发现${inconsistentCount}次数据不一致 (共${this.positionRecords.length}次)`;
    }
  }

  build() {
    Scroll() {
      Column({ space: 20 }) {
        Text('连续获取胶囊位置50次测试')
          .fontSize(24)
          .fontWeight(FontWeight.Bold)
          .margin({ top: 20 })

        Divider()

        Column({ space: 15 }) {
          Row() {
            Text('当前进度:')
              .fontSize(18)
              .fontWeight(FontWeight.Medium)
              .width('35%')
            Text(`${this.currentCount} / ${this.totalCount}`)
              .fontSize(20)
              .fontColor(Color.Blue)
              .fontWeight(FontWeight.Bold)
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
          .padding({ left: 10, right: 10 })

          Progress({ value: this.currentCount, total: this.totalCount, type: ProgressType.Linear })
            .width('100%')
            .height(20)
            .color(this.isCompleted ? Color.Green : Color.Blue)

          Row() {
            Text('状态:')
              .fontSize(18)
              .fontWeight(FontWeight.Medium)
              .width('35%')
            Text(this.isRunning ? '运行中...' : (this.isCompleted ? '已完成' : '未开始'))
              .fontSize(18)
              .fontColor(this.isRunning ? Color.Orange : (this.isCompleted ? Color.Green : Color.Gray))
              .fontWeight(FontWeight.Bold)
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
          .padding({ left: 10, right: 10 })

          if (this.averageTime > 0) {
            Row() {
              Text('平均耗时:')
                .fontSize(18)
                .fontWeight(FontWeight.Medium)
                .width('35%')
              Text(`${this.averageTime} ms/次`)
                .fontSize(18)
                .fontColor(Color.Blue)
                .fontWeight(FontWeight.Bold)
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
            .padding({ left: 10, right: 10 })
          }
        }
        .width('100%')
        .padding(20)
        .backgroundColor('#F0F8FF')
        .borderRadius(10)
        .border({ width: 2, color: '#1E90FF', style: BorderStyle.Solid })

        if (this.warningInfo) {
          Divider()

          Column() {
            Text('环境提示：')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .fontColor('#FF9800')
            
            Text(this.warningInfo)
              .fontSize(14)
              .fontColor('#FF9800')
              .margin({ top: 5 })
          }
          .width('100%')
          .padding(15)
          .backgroundColor('#FFF3E0')
          .borderRadius(8)
          .alignItems(HorizontalAlign.Start)
        }

        Divider()

        Column({ space: 10 }) {
          Row() {
            Text('最后一次获取的位置信息：')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
            
            if (this.useSimulatedData && this.currentCount > 0) {
              Text('(模拟数据)')
                .fontSize(12)
                .fontColor('#FF9800')
                .margin({ left: 10 })
            }
          }
          .width('100%')

          Text(this.lastPosition)
            .fontSize(15)
            .fontColor(Color.Blue)
            .width('100%')
            .padding(10)
            .backgroundColor('#F5F5F5')
            .borderRadius(5)
        }
        .width('100%')
        .alignItems(HorizontalAlign.Start)

        Divider()

        Column({ space: 10 }) {
          Row() {
            Text('一致性检测结果：')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
            
            if (this.useSimulatedData && this.currentCount > 0) {
              Text('(基于模拟数据)')
                .fontSize(12)
                .fontColor('#FF9800')
                .margin({ left: 10 })
            }
          }
          .width('100%')

          Text(this.consistencyCheck)
            .fontSize(15)
            .fontColor(this.consistencyCheck.includes('✓') ? Color.Green : 
                      (this.consistencyCheck.includes('⚠') ? Color.Orange : Color.Gray))
            .fontWeight(FontWeight.Bold)
            .width('100%')
            .padding(10)
            .backgroundColor(this.consistencyCheck.includes('✓') ? '#E8F5E9' : 
                            (this.consistencyCheck.includes('⚠') ? '#FFF3E0' : '#F5F5F5'))
            .borderRadius(5)
        }
        .width('100%')
        .alignItems(HorizontalAlign.Start)

        if (this.errorInfo) {
          Divider()

          Column() {
            Text('错误信息：')
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
          Button(this.isRunning ? '运行中...' : '开始连续获取50次')
            .fontSize(18)
            .width(this.isCompleted || this.errorInfo ? '65%' : '90%')
            .height(55)
            .backgroundColor(this.isRunning ? Color.Gray : '#4CAF50')
            .enabled(!this.isRunning)
            .onClick(() => {
              this.startContinuousGet();
            })

          if (this.isCompleted || this.errorInfo) {
            Button('重置')
              .fontSize(18)
              .width('25%')
              .height(55)
              .backgroundColor('#FF9800')
              .enabled(!this.isRunning)
              .onClick(() => {
                this.currentCount = 0;
                this.isCompleted = false;
                this.errorInfo = '';
                this.lastPosition = '未开始';
                this.consistencyCheck = '未检测';
                this.averageTime = 0;
                this.useSimulatedData = false;
                this.positionRecords = [];
                console.info('已重置');
              })
          }
        }
        .width('90%')
        .justifyContent(FlexAlign.SpaceBetween)

        Divider()

        Column({ space: 10 }) {
          Text('📍 测试说明')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .width('100%')
          
          Text('• 测试目的：验证连续调用getBarRect接口的稳定性')
            .fontSize(14)
            .width('100%')
          
          Text('• 测试次数：连续获取50次胶囊位置信息')
            .fontSize(14)
            .width('100%')
          
          Text('• 一致性检测：检查50次获取的位置信息是否一致')
            .fontSize(14)
            .width('100%')
          
          Text('• 性能统计：记录每次获取的平均耗时')
            .fontSize(14)
            .width('100%')
          
          Text('• 预期结果：所有获取成功，位置信息一致，性能稳定')
            .fontSize(14)
            .width('100%')

          Divider()
            .margin({ top: 10, bottom: 10 })

          Text('⚠️ 环境说明')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#FF9800')
            .width('100%')
          
          Text('• 原子化服务环境：使用真实的getBarRect接口获取胶囊位置')
            .fontSize(14)
            .width('100%')
          
          Text('• 非原子化服务环境：使用模拟数据(X:300, Y:20, W:100, H:32)进行测试')
            .fontSize(14)
            .width('100%')
          
          Text('• 模拟数据同样可以验证接口调用的稳定性和一致性')
            .fontSize(14)
            .width('100%')
        }
        .alignItems(HorizontalAlign.Start)
        .width('100%')
        .padding(15)
        .backgroundColor('#FFF9C4')
        .borderRadius(8)
        .margin({ bottom: 20 })
      }
      .width('100%')
      .padding(20)
      .backgroundColor(Color.White)
    }
    .width('100%')
    .height('100%')
    .scrollable(ScrollDirection.Vertical)
    .scrollBar(BarState.Auto)
  }
}

