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
 * 用例ID: SUB_ACE_ACTION_EVENT_COMMONEVENT_DRAG_WAY-0050
 * 用例描述: 拖拽启动-长按+拖拽交互-长按超过500ms+快速移动超过5vp，并拖出窗口-pullleave
 * 测试条件: 新建eTS页面
 * 测试步骤: 1、添加拖拽事件 2、编译hap并安装运行 3、长按超过500ms+快速移动超过6vp，并拖出窗口 4、查看拖拽框架启动后，手势按住拖动离开窗口触发的事件
 * 预期结果: 销毁浮起控件 显示拖拽窗口
 */

import { hilog } from '@kit.PerformanceAnalysisKit';

@Entry
@ComponentV2
struct DragWay0050 {
  @Local testLog: string[] = [];
  @Local dragStatus: string = '等待长按';
  @Local pressStartTime: number = 0;
  @Local pressDuration: number = 0;
  @Local hasDragStarted: boolean = false;
  @Local hasLeftWindow: boolean = false;

  addLog(log: string): void {
    const timestamp = new Date().toLocaleTimeString();
    this.testLog.unshift(`[${timestamp}] ${log}`);
    if (this.testLog.length > 30) {
      this.testLog = this.testLog.slice(0, 30);
    }
    hilog.info(0x0000, 'DragWay0050', log);
  }

  build() {
    Column({ space: 8 }) {
      Text('SUB_ACE_ACTION_EVENT_COMMONEVENT_DRAG_WAY-0050')
        .fontSize(9)
        .fontWeight(FontWeight.Bold)
        .textAlign(TextAlign.Center)

      Text('拖拽启动 - 长按+拖出窗口')
        .fontSize(14)
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.Blue)

      Divider().height(1).color('#EEEEEE')

      Row({ space: 15 }) {
        Column() {
          Text('按压时长')
            .fontSize(11)
          Text(`${this.pressDuration}ms`)
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor(this.pressDuration >= 500 ? Color.Green : Color.Orange)
        }
        Column() {
          Text('拖拽状态')
            .fontSize(11)
          Text(`${this.dragStatus}`)
            .fontSize(12)
            .fontWeight(FontWeight.Bold)
            .fontColor(this.hasDragStarted ? Color.Green : Color.Gray)
        }
        Column() {
          Text('离开窗口')
            .fontSize(11)
          Text(`${this.hasLeftWindow ? '是 ✓' : '否'}`)
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .fontColor(this.hasLeftWindow ? Color.Green : Color.Gray)
        }
      }

      Button('重置')
        .onClick(() => {
          this.dragStatus = '等待长按';
          this.pressDuration = 0;
          this.hasDragStarted = false;
          this.hasLeftWindow = false;
          this.testLog = [];
          this.addLog('已重置');
        })
        .fontSize(12)
        .id('DragWay0050_ResetBtn')

      Divider().height(1).color('#EEEEEE')

      Text('长按超过500ms后快速拖出窗口：')
        .fontSize(12)
        .fontColor(Color.Gray)
        .alignSelf(ItemAlign.Start)

      Column() {
        Text('📦 拖拽测试组件')
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.White)
        Text('长按500ms+拖出窗口')
          .fontSize(12)
          .fontColor(Color.White)
          .margin({ top: 5 })
      }
      .width(200)
      .height(100)
      .backgroundColor('#FF5722')
      .justifyContent(FlexAlign.Center)
      .borderRadius(12)
      .draggable(true)
      .onTouch((event: TouchEvent) => {
        if (event.type === TouchType.Down) {
          this.pressStartTime = Date.now();
          this.dragStatus = '按压中...';
          this.addLog('Touch Down - 开始计时');
        } else if (event.type === TouchType.Up) {
          this.pressDuration = Date.now() - this.pressStartTime;
          this.addLog(`Touch Up - 按压时长: ${this.pressDuration}ms`);
        }
      })
      .onDragStart(() => {
        this.pressDuration = Date.now() - this.pressStartTime;
        this.hasDragStarted = true;
        this.dragStatus = '拖拽启动';
        this.addLog(`onDragStart - 按压${this.pressDuration}ms后启动拖拽`);
        if (this.pressDuration >= 500) {
          this.addLog('✓ 满足长按500ms条件');
        }
      })
      .onDragEnd(() => {
        this.dragStatus = '拖拽结束';
        this.addLog('onDragEnd - 拖拽结束');
      })
      .onDragLeave(() => {
        this.hasLeftWindow = true;
        this.addLog('onDragLeave - 拖出窗口区域');
      })
      .id('DragWay0050_DragItem')

      Divider().height(1).color('#EEEEEE')

      Text('操作说明：')
        .fontSize(12)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)

      Text('1. 长按组件超过500ms\n2. 快速移动超过5vp\n3. 拖出窗口区域\n4. 观察浮起控件和拖拽窗口')
        .fontSize(11)
        .fontColor(Color.Gray)
        .alignSelf(ItemAlign.Start)

      Text('预期: 销毁浮起控件，显示拖拽窗口')
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

