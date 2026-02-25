/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * 用例ID: SUB_ACE_ACTION_EVENT_COMMONEVENT_DRAG_SCENARIOS_0280
 * 用例描述: 快速抛滑组件
 * 测试条件: 已更新最新版本镜像，编译demo
 * 测试步骤: 1、使用手指/鼠标，快速抛滑组件
 * 预期结果: 1-1、组件被正常拖动 1-2、拖动事件响应的各个回调时序正常 1-3、拖拽事件有正确的闭环
 */

import { hilog } from '@kit.PerformanceAnalysisKit';

@Entry
@ComponentV2
struct DragScenarios0280 {
  @Local testLog: string[] = [];
  @Local dragCount: number = 0;
  @Local eventSequence: string[] = [];
  @Local hasCorrectSequence: boolean = false;

  addLog(log: string): void {
    const timestamp = new Date().toLocaleTimeString();
    this.testLog.unshift(`[${timestamp}] ${log}`);
    if (this.testLog.length > 30) {
      this.testLog = this.testLog.slice(0, 30);
    }
    hilog.info(0x0000, 'DragScenarios0280', log);
  }

  checkEventSequence(): void {
    // 检查事件闭环: onDragStart -> onDragEnd
    const hasStart = this.eventSequence.includes('onDragStart');
    const hasEnd = this.eventSequence.includes('onDragEnd');
    this.hasCorrectSequence = hasStart && hasEnd;
    if (this.hasCorrectSequence) {
      this.addLog('✓ 事件闭环正确');
    }
  }

  build() {
    Column({ space: 8 }) {
      Text('SUB_ACE_ACTION_EVENT_COMMONEVENT_DRAG_SCENARIOS_0280')
        .fontSize(9)
        .fontWeight(FontWeight.Bold)
        .textAlign(TextAlign.Center)

      Text('快速抛滑组件')
        .fontSize(14)
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.Blue)

      Divider().height(1).color('#EEEEEE')

      Row({ space: 20 }) {
        Column() {
          Text('拖拽次数')
            .fontSize(11)
          Text(`${this.dragCount}`)
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor(Color.Blue)
        }
        Column() {
          Text('事件闭环')
            .fontSize(11)
          Text(`${this.hasCorrectSequence ? '✓ 正确' : '待验证'}`)
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .fontColor(this.hasCorrectSequence ? Color.Green : Color.Orange)
        }
      }

      Button('重置')
        .onClick(() => {
          this.dragCount = 0;
          this.eventSequence = [];
          this.hasCorrectSequence = false;
          this.testLog = [];
          this.addLog('已重置');
        })
        .fontSize(12)
        .id('DragScenarios0280_ResetBtn')

      Divider().height(1).color('#EEEEEE')

      Text('快速抛滑下方组件：')
        .fontSize(12)
        .fontColor(Color.Gray)
        .alignSelf(ItemAlign.Start)

      Column() {
        Text('📦 可抛滑组件')
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.White)
        Text('快速拖拽并抛出')
          .fontSize(12)
          .fontColor(Color.White)
          .margin({ top: 5 })
      }
      .width(200)
      .height(100)
      .backgroundColor('#E91E63')
      .justifyContent(FlexAlign.Center)
      .borderRadius(12)
      .draggable(true)
      .onDragStart(() => {
        this.eventSequence.push('onDragStart');
        this.dragCount++;
        this.addLog(`[${this.dragCount}] onDragStart - 拖拽开始`);
      })
      .onDragEnd(() => {
        this.eventSequence.push('onDragEnd');
        this.addLog(`[${this.dragCount}] onDragEnd - 拖拽结束`);
        this.checkEventSequence();
      })
      .id('DragScenarios0280_DragItem')

      Text('事件序列：')
        .fontSize(12)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)
        .margin({ top: 10 })

      Text(this.eventSequence.length > 0 ? this.eventSequence.join(' → ') : '暂无事件')
        .fontSize(11)
        .fontColor('#666666')
        .width('100%')
        .padding(8)
        .backgroundColor('#F0F0F0')
        .borderRadius(4)

      Divider().height(1).color('#EEEEEE')

      Text('预期:\n• 组件被正常拖动\n• 回调时序正常: onDragStart → onDragEnd\n• 拖拽事件有正确闭环')
        .fontSize(10)
        .fontColor('#4CAF50')

      Scroll() {
        Column() {
          ForEach(this.testLog, (log: string, index: number) => {
            Text(log)
              .fontSize(9)
              .fontColor('#333333')
              .width('100%')
              .padding(2)
              .backgroundColor(index % 2 === 0 ? '#F5F5F5' : Color.White)
          })
        }
        .width('100%')
      }
      .height(80)
      .width('95%')
      .backgroundColor('#FAFAFA')
      .borderRadius(4)
    }
    .width('100%')
    .height('100%')
    .padding(8)
    .backgroundColor('#F5F5F5')
  }
}

