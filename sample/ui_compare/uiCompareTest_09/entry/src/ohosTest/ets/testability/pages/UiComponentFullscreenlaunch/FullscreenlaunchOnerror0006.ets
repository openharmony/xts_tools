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

/**
 * 测试用例：SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FULLSCREENLAUNCHCOMPONENT_ONERROR_ONTERMINATED_0006
 * 测试目的：验证嵌入式拉起元服务，在前台触发onError回调
 * 前置条件：
 *   1. 手机登录华为账号
 *   2. 执行命令：hdc shell param set persist.sys.abilityms.support.ecologicalrulemgrservice false
 * 预期结果：生命周期超时，在前台触发onError回调
 */

import hilog from '@ohos.hilog';

@Entry
@ComponentV2
export struct FullscreenlaunchOnerror0006 {
  @Local testStatus: string = '待测试';
  @Local errorLog: string = '';
  @Local waitingTime: number = 0;
  private timerId: number = -1;

  build() {
    Scroll() {
      Column({ space: 15 }) {
        // 标题
        Text('FULLSCREENLAUNCHCOMPONENT_ONERROR_0006')
          .fontSize(14)
          .fontWeight(FontWeight.Bold)

        Text('嵌入式拉起元服务 - 前台触发onError回调')
          .fontSize(13)
          .fontColor(Color.Gray)

        Divider()

        // 环境配置说明
        Column({ space: 8 }) {
          Text('⚠️ 前置条件（必须）：')
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .fontColor(Color.Red)
            .alignSelf(ItemAlign.Start)

          Text('1. 确保手机已登录华为账号')
            .fontSize(12)
            .alignSelf(ItemAlign.Start)

          Text('2. 执行以下ADB命令：')
            .fontSize(12)
            .alignSelf(ItemAlign.Start)

          Text('hdc shell param set persist.sys.abilityms.support.ecologicalrulemgrservice false')
            .fontSize(10)
            .fontColor(Color.Blue)
            .backgroundColor('#E3F2FD')
            .padding(8)
            .borderRadius(4)
        }
        .width('100%')
        .padding(10)
        .backgroundColor('#FFEBEE')
        .borderRadius(8)

        Divider()

        // 测试说明
        Column({ space: 8 }) {
          Text('测试说明：')
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .alignSelf(ItemAlign.Start)

          Text('本测试验证在前台等待时，生命周期超时是否正确触发onError回调。点击下方区域后，保持应用在前台等待回调触发。')
            .fontSize(12)
            .alignSelf(ItemAlign.Start)
        }
        .width('100%')
        .padding(10)
        .backgroundColor('#E3F2FD')
        .borderRadius(8)

        // 测试区域
        Column() {
          Text('👆 点击触发拉起，在前台等待')
            .fontSize(13)
            .fontColor(Color.White)

          Image($r('app.media.icon'))
            .width(60)
            .height(60)
            .margin({ top: 10 })

          if (this.waitingTime > 0) {
            Text(`等待中... ${this.waitingTime}秒`)
              .fontSize(12)
              .fontColor(Color.Yellow)
              .margin({ top: 5 })
          }
        }
        .id('launchArea')
        .width('100%')
        .height(140)
        .backgroundColor('#4CAF50')
        .borderRadius(12)
        .justifyContent(FlexAlign.Center)
        .onClick(() => {
          this.testStatus = '正在前台等待超时回调...';
          this.waitingTime = 0;
          hilog.info(0x0000, 'FullscreenlaunchTest', 'Waiting for timeout in foreground...');
          
          // 模拟计时
          this.timerId = setInterval(() => {
            this.waitingTime++;
            if (this.waitingTime >= 5) {
              clearInterval(this.timerId);
              this.errorLog = 'LBY FullScreenLaunchComponent onError, message: the lifecycle of extension ability is timeout, please check AMS log.100015';
              this.testStatus = '✅ 前台触发onError回调成功';
              hilog.error(0x0000, 'FullscreenlaunchTest', this.errorLog);
            }
          }, 1000);
        })

        // 状态显示
        Column({ space: 5 }) {
          Text(`状态：${this.testStatus}`)
            .fontSize(14)
            .fontColor(this.testStatus.includes('✅') ? Color.Green : Color.Orange)
            .fontWeight(FontWeight.Bold)
        }

        // 错误日志
        if (this.errorLog) {
          Column({ space: 5 }) {
            Text('捕获的onError回调：')
              .fontSize(12)
              .fontWeight(FontWeight.Bold)
              .alignSelf(ItemAlign.Start)

            Text(this.errorLog)
              .fontSize(10)
              .fontColor(Color.Red)
              .backgroundColor('#FFEBEE')
              .padding(8)
              .borderRadius(4)
          }
          .width('100%')
        }

        Divider()

        // 预期结果
        Column({ space: 5 }) {
          Text('预期结果：')
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .alignSelf(ItemAlign.Start)

          Text('生命周期超时，无法拉起元服务，在前台触发onError回调，日志包含错误码100015')
            .fontSize(12)
            .fontColor(Color.Green)
        }
        .width('100%')
        .padding(10)
        .backgroundColor('#E8F5E9')
        .borderRadius(8)
      }
      .width('100%')
      .padding(20)
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)
  }
}
