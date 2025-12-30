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
 * 用例ID: SUB_ACE_ACTION_EVENT_COMMONEVENT_DISTRIBUTE_0010
 * 用例描述: 分屏条正常滑动后，窗口显示正常
 * 测试条件: 刷新版本镜像
 * 测试步骤: 窗口调用InjectPointerEvent接口向ARKUI组件传递事件，滑动页面
 * 预期结果: 页面可正常滑动
 */

import { hilog } from '@kit.PerformanceAnalysisKit';

@Entry
@ComponentV2
struct Distribute0010 {
  @Local testLog: string[] = [];
  @Local scrollOffset: number = 0;
  @Local isScrolling: boolean = false;
  @Local listData: number[] = this.generateListData(50);

  private generateListData(count: number): number[] {
    let result: number[] = [];
    for (let i: number = 1; i <= count; i++) {
      result.push(i);
    }
    return result;
  }

  addLog(log: string): void {
    const timestamp = new Date().toLocaleTimeString();
    this.testLog.unshift(`[${timestamp}] ${log}`);
    if (this.testLog.length > 30) {
      this.testLog = this.testLog.slice(0, 30);
    }
    hilog.info(0x0000, 'Distribute0010', log);
  }

  build() {
    Column({ space: 8 }) {
      Text('SUB_ACE_ACTION_EVENT_COMMONEVENT_DISTRIBUTE_0010')
        .fontSize(10)
        .fontWeight(FontWeight.Bold)
        .textAlign(TextAlign.Center)

      Text('分屏条正常滑动 - 窗口显示正常')
        .fontSize(14)
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.Blue)

      Divider().height(1).color('#EEEEEE')

      Row({ space: 20 }) {
        Column() {
          Text('滚动偏移')
            .fontSize(11)
          Text(`${this.scrollOffset.toFixed(0)}`)
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor(Color.Blue)
        }
        Column() {
          Text('状态')
            .fontSize(11)
          Text(`${this.isScrolling ? '滑动中...' : '静止'}`)
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .fontColor(this.isScrolling ? Color.Orange : Color.Green)
        }
      }

      Divider().height(1).color('#EEEEEE')

      Text('分屏测试区域（请在分屏模式下测试）')
        .fontSize(12)
        .fontColor(Color.Gray)

      Scroll() {
        Column() {
          ForEach(this.listData, (item: number) => {
            Row() {
              Text(`📦 列表项 ${item}`)
                .fontSize(16)
                .fontColor('#333333')
            }
            .width('100%')
            .height(60)
            .backgroundColor(item % 2 === 0 ? '#E8F5E9' : '#FFFFFF')
            .justifyContent(FlexAlign.Center)
            .borderRadius(4)
            .margin({ top: 2 })
          })
        }
        .width('100%')
      }
      .width('100%')
      .height(300)
      .backgroundColor('#FAFAFA')
      .borderRadius(8)
      .onScroll((xOffset: number, yOffset: number) => {
        this.scrollOffset += yOffset;
        this.isScrolling = true;
        this.addLog(`滚动: offset=${this.scrollOffset.toFixed(0)}`);
      })
      .onScrollStop(() => {
        this.isScrolling = false;
        this.addLog('滚动停止');
      })
      .id('Distribute0010_Scroll')

      Divider().height(1).color('#EEEEEE')

      Text('操作说明：')
        .fontSize(12)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)

      Text('1. 进入分屏模式\n2. 将本demo分屏到下方\n3. 使用InjectPointerEvent或手动滑动页面\n4. 观察页面是否正常滑动')
        .fontSize(11)
        .fontColor(Color.Gray)
        .alignSelf(ItemAlign.Start)

      Text('预期: 页面可正常滑动')
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

