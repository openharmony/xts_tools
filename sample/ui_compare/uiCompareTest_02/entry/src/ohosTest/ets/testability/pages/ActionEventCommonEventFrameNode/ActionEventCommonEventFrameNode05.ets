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

import router from '@ohos.router';
import hilog from '@ohos.hilog';
import { FrameNode } from '@kit.ArkUI';

@Entry
@Component
struct ActionEventCommonEventFrameNode05 {
  @State operationLog: string[] = [];
  @State frameNodeInfo: string = '未创建 FrameNode';
  private frameChildNode: FrameNode | null = null;

  aboutToAppear() {
    hilog.info(0x0000, 'testTag', '=== Index 页面加载 ===');
    this.addLog('Index 页面已加载');
    this.addLog('准备测试 FrameNode getNextSibling 方法');
  }

  addLog(message: string) {
    const timestamp = new Date().toLocaleTimeString();
    const log = `[${timestamp}] ${message}`;
    this.operationLog.unshift(log);
    if (this.operationLog.length > 20) {
      this.operationLog.pop();
    }
    hilog.info(0x0000, 'sally', log);
  }

  build() {
    Column({ space: 12 }) {
      // 标题区域
      Column({ space: 4 }) {
        Text('FrameNode 基础方法测试')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .fontColor('#FFFFFF')
          .width('100%')
          .textAlign(TextAlign.Center)

        Text('SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_0081')
          .fontSize(9)
          .fontColor('#FFD700')
          .fontFamily('Courier')
          .width('100%')
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding(15)
      .backgroundColor('#4CAF50')

      Scroll() {
        Column({ space: 12 }) {
          // 当前页面标识
          Column({ space: 5 }) {
            Text('📄 测试页面')
              .fontSize(12)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Text('创建 FrameNode，查询同级节点(无下一个同级节点)')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .fontColor('#FFFFFF')
              .width('100%')
              .padding(12)
              .backgroundColor('#4CAF50')
              .borderRadius(8)
              .textAlign(TextAlign.Center)
          }
          .width('94%')
          .alignItems(HorizontalAlign.Start)

          // FrameNode 状态显示
          Column({ space: 5 }) {
            Text('🔍 FrameNode 状态')
              .fontSize(12)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Text(this.frameNodeInfo)
              .fontSize(14)
              .fontColor('#4CAF50')
              .fontWeight(FontWeight.Bold)
              .width('100%')
              .padding(15)
              .backgroundColor('#E8F5E9')
              .borderRadius(8)
              .textAlign(TextAlign.Center)
              .border({ width: 2, color: '#4CAF50' })
          }
          .width('94%')
          .alignItems(HorizontalAlign.Start)

          // 操作按钮区域
          Column({ space: 8 }) {
            Text('🎮 操作按钮')
              .fontSize(12)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Button('230 基础方法补充')
              .fontSize(16)
              .width('100%')
              .height(50)
              .backgroundColor('#4CAF50')
              .id('ActionEventCommonEventFrameNode05_01')
              .fontColor('#FFFFFF')
              .fontWeight(FontWeight.Bold)
              .onClick(() => {
                this.addLog('点击 "230 基础方法补充" 按钮');
                this.addLog('准备创建 FrameNode 并测试 getNextSibling');
              })

            Button('getNextSibling')
              .id('getNextSiblingButton')
              .fontSize(16)
              .width('100%')
              .height(50)
              .backgroundColor('#2196F3')
              .id('ActionEventCommonEventFrameNode05_02')
              .fontColor('#FFFFFF')
              .fontWeight(FontWeight.Bold)
              .onClick(() => {
                this.addLog('点击 "getNextSibling" 按钮');
                try {
                  this.frameChildNode = new FrameNode(this.getUIContext());
                  this.addLog('✓ 创建了新的 FrameNode (无同级节点)');
                  // 查询下一个同级节点
                  const nextSibling = this.frameChildNode.getNextSibling();
                  const result = `new frameChild getNextSibling: ${nextSibling}`;
                  this.addLog(result);
                  hilog.info(0x0000, 'sally', result);
                  this.frameNodeInfo = nextSibling ? '有同级节点' : 'getNextSibling 返回 null';
                  if (nextSibling === null) {
                    this.addLog('✓ 验证通过：无下一个同级节点时 getNextSibling() 返回 null');
                  }
                } catch (error) {
                  const err = error as Error;
                  this.addLog(`✗ 错误: ${err.message}`);
                  hilog.error(0x0000, 'sally', `Error: ${err.message}`);
                }
              })

            Button('addChild')
              .id('addChildButton')
              .fontSize(16)
              .width('100%')
              .id('ActionEventCommonEventFrameNode05_03')
              .height(50)
              .backgroundColor('#FF9800')
              .fontColor('#FFFFFF')
              .fontWeight(FontWeight.Bold)
              .onClick(() => {
                this.addLog('点击 "addChild" 按钮');

                try {
                  if (!this.frameChildNode) {
                    this.addLog('✗ 请先点击 getNextSibling 创建节点');
                    return;
                  }
                  // 创建父节点和另一个子节点
                  const parentNode = new FrameNode(this.getUIContext());
                  parentNode.appendChild(this.frameChildNode);
                  const siblingNode = new FrameNode(this.getUIContext());
                  parentNode.appendChild(siblingNode);
                  
                  this.addLog('✓ 已创建父节点并添加两个子节点（形成同级关系）');
                  hilog.info(0x0000, 'sally', 'Sibling nodes added successfully');
                  
                  const nextSibling = this.frameChildNode.getNextSibling();
                  const result = `after addChild getNextSibling: ${nextSibling}`;
                  this.addLog(result);
                  hilog.info(0x0000, 'sally', result);
                  this.frameNodeInfo = nextSibling ? '✓ 已有同级节点' : '✗ 仍无同级节点';
                  if (nextSibling !== null) {
                    this.addLog('✓ 验证通过：存在同级节点时 getNextSibling() 返回下一个同级节点');
                  }

                } catch (error) {
                  const err = error as Error;
                  this.addLog(`✗ 错误: ${err.message}`);
                  hilog.error(0x0000, 'sally', `Error: ${err.message}`);
                }
              })

            Button('重置测试')
              .fontSize(14)
              .width('100%')
              .height(45)
              .backgroundColor('#607D8B')
              .fontColor('#FFFFFF')
              .onClick(() => {
                this.frameChildNode = null;
                this.frameNodeInfo = '未创建 FrameNode';
                this.addLog('✓ 测试已重置');
              })
          }
          .width('94%')
          .alignItems(HorizontalAlign.Start)

          // 操作日志
          Column({ space: 5 }) {
            Text('📋 事件日志')
              .fontSize(12)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Scroll() {
              Column({ space: 2 }) {
                if (this.operationLog.length > 0) {
                  ForEach(this.operationLog, (log: string, index: number) => {
                    Text(log)
                      .fontSize(10)
                      .fontColor(log.includes('✓') ? '#4CAF50' :
                        log.includes('BEGIN') ? '#2E7D32' : '#666666')
                      .fontFamily('Courier')
                      .width('100%')
                      .padding(5)
                      .backgroundColor(index % 2 === 0 ? '#F5F5F5' : '#FFFFFF')
                  }, (log: string, index: number) => `${index}_${log}`)
                } else {
                  Text('暂无事件日志')
                    .fontSize(10)
                    .fontColor('#999999')
                    .width('100%')
                    .textAlign(TextAlign.Center)
                    .padding(8)
                }
              }
              .width('100%')
            }
            .width('100%')
            .height(250)
            .backgroundColor('#FAFAFA')
            .borderRadius(6)
            .border({ width: 1, color: '#E0E0E0' })
            .scrollBar(BarState.Auto)
          }
          .width('94%')
          .alignItems(HorizontalAlign.Start)

          // 测试说明
          Column({ space: 5 }) {
            Text('📝 测试说明与预期结果')
              .fontSize(12)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Column({ space: 4 }) {
              Text('🎯 测试步骤：')
                .fontSize(11)
                .fontColor('#4CAF50')
                .fontWeight(FontWeight.Bold)
                .width('100%')

              Text('1️⃣ 进入 demo，点击 "230 基础方法补充"')
                .fontSize(11)
                .fontColor('#666666')
                .width('100%')
                .margin({ left: 10 })

              Text('2️⃣ 点击 "getNextSibling" 按钮')
                .fontSize(11)
                .fontColor('#666666')
                .width('100%')
                .margin({ left: 10 })

              Text('3️⃣ 点击 "addChild" 按钮，日志筛选关键字 "sally"')
                .fontSize(11)
                .fontColor('#666666')
                .width('100%')
                .margin({ left: 10 })

              Divider()
                .margin({ top: 5, bottom: 5 })

              Text('✅ 预期结果：')
                .fontSize(11)
                .fontColor('#4CAF50')
                .fontWeight(FontWeight.Bold)
                .width('100%')

              Text('• 日志先输出: new frameChild getNextSibling: null')
                .fontSize(11)
                .fontColor('#4CAF50')
                .fontWeight(FontWeight.Bold)
                .width('100%')
                .margin({ left: 10 })

              Text('• 添加同级节点后再次查询返回同级节点对象')
                .fontSize(11)
                .fontColor('#4CAF50')
                .fontWeight(FontWeight.Bold)
                .width('100%')
                .margin({ left: 10 })

              Text('• hilog 包含关键字 "sally"')
                .fontSize(11)
                .fontColor('#4CAF50')
                .fontWeight(FontWeight.Bold)
                .width('100%')
                .margin({ left: 10 })

              Divider()
                .margin({ top: 5, bottom: 5 })

              Text('📌 FrameNode 方法说明：')
                .fontSize(10)
                .fontColor('#666666')
                .fontWeight(FontWeight.Bold)
                .width('100%')

              Text('  getNextSibling() - 获取下一个同级节点')
                .fontSize(10)
                .fontColor('#4CAF50')
                .fontFamily('Courier')
                .fontWeight(FontWeight.Bold)
                .width('100%')
                .margin({ left: 5 })

              Text('  appendChild(child) - 添加子节点（建立同级关系）')
                .fontSize(10)
                .fontColor('#FF9800')
                .fontFamily('Courier')
                .width('100%')
                .margin({ left: 5 })

              Text('  返回值: 无下一个同级节点时返回 null')
                .fontSize(10)
                .fontColor('#2196F3')
                .fontFamily('Courier')
                .width('100%')
                .margin({ left: 5 })

              Divider()
                .margin({ top: 5, bottom: 5 })

              Text('💡 提示：使用 hilog 过滤 "sally" 查看详细日志')
                .fontSize(10)
                .fontColor('#666666')
                .fontStyle(FontStyle.Italic)
                .width('100%')
                .margin({ left: 10 })

              Text('命令: hdc shell hilog | grep sally')
                .fontSize(9)
                .fontColor('#999999')
                .fontFamily('Courier')
                .width('100%')
                .margin({ left: 10 })
            }
            .width('100%')
            .padding(10)
            .backgroundColor('#E8F5E9')
            .borderRadius(6)
            .alignItems(HorizontalAlign.Start)
          }
          .width('94%')
          .alignItems(HorizontalAlign.Start)

        }
        .width('100%')
        .padding(
          {
            left: 10,
            right: 10,
            bottom: 10
          })
      }
      .layoutWeight(1)
      .scrollBar(BarState.Auto)

    }
    .width('100%')
    .height('100%')
    .backgroundColor('#FAFAFA')
  }
}

