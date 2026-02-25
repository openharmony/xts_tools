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
  private childNode: FrameNode | null = null;

  makeNode(uiContext: UIContext): FrameNode | null {
    this.rootNode = new FrameNode(uiContext);
    if (this.rootNode !== null) {
      this.childNode = new FrameNode(uiContext);
      this.childNode.commonAttribute
        .width(100)
        .height(100)
        .backgroundColor('#FFFF00');
      this.rootNode.appendChild(this.childNode);
      hilog.info(0x0000, 'sally', 'FrameNode created with child node (yellow)');
    }

    return this.rootNode;
  }

  changeChildColor() {
    if (this.childNode !== null) {
      this.childNode.commonAttribute.backgroundColor('#FFC0CB'); // 粉色
      hilog.info(0x0000, 'sally', 'Child background color changed to pink');
      return true;
    }
    return false;
  }

  disposeChildAfterRemove() {
    if (this.rootNode !== null && this.childNode !== null) {
      try {
        this.rootNode.removeChild(this.childNode);
        hilog.info(0x0000, 'sally', 'Child node removed from parent');
        this.childNode.dispose();
        hilog.info(0x0000, 'sally', 'Child node disposed successfully');
        this.childNode = null;
        return true;
      } catch (error) {
        const err = error as Error;
        hilog.error(0x0000, 'sally', `Error: ${err.message}`);
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
struct ActionEventCommonEventFrameNode06 {
  @State operationLog: string[] = [];
  @State testStatus: string = '等待测试';
  private myNodeController: MyNodeController = new MyNodeController();

  aboutToAppear() {
    hilog.info(0x0000, 'testTag', '=== FrameNode Dispose Test 页面加载 ===');
    this.addLog('页面已加载');
    this.addLog('准备测试 FrameNode dispose 方法');
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
        Text('FrameNode Dispose 测试')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .fontColor('#FFFFFF')
          .width('100%')
          .textAlign(TextAlign.Center)

        Text('SUB_ACE_ACTION_EVENT_COMMONEVENT_FRAMENODE_0361')
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
          // 测试页面标识
          Column({ space: 3 }) {
            Text('📄 测试场景')
              .fontSize(11)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Text('FrameNode中dispose在remove后调用')
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

          // FrameNode 显示区域（左上角小框）
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

          // 状态显示
          Column({ space: 3 }) {
            Text('📊 测试状态')
              .fontSize(11)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Text(this.testStatus)
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

            Button('frameNode')
              .id('ActionEventCommonEventFrameNode06_01')
              .fontSize(14)
              .width('100%')
              .height(40)
              .backgroundColor('#4CAF50')
              .fontColor('#FFFFFF')
              .fontWeight(FontWeight.Bold)
              .onClick(() => {
                this.addLog('点击 "frameNode" 按钮');
                this.addLog('FrameNode 已创建，左上角显示黄色小框');
                this.testStatus = 'FrameNode 已创建（黄色框）';
              })

            Button('changeChildBGColor')
              .id('ActionEventCommonEventFrameNode06_02')
              .fontSize(14)
              .width('100%')
              .height(40)
              .backgroundColor('#2196F3')
              .fontColor('#FFFFFF')
              .fontWeight(FontWeight.Bold)
              .onClick(() => {
                this.addLog('点击 "changeChildBGColor" 按钮');
                try {
                  const success = this.myNodeController.changeChildColor();
                  if (success) {
                    this.addLog('✓ 子节点背景颜色已从黄色变为粉色');
                    this.testStatus = '黄色框已变为粉色';
                  } else {
                    this.addLog('✗ 改变颜色失败：子节点不存在');
                    this.testStatus = '改变颜色失败';
                  }
                } catch (error) {
                  const err = error as Error;
                  this.addLog(`✗ 错误: ${err.message}`);
                  hilog.error(0x0000, 'sally', `Error: ${err.message}`);
                }
              })

            Button('disposeChildAfterRemove')
              .id('ActionEventCommonEventFrameNode06_03')
              .fontSize(14)
              .width('100%')
              .height(40)
              .backgroundColor('#FF9800')
              .fontColor('#FFFFFF')
              .fontWeight(FontWeight.Bold)
              .onClick(() => {
                this.addLog('点击 "disposeChildAfterRemove" 按钮');

                try {
                  const success = this.myNodeController.disposeChildAfterRemove();
                  if (success) {
                    this.addLog('✓ 先执行 remove 移除子节点');
                    this.addLog('✓ 再执行 dispose 销毁子节点');
                    this.addLog('✓ 左上角小框已消失');
                    this.testStatus = '子节点已移除并销毁（小框消失）';
                  } else {
                    this.addLog('✗ 操作失败：节点不存在');
                    this.testStatus = '操作失败';
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
                this.testStatus = '等待测试';
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
                        log.includes('✗') ? '#F44336' : '#666666')
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

              Text('1️⃣ 打开应用，点击 "frameNode" 按钮')
                .fontSize(10)
                .fontColor('#666666')
                .width('100%')
                .margin({ left: 8 })

              Text('2️⃣ 点击 "changeChildBGColor" 按钮')
                .fontSize(10)
                .fontColor('#666666')
                .width('100%')
                .margin({ left: 8 })

              Text('3️⃣ 点击 "disposeChildAfterRemove" 按钮')
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

              Text('步骤 2：黄色框变换为粉色')
                .fontSize(10)
                .fontColor('#4CAF50')
                .fontWeight(FontWeight.Bold)
                .width('100%')
                .margin({ left: 8 })

              Text('步骤 3：左上角小框消失')
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

              Text('  removeChild(child) - 从父节点移除子节点')
                .fontSize(9)
                .fontColor('#FF9800')
                .fontFamily('Courier')
                .fontWeight(FontWeight.Bold)
                .width('100%')
                .margin({ left: 4 })

              Text('  dispose() - 销毁节点并释放资源')
                .fontSize(9)
                .fontColor('#F44336')
                .fontFamily('Courier')
                .fontWeight(FontWeight.Bold)
                .width('100%')
                .margin({ left: 4 })

              Text('  测试要点：先remove再dispose的正确调用顺序')
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
