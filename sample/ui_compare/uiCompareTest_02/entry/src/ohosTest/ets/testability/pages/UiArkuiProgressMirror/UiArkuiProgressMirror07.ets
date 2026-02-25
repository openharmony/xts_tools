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
struct UiArkuiProgressMirror07 {
  @State operationLog: string[] = [];
  @State currentLanguage: string = '';
  @State progressValue: number = 50;

  aboutToAppear() {
    hilog.info(0x0000, 'testTag', '=== UiArkuiProgressMirror07 页面加载 ===');
    this.addLog('UiArkuiProgressMirror07 页面已加载');
    this.addLog('准备测试 Progress 平滑动效镜像功能');
    
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
    if (this.operationLog.length > 25) {
      this.operationLog.pop();
    }
    hilog.info(0x0000, 'sally', log);
  }

  build() {
    Column({ space: 3 }) {
      // 标题区域
      Column({ space: 2 }) {
        Text('Progress平滑动效镜像测试')
          .fontSize(13)
          .fontWeight(FontWeight.Bold)
          .fontColor('#FFFFFF')
          .width('100%')
          .textAlign(TextAlign.Center)

        Text('SUB_ACE_UI_ARKUI_PROGRESS_MIRROR_0040')
          .fontSize(8)
          .fontColor('#FFD700')
          .fontFamily('Courier')
          .width('100%')
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding(5)
      .backgroundColor('#F57C00')

      Scroll() {
        Column({ space: 3 }) {
          // 测试入口项
          Column({ space: 2 }) {
            Text('🚀 测试入口')
              .fontSize(9)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Button('ArkUIHDS_Progress_0400')
              .id('ArkUIHDS_Progress_0400')
              .fontSize(13)
              .width('100%')
              .height(35)
              .backgroundColor('#F57C00')
              .fontColor('#FFFFFF')
              .fontWeight(FontWeight.Bold)
              .onClick(() => {
                this.addLog('✓ 点击 ArkUIHDS_Progress_0400 项');
                this.addLog('✓ 进入 Progress 组件页面');
                hilog.info(0x0000, 'sally', 'Enter Progress smooth effect test page');
              })
          }
          .width('96%')
          .alignItems(HorizontalAlign.Start)

          // 当前进度值显示
          Column({ space: 2 }) {
            Text(`当前进度值: ${this.progressValue}`)
              .fontSize(14)
              .fontColor('#F57C00')
              .fontWeight(FontWeight.Bold)
              .width('100%')
              .textAlign(TextAlign.Center)
          }
          .width('96%')
          .padding(4)
          .backgroundColor('#FFF3E0')
          .borderRadius(4)

          // Linear 类型对比
          Column({ space: 2 }) {
            Text('📊 Linear')
              .fontSize(9)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Column({ space: 1 }) {
              Text('开启动效(渐变)')
                .fontSize(8)
                .fontColor('#4CAF50')
              Progress({ value: this.progressValue, total: 100, type: ProgressType.Linear })
                .width('100%')
                .height(14)
                .color('#F57C00')
                .style({ enableSmoothEffect: true })
            }

            Column({ space: 1 }) {
              Text('关闭动效(突变)')
                .fontSize(8)
                .fontColor('#F44336')
              Progress({ value: this.progressValue, total: 100, type: ProgressType.Linear })
                .width('100%')
                .height(14)
                .color('#FF9800')
                .style({ enableSmoothEffect: false })
            }
          }
          .width('96%')
          .padding(4)
          .backgroundColor('#FFF3E0')
          .borderRadius(4)
          .border({ width: 1, color: '#F57C00' })
          .alignItems(HorizontalAlign.Start)

          // Capsule 类型对比
          Column({ space: 2 }) {
            Text('💊 Capsule')
              .fontSize(9)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Column({ space: 1 }) {
              Text('开启动效(渐变)')
                .fontSize(8)
                .fontColor('#4CAF50')
              Progress({ value: this.progressValue, total: 100, type: ProgressType.Capsule })
                .width('80%')
                .height(30)
                .color('#F57C00')
                .style({ enableSmoothEffect: true })
            }

            Column({ space: 1 }) {
              Text('关闭动效(突变)')
                .fontSize(8)
                .fontColor('#F44336')
              Progress({ value: this.progressValue, total: 100, type: ProgressType.Capsule })
                .width('80%')
                .height(30)
                .color('#FF9800')
                .style({ enableSmoothEffect: false })
            }
          }
          .width('96%')
          .padding(4)
          .backgroundColor('#FFE0B2')
          .borderRadius(4)
          .border({ width: 1, color: '#F57C00' })
          .alignItems(HorizontalAlign.Center)

          // Eclipse 类型对比
          Column({ space: 2 }) {
            Text('⭕ Eclipse')
              .fontSize(9)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Row({ space: 8 }) {
              Column({ space: 1 }) {
                Text('开启动效')
                  .fontSize(8)
                  .fontColor('#4CAF50')
                Progress({ value: this.progressValue, total: 100, type: ProgressType.Eclipse })
                  .width(60)
                  .height(60)
                  .color('#F57C00')
                  .style({ enableSmoothEffect: true })
              }

              Column({ space: 1 }) {
                Text('关闭动效')
                  .fontSize(8)
                  .fontColor('#F44336')
                Progress({ value: this.progressValue, total: 100, type: ProgressType.Eclipse })
                  .width(60)
                  .height(60)
                  .color('#FF9800')
                  .style({ enableSmoothEffect: false })
              }
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceEvenly)
          }
          .width('96%')
          .padding(4)
          .backgroundColor('#FFCC80')
          .borderRadius(4)
          .border({ width: 1, color: '#F57C00' })
          .alignItems(HorizontalAlign.Center)

          // Ring 类型对比
          Column({ space: 2 }) {
            Text('⭕ Ring')
              .fontSize(9)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Row({ space: 8 }) {
              Column({ space: 1 }) {
                Text('开启动效')
                  .fontSize(8)
                  .fontColor('#4CAF50')
                Progress({ value: this.progressValue, total: 100, type: ProgressType.Ring })
                  .width(60)
                  .height(60)
                  .style({ strokeWidth: 10, enableSmoothEffect: true })
                  .color('#F57C00')
              }

              Column({ space: 1 }) {
                Text('关闭动效')
                  .fontSize(8)
                  .fontColor('#F44336')
                Progress({ value: this.progressValue, total: 100, type: ProgressType.Ring })
                  .width(60)
                  .height(60)
                  .style({ strokeWidth: 10, enableSmoothEffect: false })
                  .color('#FF9800')
              }
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceEvenly)
          }
          .width('96%')
          .padding(4)
          .backgroundColor('#FFB74D')
          .borderRadius(4)
          .border({ width: 1, color: '#F57C00' })
          .alignItems(HorizontalAlign.Center)

          // ScaleRing 类型对比
          Column({ space: 2 }) {
            Text('🎯 ScaleRing')
              .fontSize(9)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Row({ space: 8 }) {
              Column({ space: 1 }) {
                Text('开启动效')
                  .fontSize(8)
                  .fontColor('#4CAF50')
                Progress({ value: this.progressValue, total: 100, type: ProgressType.ScaleRing })
                  .width(60)
                  .height(60)
                  .style({ enableSmoothEffect: true })
                  .color('#F57C00')
              }

              Column({ space: 1 }) {
                Text('关闭动效')
                  .fontSize(8)
                  .fontColor('#F44336')
                Progress({ value: this.progressValue, total: 100, type: ProgressType.ScaleRing })
                  .width(60)
                  .height(60)
                  .style({ enableSmoothEffect: false })
                  .color('#FF9800')
              }
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceEvenly)
          }
          .width('96%')
          .padding(4)
          .backgroundColor('#FFA726')
          .borderRadius(4)
          .border({ width: 1, color: '#F57C00' })
          .alignItems(HorizontalAlign.Center)

          // Value 控制按钮区域
          Column({ space: 3 }) {
            Text('🎮 Value 控制')
              .fontSize(9)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Row({ space: 6 }) {
              Button('Value + 10')
                .id('UiArkuiProgressMirror07_03')
                .fontSize(13)
                .width('48%')
                .height(35)
                .backgroundColor('#4CAF50')
                .fontColor('#FFFFFF')
                .fontWeight(FontWeight.Bold)
                .onClick(() => {
                  this.progressValue = Math.min(this.progressValue + 10, 100);
                  this.addLog('✓ 点击(Value + 10)按钮');
                  this.addLog(`✓ 进度条增长至: ${this.progressValue}`);
                  this.addLog('  → 开启动效: 渐变至设定值');
                  this.addLog('  → 关闭动效: 突变至设定值');
                  if (this.currentLanguage === 'zh-Hans') {
                    this.addLog('  → Linear/Capsule/Eclipse: 左→右');
                    this.addLog('  → Ring/ScaleRing: 顺时针⟳');
                  } else if (this.currentLanguage === 'ar') {
                    this.addLog('  → Linear/Capsule/Eclipse: 右→左');
                    this.addLog('  → Ring/ScaleRing: 逆时针⟲');
                  }
                  hilog.info(0x0000, 'sally', `Progress value increased: ${this.progressValue}`);
                })

              Button('Value - 10')
                .id('UiArkuiProgressMirror07_04')
                .fontSize(13)
                .width('48%')
                .height(35)
                .backgroundColor('#F44336')
                .fontColor('#FFFFFF')
                .fontWeight(FontWeight.Bold)
                .onClick(() => {
                  this.progressValue = Math.max(this.progressValue - 10, 0);
                  this.addLog('✓ 点击(Value - 10)按钮');
                  this.addLog(`✓ 进度条减少至: ${this.progressValue}`);
                  this.addLog('  → 开启动效: 渐变至设定值');
                  this.addLog('  → 关闭动效: 突变至设定值');
                  if (this.currentLanguage === 'zh-Hans') {
                    this.addLog('  → Linear/Capsule/Eclipse: 右→左');
                    this.addLog('  → Ring/ScaleRing: 逆时针⟲');
                  } else if (this.currentLanguage === 'ar') {
                    this.addLog('  → Linear/Capsule/Eclipse: 左→右');
                    this.addLog('  → Ring/ScaleRing: 顺时针⟳');
                  }
                  hilog.info(0x0000, 'sally', `Progress value decreased: ${this.progressValue}`);
                })
            }
            .width('100%')
          }
          .width('96%')
          .alignItems(HorizontalAlign.Start)

          // 语言切换区域
          Column({ space: 3 }) {
            Text('🌐 语言切换')
              .fontSize(9)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Text(`当前语言: ${this.currentLanguage || '跟随系统'}`)
              .fontSize(10)
              .fontColor('#666666')
              .width('100%')
              .textAlign(TextAlign.Center)
              .padding(4)
              .backgroundColor('#F5F5F5')
              .borderRadius(4)

            Row({ space: 6 }) {
              Button('汉语')
                .id('UiArkuiProgressMirror07_01')
                .fontSize(13)
                .width('48%')
                .height(35)
                .backgroundColor('#2196F3')
                .fontColor('#FFFFFF')
                .fontWeight(FontWeight.Bold)
                .onClick(() => {
                  try {
                    i18n.System.setAppPreferredLanguage('zh-Hans');
                    this.currentLanguage = i18n.System.getAppPreferredLanguage();
                    this.addLog('✓ 点击（汉语）按钮');
                    this.addLog('✓ 语言变为汉语');
                    this.addLog('⚠️ 重启应用后生效');
                    hilog.info(0x0000, 'sally', 'App language set to zh-Hans (Chinese)');
                  } catch (error) {
                    const err = error as BusinessError;
                    this.addLog(`✗ 切换失败: ${err.message}`);
                    hilog.error(0x0000, 'sally', `setAppPreferredLanguage error: ${err.message}`);
                  }
                })

              Button('阿拉伯语')
                .id('UiArkuiProgressMirror07_02')
                .fontSize(13)
                .width('48%')
                .height(35)
                .backgroundColor('#9C27B0')
                .fontColor('#FFFFFF')
                .fontWeight(FontWeight.Bold)
                .onClick(() => {
                  try {
                    i18n.System.setAppPreferredLanguage('ar');
                    this.currentLanguage = i18n.System.getAppPreferredLanguage();
                    this.addLog('✓ 点击（阿拉伯语）按钮');
                    this.addLog('✓ 语言变为阿拉伯语');
                    this.addLog('✓ 组件元素左右互换');
                    this.addLog('⚠️ 重启应用后生效');
                    hilog.info(0x0000, 'sally', 'App language set to ar (Arabic)');
                    hilog.info(0x0000, 'sally', 'Components mirrored left-right');
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
          Column({ space: 2 }) {
            Text('📋 事件日志')
              .fontSize(9)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Scroll() {
              Column({ space: 1 }) {
                if (this.operationLog.length > 0) {
                  ForEach(this.operationLog, (log: string, index: number) => {
                    Text(log)
                      .fontSize(7)
                      .fontColor(log.includes('✓') ? '#4CAF50' :
                        log.includes('✗') ? '#F44336' : 
                        log.includes('⚠️') ? '#FF9800' : '#666666')
                      .fontFamily('Courier')
                      .width('100%')
                      .padding(2)
                      .backgroundColor(index % 2 === 0 ? '#F5F5F5' : '#FFFFFF')
                  }, (log: string, index: number) => `${index}_${log}`)
                } else {
                  Text('暂无事件日志')
                    .fontSize(7)
                    .fontColor('#999999')
                    .width('100%')
                    .textAlign(TextAlign.Center)
                    .padding(3)
                }
              }
              .width('100%')
            }
            .width('100%')
            .height(100)
            .backgroundColor('#FAFAFA')
            .borderRadius(4)
            .border({ width: 1, color: '#E0E0E0' })
            .scrollBar(BarState.Auto)
          }
          .width('96%')
          .alignItems(HorizontalAlign.Start)

          // 测试说明
          Column({ space: 2 }) {
            Text('📝 测试说明')
              .fontSize(9)
              .fontWeight(FontWeight.Bold)
              .fontColor('#182431')

            Column({ space: 1 }) {
              Text('步骤: 1️⃣启动 2️⃣点击0400 3️⃣汉语 4️⃣Value+10 5️⃣Value-10 6️⃣阿拉伯语 7️⃣Value+10 8️⃣Value-10')
                .fontSize(7)
                .fontColor('#666666')
                .width('100%')

              Divider()
                .margin({ top: 1, bottom: 1 })

              Text('汉语: 4️⃣增长+开启渐变/关闭突变+Linear等左→右+Ring等顺时针⟳')
                .fontSize(7)
                .fontColor('#4CAF50')
                .width('100%')

              Text('汉语: 5️⃣减少+开启渐变/关闭突变+Linear等右→左+Ring等逆时针⟲')
                .fontSize(7)
                .fontColor('#F44336')
                .width('100%')

              Divider()
                .margin({ top: 1, bottom: 1 })

              Text('阿语: 6️⃣左右互换 7️⃣增长+右→左+逆时针⟲ 8️⃣减少+左→右+顺时针⟳')
                .fontSize(7)
                .fontColor('#9C27B0')
                .width('100%')

              Divider()
                .margin({ top: 1, bottom: 1 })

              Text('💡 enableSmoothEffect: true渐变/false突变')
                .fontSize(7)
                .fontColor('#FF9800')
                .width('100%')
            }
            .width('100%')
            .padding(4)
            .backgroundColor('#FFF3E0')
            .borderRadius(4)
            .alignItems(HorizontalAlign.Start)
          }
          .width('96%')
          .alignItems(HorizontalAlign.Start)

        }
        .width('100%')
        .padding({ left: 3, right: 3, bottom: 3 })
      }
      .layoutWeight(1)
      .scrollBar(BarState.Auto)

    }
    .width('100%')
    .height('100%')
    .backgroundColor('#FAFAFA')
  }
}

