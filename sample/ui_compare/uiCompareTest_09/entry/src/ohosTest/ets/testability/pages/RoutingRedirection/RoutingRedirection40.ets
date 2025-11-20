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
import router from '@ohos.router'
import { BusinessError } from '@ohos.base';

class innerParams {
  data3:number[]

  constructor(tuple:number[]) {
    this.data3 = tuple
  }
}

class routerParams {
  data1:string
  data2:innerParams

  constructor(str:string, tuple:number[]) {
    this.data1 = str
    this.data2 = new innerParams(tuple)
  }
}

@Entry
@Component
struct routingRedirection40 {
  @State routerStackInfo: string = '';
  @State operationLog: string = '';
  @State uploadStatus: string = '';

  aboutToAppear() {
    this.updateRouterStackInfo();
    this.addLog('Router重定向测试主页面初始化完成');
  }

  // 获取当前路由栈信息
  updateRouterStackInfo() {
    try {
      const length = router.getLength();
      const state = router.getState();
      this.routerStackInfo = `路由栈深度: ${length}\n当前页面: ${state.name || '未知'}\n当前路径: ${state.path || '未知'}`;
    } catch (err) {
      this.routerStackInfo = '获取路由信息失败';
    }
  }

  // 添加操作日志
  addLog(message: string) {
    const timestamp = new Date().toLocaleTimeString();
    this.operationLog = `[${timestamp}] ${message}\n${this.operationLog}`;
  }

  // 上传页面路径给元能力（模拟实现）
  uploadPagePathToMetaAbility(pagePath: string, operation: string) {
    this.addLog(`准备上传页面路径给元能力...`);
    
    // 模拟元能力上传接口
    const uploadData = {
      timestamp: Date.now(),
      operation: operation,
      pagePath: pagePath,
      routerStackLength: router.getLength(),
      deviceInfo: {
        platform: 'OpenHarmony',
        version: '5.0'
      }
    };

    // 模拟异步上传过程
    setTimeout(() => {
      try {
        // 这里是模拟的上传逻辑
        console.info('页面路径已上传给元能力:', JSON.stringify(uploadData));
        this.uploadStatus = `✅ 页面路径上传成功: ${pagePath}`;
        this.addLog(`页面路径上传成功: ${pagePath}`);
        this.addLog(`上传数据: ${JSON.stringify(uploadData, null, 2)}`);
      } catch (err) {
        this.uploadStatus = `❌ 页面路径上传失败: ${JSON.stringify(err)}`;
        this.addLog(`页面路径上传失败: ${JSON.stringify(err)}`);
      }
    }, 500);
  }

  // 跳转到目标页面进行 router.back 测试
  navigateToTargetPage() {
    this.addLog('准备跳转到目标页面进行router.back测试...');
    
    const currentPath = router.getState().path;
    
    try {
      router.pushUrl({
        url: 'testability/pages/RoutingRedirection/RoutingRedirection40_target',
        params: {
          fromPage: 'RoutingRedirection40',
          currentPath: currentPath,
          testId: 40,
          timestamp: Date.now(),
          uploadCallback: this.uploadPagePathToMetaAbility.bind(this)
        }
      }).then(() => {
        console.info('跳转到目标页面成功');
        this.addLog('跳转到目标页面成功');
      }).catch((err: BusinessError) => {
        console.error('跳转失败:', JSON.stringify(err));
        this.addLog(`跳转失败: ${err.message}`);
      });
    } catch (err) {
      console.error('跳转异常:', JSON.stringify(err));
      this.addLog('跳转发生异常');
    }
  }

  // 直接测试上传功能
  testDirectUpload() {
    const currentPath = router.getState().path;
    this.addLog('测试直接上传当前页面路径...');
    this.uploadPagePathToMetaAbility(currentPath || 'unknown', 'direct_test');
  }

  build() {
    Column() {
      Text('Router重定向测试')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 20 })

      Text('测试router.back成功后上传页面路径给元能力')
        .fontSize(16)
        .fontColor('#666666')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 15 })

      // 路由栈信息显示
      Text('当前路由栈信息:')
        .fontSize(16)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)
        .margin({ bottom: 10 })

      Text(this.routerStackInfo)
        .fontSize(14)
        .textAlign(TextAlign.Center)
        .backgroundColor('#e8f4f8')
        .padding(15)
        .borderRadius(10)
        .margin({ bottom: 20 })
        .width('90%')

      // 上传状态显示
      if (this.uploadStatus !== '') {
        Text(this.uploadStatus)
          .fontSize(14)
          .fontColor(
            this.uploadStatus.includes('✅') ? '#4caf50' : '#f44336'
          )
          .backgroundColor('#f8f9fa')
          .padding(12)
          .borderRadius(8)
          .margin({ bottom: 15 })
          .width('90%')
      }

      // 测试按钮
      Button('跳转到目标页面测试')
        .onClick(() => {
          this.navigateToTargetPage();
        })
        .id('btn')
        .width('85%')
        .backgroundColor('#007dff')
        .fontColor('#ffffff')

      Button('测试直接上传页面路径')
        .onClick(() => {
          this.testDirectUpload();
        })
        .width('85%')
        .backgroundColor('#4caf50')
        .fontColor('#ffffff')
        .margin({ top: 10 })

      Button('刷新路由栈信息')
        .onClick(() => {
          this.updateRouterStackInfo();
          this.addLog('已刷新路由栈信息');
        })
        .width('85%')
        .backgroundColor('#ff9800')
        .fontColor('#ffffff')
        .margin({ top: 10 })

      Divider()
        .margin({ top: 20, bottom: 15 })

      // 操作日志区域
      Text('操作日志:')
        .fontSize(16)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)
        .margin({ bottom: 10 })

      Scroll() {
        Text(this.operationLog || '暂无操作记录')
          .fontSize(12)
          .textAlign(TextAlign.Start)
          .backgroundColor('#f9f9f9')
          .padding(10)
          .borderRadius(8)
          .width('100%')
          .constraintSize({ minHeight: 120, maxHeight: 180 })
      }
      .width('90%')
      .height(180)

      Button('清空操作日志')
        .onClick(() => {
          this.operationLog = '';
          this.uploadStatus = '';
          this.addLog('操作日志已清空');
        })
        .width('60%')
        .backgroundColor('#607d8b')
        .fontColor('#ffffff')
        .margin({ top: 10 })

      Divider()
        .margin({ top: 20, bottom: 15 })

      // 功能说明
      Text('测试流程:')
        .fontSize(14)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)

      Text('1. 点击"跳转到目标页面测试"按钮\n' +
        '2. 在目标页面执行router.back()操作\n' +
        '3. router.back成功后获取页面路径\n' +
        '4. 将页面路径上传给元能力\n' +
        '5. 验证上传结果和回调处理')
        .fontSize(12)
        .fontColor('#666666')
        .textAlign(TextAlign.Start)
        .alignSelf(ItemAlign.Start)
        .lineHeight(18)

    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Start)
    .padding(20)
    .scrollable(ScrollDirection.Vertical)
  }
}
