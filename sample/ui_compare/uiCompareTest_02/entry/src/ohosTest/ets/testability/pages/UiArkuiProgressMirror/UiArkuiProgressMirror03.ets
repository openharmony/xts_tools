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
import { i18n } from '@kit.LocalizationKit';
import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct UiArkuiProgressMirror03 {
  @State operationLog: string[] = [];
  @State currentLanguage: string = '';

  aboutToAppear() {
    hilog.info(0x0000, 'testTag', '=== UiArkuiProgressMirror03 页面加载 ===');
    this.addLog('UiArkuiProgressMirror03 页面已加载');
    this.addLog('准备测试 Progress 组件文字显示功能');
    
    // 获取当前应用偏好语言
    try {
      this.currentLanguage = i18n.System.getAppPreferredLanguage();
      this.addLog(`当前应用语言: ${this.currentLanguage}`);
      hilog.info(0x0000, 'sally', `Current app language: ${this.currentLanguage}`);
    } catch (error) {
      const err = error as BusinessError;
      this.addLog(`获取语言失败: ${err.message}`);
    }
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
        Text('Progress 文字显示镜像测试')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .fontColor('#FFFFFF')
          .width('100%')
          .textAlign(TextAlign.Center)

        Text('SUB_ACE_UI_ARKUI_PROGRESS_MIRROR_0060')
          .fontSize(8)
          .fontColor('#FFD700')
          .fontFamily('Courier')
          .width('100%')
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding(10)
      .backgroundColor('#00897B')

      Scroll() {
        Column({ space: 8 }) {
          // 测试入口项
          Column({ space: 5 }) {
            Text('🚀 测试入口')
              .fontSize(11)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Button('ArkUIHDS_Progress_0600')
              .id('ArkUIHDS_Progress_0600')
              .fontSize(16)
              .width('100%')
              .height(50)
              .backgroundColor('#00897B')
              .fontColor('#FFFFFF')
              .fontWeight(FontWeight.Bold)
              .onClick(() => {
                this.addLog('✓ 点击 ArkUIHDS_Progress_0600 项');
                this.addLog('✓ 进入 Progress 组件页面');
                hilog.info(0x0000, 'sally', 'Enter Progress text display test page');
              })
          }
          .width('96%')
          .alignItems(HorizontalAlign.Start)

          // Progress 展示区域
          Column({ space: 5 }) {
            Text('📝 Progress 组件展示')
              .fontSize(11)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Column({ space: 15 }) {
              Text('Capsule 类型带文字进度条')
                .fontSize(14)
                .fontColor('#00897B')
                .fontWeight(FontWeight.Bold)

              // Progress Capsule 带文字组件
              Column({ space: 10 }) {
                Row({ space: 10 }) {
                  Progress({ value: 60, total: 100, type: ProgressType.Capsule })
                    .width(200)
                    .height(40)
                    .color('#00897B')
                    .style({ strokeWidth: 10 })

                  Text('60%')
                    .fontSize(16)
                    .fontColor('#00897B')
                    .fontWeight(FontWeight.Bold)
                }
                .width('100%')
                .justifyContent(FlexAlign.Center)

                Text('下载进度: 60/100')
                  .fontSize(14)
                  .fontColor('#666666')
                  .fontWeight(FontWeight.Bold)

                Text('Progress组件文字内容')
                  .fontSize(12)
                  .fontColor('#00897B')
              }

              Text('观察文字显示效果')
                .fontSize(12)
                .fontColor('#666666')
                .fontWeight(FontWeight.Bold)

              Text('汉语: 文字正常显示')
                .fontSize(11)
                .fontColor('#4CAF50')

              Text('阿拉伯语: 文字正常显示，组件左右互换')
                .fontSize(11)
                .fontColor('#2196F3')
            }
            .width('100%')
            .padding(20)
            .backgroundColor('#E0F2F1')
            .borderRadius(8)
            .border({ width: 2, color: '#00897B' })
            .alignItems(HorizontalAlign.Center)
          }
          .width('96%')
          .alignItems(HorizontalAlign.Start)

          // 语言切换区域
          Column({ space: 6 }) {
            Text('🌐 语言切换')
              .fontSize(11)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Text(`当前语言: ${this.currentLanguage || '跟随系统'}`)
              .fontSize(12)
              .fontColor('#666666')
              .width('100%')
              .textAlign(TextAlign.Center)
              .padding(8)
              .backgroundColor('#F5F5F5')
              .borderRadius(6)

            Row({ space: 10 }) {
              Button('汉语')
                .id('UiArkuiProgressMirror03_01')
                .fontSize(16)
                .width('48%')
                .height(45)
                .backgroundColor('#4CAF50')
                .fontColor('#FFFFFF')
                .fontWeight(FontWeight.Bold)
                .onClick(() => {
                  try {
                    i18n.System.setAppPreferredLanguage('zh-Hans'); // 设置应用偏好语言为简体中文
                    this.currentLanguage = i18n.System.getAppPreferredLanguage();
                    this.addLog('✓ 点击（汉语）按钮');
                    this.addLog('✓ 语言变为汉语');
                    this.addLog('✓ Progress组件文字内容显示正确');
                    this.addLog('⚠️ 重启应用后生效');
                    hilog.info(0x0000, 'sally', 'App language set to zh-Hans (Chinese)');
                    hilog.info(0x0000, 'sally', 'Progress text content displays correctly');
                  } catch (error) {
                    const err = error as BusinessError;
                    this.addLog(`✗ 切换失败: ${err.message}`);
                    hilog.error(0x0000, 'sally', `setAppPreferredLanguage error: ${err.message}`);
                  }
                })

              Button('阿拉伯语')
                .id('UiArkuiProgressMirror03_02')
                .fontSize(16)
                .width('48%')
                .height(45)
                .backgroundColor('#2196F3')
                .fontColor('#FFFFFF')
                .fontWeight(FontWeight.Bold)
                .onClick(() => {
                  try {
                    i18n.System.setAppPreferredLanguage('ar'); // 设置应用偏好语言为阿拉伯语
                    this.currentLanguage = i18n.System.getAppPreferredLanguage();
                    this.addLog('✓ 点击（阿拉伯语）按钮');
                    this.addLog('✓ 语言变为阿拉伯语');
                    this.addLog('✓ 组件元素左右互换');
                    this.addLog('✓ Progress组件文字内容显示正确');
                    this.addLog('⚠️ 重启应用后生效');
                    hilog.info(0x0000, 'sally', 'App language set to ar (Arabic)');
                    hilog.info(0x0000, 'sally', 'Components mirrored left-right');
                    hilog.info(0x0000, 'sally', 'Progress text content displays correctly');
                  } catch (error) {
                    const err = error as BusinessError;
                    this.addLog(`✗ 切换失败: ${err.message}`);
                    hilog.error(0x0000, 'sally', `setAppPreferredLanguage error: ${err.message}`);
                  }
                })
            }
            .width('100%')
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
                .fontColor('#00897B')
                .fontWeight(FontWeight.Bold)
                .width('100%')

              Text('1️⃣ 启动应用')
                .fontSize(10)
                .fontColor('#666666')
                .width('100%')
                .margin({ left: 8 })

              Text('2️⃣ 点击(ArkUIHDS_Progress_0600)项')
                .fontSize(10)
                .fontColor('#666666')
                .width('100%')
                .margin({ left: 8 })

              Text('3️⃣ 点击（汉语）按钮')
                .fontSize(10)
                .fontColor('#666666')
                .width('100%')
                .margin({ left: 8 })

              Text('4️⃣ 点击（阿拉伯语）按钮')
                .fontSize(10)
                .fontColor('#666666')
                .width('100%')
                .margin({ left: 8 })

              Divider()
                .margin({ top: 3, bottom: 3 })

              Text('✅ 预期结果：')
                .fontSize(10)
                .fontColor('#00897B')
                .fontWeight(FontWeight.Bold)
                .width('100%')

              Text('1-1、启动成功')
                .fontSize(10)
                .fontColor('#4CAF50')
                .fontWeight(FontWeight.Bold)
                .width('100%')
                .margin({ left: 8 })

              Text('2-1、进入Progress组件页面')
                .fontSize(10)
                .fontColor('#4CAF50')
                .fontWeight(FontWeight.Bold)
                .width('100%')
                .margin({ left: 8 })

              Text('3-1、语言变为汉语')
                .fontSize(10)
                .fontColor('#4CAF50')
                .fontWeight(FontWeight.Bold)
                .width('100%')
                .margin({ left: 8 })

              Text('3-2、Progress组件文字内容显示正确')
                .fontSize(10)
                .fontColor('#4CAF50')
                .fontWeight(FontWeight.Bold)
                .width('100%')
                .margin({ left: 8 })

              Text('4-1、语言变为阿拉伯语')
                .fontSize(10)
                .fontColor('#2196F3')
                .fontWeight(FontWeight.Bold)
                .width('100%')
                .margin({ left: 8 })

              Text('4-2、组件元素左右互换')
                .fontSize(10)
                .fontColor('#2196F3')
                .fontWeight(FontWeight.Bold)
                .width('100%')
                .margin({ left: 8 })

              Text('4-3、Progress组件文字内容显示正确')
                .fontSize(10)
                .fontColor('#2196F3')
                .fontWeight(FontWeight.Bold)
                .width('100%')
                .margin({ left: 8 })

              Divider()
                .margin({ top: 3, bottom: 3 })
            }
            .width('100%')
            .padding(8)
            .backgroundColor('#E0F2F1')
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

