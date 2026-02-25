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
import { FrameNode, NodeController } from '@kit.ArkUI';

class MyNodeController extends NodeController {
  private rootNode: FrameNode | null = null;
  private child1: FrameNode | null = null;
  private child2: FrameNode | null = null;

  makeNode(uiContext: UIContext): FrameNode | null {
    this.rootNode = new FrameNode(uiContext);
    
    if (this.rootNode !== null) {
      // 创建第一个子节点 - 粉色
      this.child1 = new FrameNode(uiContext);
      this.child1.commonAttribute
        .width(100)
        .height(50)
        .backgroundColor('#FFC0CB'); // 粉色
      
      // 创建第二个子节点 - 橘色
      this.child2 = new FrameNode(uiContext);
      this.child2.commonAttribute
        .width(100)
        .height(50)
        .backgroundColor('#FFA500'); // 橘色
      
      this.rootNode.appendChild(this.child1);
      this.rootNode.appendChild(this.child2);
      
      hilog.info(0x0000, 'sally', 'FrameNode created with 2 children (pink and orange)');
    }
    
    return this.rootNode;
  }

  clearAllChildren() {
    if (this.rootNode !== null) {
      try {
        this.rootNode.clearChildren();
        hilog.info(0x0000, 'sally', 'newFrameNode.clearChildren success');
        this.child1 = null;
        this.child2 = null;
        return true;
      } catch (error) {
        const err = error as Error;
        hilog.error(0x0000, 'sally', `clearChildren error: ${err.message}`);
        return false;
      }
    }
    return false;
  }

  getRootNode(): FrameNode | null {
    return this.rootNode;
  }
}

@Entry
@Component
struct ActionEventCommonEventFrameNode09 {
  @State operationLog: string[] = [];
  @State frameNodeInfo: string = '未创建 FrameNode';
  private myNodeController: MyNodeController = new MyNodeController();

  aboutToAppear() {
    hilog.info(0x0000, 'testTag', '=== Index 页面加载 ===');
    this.addLog('Index 页面已加载');
    this.addLog('准备测试 FrameNode clearChildren 方法');
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
    Column({ space: 8 }) {
      // 标题区域
      Column({ space: 2 }) {
        Text('FrameNode 基础方法测试')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .fontColor('#FFFFFF')
          .width('100%')
          .textAlign(TextAlign.Center)

        Text('SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_0440')
          .fontSize(8)
          .fontColor('#FFD700')
          .fontFamily('Courier')
          .width('100%')
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding(10)
      .backgroundColor('#4CAF50')

      Scroll() {
        Column({ space: 8 }) {
          // 当前页面标识
          Column({ space: 3 }) {
            Text('📄 测试页面')
              .fontSize(11)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Text('创建new FrameNode，删除所有子节点clearChildren')
              .fontSize(14)
              .fontWeight(FontWeight.Bold)
              .fontColor('#FFFFFF')
              .width('100%')
              .padding(8)
              .backgroundColor('#4CAF50')
              .borderRadius(6)
              .textAlign(TextAlign.Center)
          }
          .width('96%')
          .alignItems(HorizontalAlign.Start)

          // FrameNode 显示区域
          Column({ space: 3 }) {
            Text('🔍 FrameNode 显示区域')
              .fontSize(11)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            NodeContainer(this.myNodeController)
              .width(100)
              .height(100)
              .backgroundColor('#F0F0F0')
              .border({ width: 2, color: '#4CAF50' })
          }
          .width('96%')
          .alignItems(HorizontalAlign.Start)

          // FrameNode 状态显示
          Column({ space: 3 }) {
            Text('📊 FrameNode 状态')
              .fontSize(11)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Text(this.frameNodeInfo)
              .fontSize(13)
              .fontColor('#4CAF50')
              .fontWeight(FontWeight.Bold)
              .width('100%')
              .padding(10)
              .backgroundColor('#E8F5E9')
              .borderRadius(6)
              .textAlign(TextAlign.Center)
              .border({ width: 2, color: '#4CAF50' })
          }
          .width('96%')
          .alignItems(HorizontalAlign.Start)

          // 操作按钮区域
          Column({ space: 6 }) {
            Text('🎮 操作按钮')
              .fontSize(11)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Button('基础方法')
              .id('ActionEventCommonEventFrameNode09_01')
              .fontSize(14)
              .width('100%')
              .height(40)
              .backgroundColor('#4CAF50')
              .fontColor('#FFFFFF')
              .fontWeight(FontWeight.Bold)
              .onClick(() => {
                this.addLog('点击 "基础方法" 按钮');
                this.addLog('显示粉色和橘色子节点');
                this.frameNodeInfo = '已创建 FrameNode (2个子节点)';
              })

            Button('clearChildrenFor')
              .id('ActionEventCommonEventFrameNode09_02')
              .fontSize(14)
              .width('100%')
              .height(40)
              .backgroundColor('#2196F3')
              .fontColor('#FFFFFF')
              .fontWeight(FontWeight.Bold)
              .onClick(() => {
                this.addLog('点击 "clearChildrenFor" 按钮');
                try {
                  const success = this.myNodeController.clearAllChildren();
                  if (success) {
                    this.addLog('✓ newFrameNode.clearChildren success');
                    this.addLog('✓ 粉色部分和橘色部分都被删除');
                    this.frameNodeInfo = '所有子节点已删除';
                  } else {
                    this.addLog('✗ clearChildren 失败');
                    this.frameNodeInfo = 'clearChildren 失败';
                  }
                } catch (error) {
                  const err = error as Error;
                  this.addLog(`✗ 错误: ${err.message}`);
                  hilog.error(0x0000, 'sally', `Error: ${err.message}`);
                }
              })

            Button('重置测试')
              .fontSize(13)
              .width('100%')
              .height(38)
              .backgroundColor('#607D8B')
              .fontColor('#FFFFFF')
              .onClick(() => {
                this.myNodeController = new MyNodeController();
                this.frameNodeInfo = '未创建 FrameNode';
                this.addLog('✓ 测试已重置');
              })
          }
          .width('96%')
          .alignItems(HorizontalAlign.Start)

          // 操作日志
          Column({ space: 3 }) {
            Text('📋 事件日志')
              .fontSize(11)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Scroll() {
              Column({ space: 1 }) {
                if (this.operationLog.length > 0) {
                  ForEach(this.operationLog, (log: string, index: number) => {
                    Text(log)
                      .fontSize(9)
                      .fontColor(log.includes('✓') ? '#4CAF50' :
                        log.includes('BEGIN') ? '#2E7D32' : '#666666')
                      .fontFamily('Courier')
                      .width('100%')
                      .padding(4)
                      .backgroundColor(index % 2 === 0 ? '#F5F5F5' : '#FFFFFF')
                  }, (log: string, index: number) => `${index}_${log}`)
                } else {
                  Text('暂无事件日志')
                    .fontSize(9)
                    .fontColor('#999999')
                    .width('100%')
                    .textAlign(TextAlign.Center)
                    .padding(6)
                }
              }
              .width('100%')
            }
            .width('100%')
            .height(150)
            .backgroundColor('#FAFAFA')
            .borderRadius(4)
            .border({ width: 1, color: '#E0E0E0' })
            .scrollBar(BarState.Auto)
          }
          .width('96%')
          .alignItems(HorizontalAlign.Start)

          // 测试说明
          Column({ space: 3 }) {
            Text('📝 测试说明与预期结果')
              .fontSize(11)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Column({ space: 2 }) {
              Text('🎯 测试步骤：')
                .fontSize(10)
                .fontColor('#4CAF50')
                .fontWeight(FontWeight.Bold)
                .width('100%')

              Text('1️⃣ 进入 demo，点击 "基础方法"')
                .fontSize(10)
                .fontColor('#666666')
                .width('100%')
                .margin({ left: 8 })

              Text('2️⃣ 点击 "clearChildrenFor" 按钮')
                .fontSize(10)
                .fontColor('#666666')
                .width('100%')
                .margin({ left: 8 })

              Text('3️⃣ 日志筛选关键字 "sally"，查看页面变化')
                .fontSize(10)
                .fontColor('#666666')
                .width('100%')
                .margin({ left: 8 })

              Divider()
                .margin({ top: 3, bottom: 3 })

              Text('✅ 预期结果：')
                .fontSize(10)
                .fontColor('#4CAF50')
                .fontWeight(FontWeight.Bold)
                .width('100%')

              Text('日志打印: newFrameNode.clearChildren success')
                .fontSize(10)
                .fontColor('#4CAF50')
                .fontWeight(FontWeight.Bold)
                .width('100%')
                .margin({ left: 8 })

              Text('粉色部分和橘色部分都被删除')
                .fontSize(10)
                .fontColor('#4CAF50')
                .fontWeight(FontWeight.Bold)
                .width('100%')
                .margin({ left: 8 })

              Divider()
                .margin({ top: 3, bottom: 3 })

              Text('📌 FrameNode 方法说明：')
                .fontSize(9)
                .fontColor('#666666')
                .fontWeight(FontWeight.Bold)
                .width('100%')

              Text('  clearChildren() - 删除所有子节点')
                .fontSize(9)
                .fontColor('#4CAF50')
                .fontFamily('Courier')
                .fontWeight(FontWeight.Bold)
                .width('100%')
                .margin({ left: 4 })

              Text('  测试要点：删除有子节点的FrameNode的所有子节点')
                .fontSize(9)
                .fontColor('#2196F3')
                .fontFamily('Courier')
                .width('100%')
                .margin({ left: 4 })

              Divider()
                .margin({ top: 3, bottom: 3 })

              Text('💡 提示：使用 hilog 过滤 "sally" 查看详细日志')
                .fontSize(9)
                .fontColor('#666666')
                .fontStyle(FontStyle.Italic)
                .width('100%')
                .margin({ left: 8 })

              Text('命令: hdc shell hilog | grep sally')
                .fontSize(8)
                .fontColor('#999999')
                .fontFamily('Courier')
                .width('100%')
                .margin({ left: 8 })
            }
            .width('100%')
            .padding(8)
            .backgroundColor('#E8F5E9')
            .borderRadius(4)
            .alignItems(HorizontalAlign.Start)
          }
          .width('96%')
          .alignItems(HorizontalAlign.Start)

        }
        .width('100%')
        .padding({ left: 8, right: 8, bottom: 8 })
      }
      .layoutWeight(1)
      .scrollBar(BarState.Auto)

    }
    .width('100%')
    .height('100%')
    .backgroundColor('#FAFAFA')
  }
}

