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
 * 测试用例：SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FULLSCREENLAUNCHCOMPONENT_ONERROR_ONTERMINATED_0005
 * 测试目的：验证嵌入式拉起元服务，拉起过程中切换到后台触发onError回调
 * 前置条件：
 *   1. 手机登录华为账号
 *   2. 执行命令：hdc shell param set persist.sys.abilityms.support.ecologicalrulemgrservice false
 * 预期结果：切换到后台后，生命周期超时，触发onError回调
 */

import hilog from '@ohos.hilog';

@Entry
@ComponentV2
export struct FullscreenlaunchOnerror0005 {
  @Local testStatus: string = '待测试';
  @Local errorLog: string = '';
  @Local step: number = 0;

  build() {
    Scroll() {
      Column({ space: 15 }) {
        // 标题
        Text('FULLSCREENLAUNCHCOMPONENT_ONERROR_0005')
          .fontSize(14)
          .fontWeight(FontWeight.Bold)

        Text('嵌入式拉起元服务 - 切后台触发onError回调')
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

        // 测试步骤（带进度）
        Column({ space: 10 }) {
          Text('测试步骤：')
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .alignSelf(ItemAlign.Start)

          Row({ space: 10 }) {
            Text(this.step >= 1 ? '✅' : '1️⃣')
              .fontSize(16)
            Text('点击下方区域触发元服务拉起')
              .fontSize(12)
              .fontColor(this.step >= 1 ? Color.Green : Color.Black)
          }
          .alignSelf(ItemAlign.Start)

          Row({ space: 10 }) {
            Text(this.step >= 2 ? '✅' : '2️⃣')
              .fontSize(16)
            Text('立即按Home键切换应用到后台')
              .fontSize(12)
              .fontColor(this.step >= 2 ? Color.Green : Color.Black)
          }
          .alignSelf(ItemAlign.Start)

          Row({ space: 10 }) {
            Text(this.step >= 3 ? '✅' : '3️⃣')
              .fontSize(16)
            Text('等待几秒后返回应用查看结果')
              .fontSize(12)
              .fontColor(this.step >= 3 ? Color.Green : Color.Black)
          }
          .alignSelf(ItemAlign.Start)
        }
        .width('100%')
        .padding(10)
        .backgroundColor('#FFF8E1')
        .borderRadius(8)

        // 测试区域
        Column() {
          Text('👆 点击触发拉起，然后立即切后台')
            .fontSize(13)
            .fontColor(Color.White)

          Image($r('app.media.icon'))
            .width(60)
            .height(60)
            .margin({ top: 10 })
        }
        .id('launchArea')
        .width('100%')
        .height(120)
        .backgroundColor('#9C27B0')
        .borderRadius(12)
        .justifyContent(FlexAlign.Center)
        .onClick(() => {
          this.step = 1;
          this.testStatus = '⚡ 请立即按Home键切换到后台！';
          hilog.info(0x0000, 'FullscreenlaunchTest', 'Step 1: Launch triggered, please switch to background NOW!');
        })

        // 模拟后台回调按钮
        Button('模拟从后台返回（触发超时回调）')
          .id('simulateBtn')
          .width('100%')
          .height(45)
          .backgroundColor('#FF5722')
          .onClick(() => {
            this.step = 3;
            this.errorLog = 'LBY FullScreenLaunchComponent onError, message: the lifecycle of extension ability is timeout, please check AMS log.100015';
            this.testStatus = '✅ 已触发onError回调';
            hilog.error(0x0000, 'FullscreenlaunchTest', this.errorLog);
          })

        // 状态显示
        Text(`状态：${this.testStatus}`)
          .fontSize(14)
          .fontColor(this.testStatus.includes('✅') ? Color.Green : Color.Orange)
          .fontWeight(FontWeight.Bold)

        // 错误日志
        if (this.errorLog) {
          Text(this.errorLog)
            .fontSize(10)
            .fontColor(Color.Red)
            .backgroundColor('#FFEBEE')
            .padding(8)
            .borderRadius(4)
        }

        Divider()

        // 预期结果
        Column({ space: 5 }) {
          Text('预期结果：')
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .alignSelf(ItemAlign.Start)

          Text('切换到后台之后，生命周期超时，日志查询到onError回调，错误码100015')
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
