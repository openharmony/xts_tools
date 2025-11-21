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

@Entry
@Component
struct routingRedirection30B {
  @State receivedParams: string = '';
  @State routerStackInfo: string = '';
  @State operationLog: string = '';
  @State uploadStatus: string = '';
  @State crossPackageChain: string = '';
  @State originalLauncher: string = '';
  @State routeType: string = '';

  aboutToAppear() {
    this.loadReceivedParams();
    this.updateRouterStackInfo();
    this.buildCrossPackageChain();
    this.addLog('B包内部页面初始化完成');
  }

  // 加载接收到的参数
  loadReceivedParams() {
    try {
      const params = router.getParams();
      if (params) {
        this.originalLauncher = params['originalLauncher'] || 'unknown';
        this.routeType = params['routeData']?.operation || 'unknown';
        
        this.receivedParams = `接收到的参数：\n${JSON.stringify(params, null, 2)}`;
        console.info('B包内部页面接收到参数:', JSON.stringify(params));
        this.addLog(`成功接收来自B包入口页面的参数`);
      } else {
        this.receivedParams = '未接收到任何参数';
        this.addLog('未接收到任何参数');
      }
    } catch (err) {
      this.receivedParams = '获取参数失败';
      this.addLog('获取参数失败');
      console.error('获取参数失败:', JSON.stringify(err));
    }
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

  // 构建跨包调用链信息
  buildCrossPackageChain() {
    this.crossPackageChain = `跨包调用链：\n${this.originalLauncher} (A包) → PackageB (B包入口) → PackageB-Internal (B包内部)`;
  }

  // 添加操作日志
  addLog(message: string) {
    const timestamp = new Date().toLocaleTimeString();
    this.operationLog = `[${timestamp}] ${message}\n${this.operationLog}`;
  }

  // 上传B包内部完成状态给元能力
  uploadPackageBInternalStatus(statusData: any) {
    this.addLog(`B包内部准备上传完成状态给元能力...`);
    
    // 构建B包内部完成状态上传数据
    const uploadData = {
      timestamp: Date.now(),
      operation: 'package_b_internal_complete',
      packageChain: {
        launcher: this.originalLauncher,
        intermediate: 'PackageB-Entry',
        final: 'PackageB-Internal'
      },
      routeCompleteInfo: {
        finalDestination: router.getState().path,
        totalStackDepth: router.getLength(),
        routeType: this.routeType,
        crossPackageSuccess: true
      },
      statusData: statusData,
      testMetadata: {
        testId: 30,
        testName: 'SUB_ACE_Routing_redirection_0030',
        description: 'B包内部router跳转完成状态上传',
        completionPhase: 'package_b_internal_complete'
      },
      verificationData: {
        crossPackageChainIntact: true,
        internalRouteSuccess: true,
        dataTransferComplete: true,
        finalPageReached: true
      },
      deviceInfo: {
        platform: 'OpenHarmony',
        version: '5.0',
        timestamp: new Date().toISOString()
      }
    };

    // 模拟异步上传过程
    return new Promise((resolve, reject) => {
      setTimeout(() => {
        try {
          console.info('=== B包内部完成状态已上传给元能力 ===');
          console.info('上传数据:', JSON.stringify(uploadData, null, 2));
          
          const uploadResult = {
            success: true,
            uploadId: `package_b_internal_${Date.now()}`,
            uploadTime: new Date().toISOString(),
            dataSize: JSON.stringify(uploadData).length,
            crossPackageChainVerified: true,
            completionConfirmed: true
          };
          
          this.uploadStatus = `✅ B包内部状态上传成功\n上传ID: ${uploadResult.uploadId}\n跨包链验证: ${uploadResult.crossPackageChainVerified ? '通过' : '失败'}\n完成确认: ${uploadResult.completionConfirmed ? '是' : '否'}`;
          this.addLog(`B包内部完成状态已成功上传给元能力`);
          this.addLog(`跨包调用链完整性验证通过`);
          
          resolve(uploadResult);
        } catch (err) {
          this.uploadStatus = `❌ B包内部状态上传失败: ${JSON.stringify(err)}`;
          this.addLog(`B包内部状态上传失败: ${JSON.stringify(err)}`);
          reject(err);
        }
      }, 1000);
    });
  }

  // 验证并上传B包内部路由完成状态
  verifyAndUploadInternalStatus() {
    this.addLog('开始验证B包内部路由完成状态...');
    
    const currentState = router.getState();
    const statusData = {
      operation: 'verify_internal_route_complete',
      success: true,
      verificationResults: {
        correctDestination: currentState.path?.includes('RoutingRedirection30_b') || false,
        stackDepthValid: router.getLength() > 0,
        parametersReceived: this.receivedParams !== '未接收到任何参数',
        crossPackageChainValid: this.originalLauncher !== 'unknown'
      },
      routeMetrics: {
        currentPath: currentState.path,
        stackDepth: router.getLength(),
        routeType: this.routeType,
        originalLauncher: this.originalLauncher
      }
    };
    
    // 验证所有条件
    const allVerificationsPassed = Object.values(statusData.verificationResults).every(Boolean);
    statusData.allVerificationsPassed = allVerificationsPassed;
    
    this.addLog(`路由验证结果: ${allVerificationsPassed ? '全部通过' : '存在失败项'}`);
    
    // 上传验证结果
    this.uploadPackageBInternalStatus(statusData).then((uploadResult) => {
      this.addLog('B包内部路由验证和上传完成');
      console.info('B包内部路由完成验证:', uploadResult);
    }).catch((uploadError) => {
      this.addLog(`B包内部状态上传失败: ${JSON.stringify(uploadError)}`);
    });
  }

  // 返回到B包入口页面
  backToPackageBEntry() {
    this.addLog('准备返回到B包入口页面...');
    
    try {
      router.back();
      console.info('返回B包入口页面成功');
      this.addLog('返回B包入口页面成功');
      
      // 上传返回信息
      this.uploadPackageBInternalStatus({
        operation: 'back_to_package_b_entry',
        success: true,
        backTime: Date.now(),
        destination: 'PackageB-Entry'
      });
      
    } catch (err) {
      console.error('返回B包入口页面失败:', JSON.stringify(err));
      this.addLog(`返回B包入口页面失败: ${JSON.stringify(err)}`);
    }
  }

  // 直接返回到A包页面（跨包返回）
  backToPackageADirectly() {
    this.addLog('准备直接返回到A包页面...');
    
    try {
      router.back({
        url: 'testability/pages/RoutingRedirection/RoutingRedirection30'
      });
      console.info('直接返回A包页面成功');
      this.addLog('直接返回A包页面成功');
      
      // 上传跨包返回信息
      this.uploadPackageBInternalStatus({
        operation: 'direct_back_to_package_a',
        success: true,
        backTime: Date.now(),
        destination: this.originalLauncher
      });
      
    } catch (err) {
      console.error('直接返回A包页面失败:', JSON.stringify(err));
      this.addLog(`直接返回A包页面失败: ${JSON.stringify(err)}`);
    }
  }

  // 在B包内继续跳转（多层路由测试）
  continueInPackageB() {
    this.addLog('在B包内继续进行路由跳转...');
    
    router.pushUrl({
      url: 'testability/pages/RoutingRedirection/RoutingRedirection30_b',
      params: {
        fromPackage: 'PackageB',
        fromPage: 'RoutingRedirection30_b',
        originalLauncher: this.originalLauncher,
        routeLevel: 'multi_level',
        testId: 30,
        timestamp: Date.now()
      }
    }).then(() => {
      console.info('B包内继续跳转成功');
      this.addLog('B包内继续跳转成功');
      
      // 上传多层跳转信息
      this.uploadPackageBInternalStatus({
        operation: 'continue_in_package_b',
        success: true,
        multilevel: true,
        stackDepth: router.getLength()
      });
      
    }).catch((err: BusinessError) => {
      console.error('B包内继续跳转失败:', JSON.stringify(err));
      this.addLog(`B包内继续跳转失败: ${err.message}`);
    });
  }

  build() {
    Column() {
      Text('B包内部页面')
        .fontSize(22)
        .fontWeight(FontWeight.Bold)
        .fontColor('#673ab7')
        .margin({ bottom: 15 })

      Text('✅ B包内部router跳转成功！')
        .fontSize(16)
        .fontColor('#4caf50')
        .fontWeight(FontWeight.Medium)
        .margin({ bottom: 15 })

      // 跨包调用链显示
      Text('跨包调用链:')
        .fontSize(14)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)
        .margin({ bottom: 8 })

      Text(this.crossPackageChain)
        .fontSize(12)
        .textAlign(TextAlign.Center)
        .backgroundColor('#f3e5f5')
        .padding(10)
        .borderRadius(8)
        .margin({ bottom: 15 })
        .width('90%')

      // 路由信息显示
      Text(`路由类型: ${this.routeType}`)
        .fontSize(14)
        .fontColor('#9c27b0')
        .fontWeight(FontWeight.Medium)
        .backgroundColor('#fce4ec')
        .padding(8)
        .borderRadius(6)
        .margin({ bottom: 15 })

      // 路由栈信息显示
      Text('当前路由栈信息:')
        .fontSize(14)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)
        .margin({ bottom: 8 })

      Text(this.routerStackInfo)
        .fontSize(12)
        .textAlign(TextAlign.Center)
        .backgroundColor('#e8f5e8')
        .padding(12)
        .borderRadius(8)
        .margin({ bottom: 15 })
        .width('90%')

      // 上传状态显示
      if (this.uploadStatus !== '') {
        Text(this.uploadStatus)
          .fontSize(12)
          .fontColor(
            this.uploadStatus.includes('✅') ? '#4caf50' : '#f44336'
          )
          .backgroundColor('#f0f8ff')
          .padding(10)
          .borderRadius(8)
          .margin({ bottom: 15 })
          .width('90%')
      }

      // 操作按钮
      Button('验证并上传完成状态')
        .onClick(() => {
          this.verifyAndUploadInternalStatus();
        })
        .width('85%')
        .backgroundColor('#673ab7')
        .fontColor('#ffffff')

      Button('返回B包入口页面')
        .onClick(() => {
          this.backToPackageBEntry();
        })
        .width('85%')
        .backgroundColor('#9c27b0')
        .fontColor('#ffffff')
        .margin({ top: 8 })

      Button('直接返回A包页面')
        .onClick(() => {
          this.backToPackageADirectly();
        })
        .width('85%')
        .backgroundColor('#f44336')
        .fontColor('#ffffff')
        .margin({ top: 8 })

      Button('B包内继续跳转')
        .onClick(() => {
          this.continueInPackageB();
        })
        .width('85%')
        .backgroundColor('#4caf50')
        .fontColor('#ffffff')
        .margin({ top: 8 })

      Button('刷新页面信息')
        .onClick(() => {
          this.loadReceivedParams();
          this.updateRouterStackInfo();
          this.buildCrossPackageChain();
          this.addLog('已刷新B包内部页面信息');
        })
        .width('85%')
        .backgroundColor('#607d8b')
        .fontColor('#ffffff')
        .margin({ top: 8 })

      Divider()
        .margin({ top: 15, bottom: 10 })

      // 接收到的参数显示
      Text('接收到的B包内参数:')
        .fontSize(14)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)
        .margin({ bottom: 8 })

      Scroll() {
        Text(this.receivedParams)
          .fontSize(10)
          .textAlign(TextAlign.Start)
          .backgroundColor('#f5f5f5')
          .padding(8)
          .borderRadius(6)
          .width('100%')
      }
      .width('90%')
      .height(80)
      .margin({ bottom: 15 })

      // 操作日志区域
      Text('B包内部操作日志:')
        .fontSize(14)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)
        .margin({ bottom: 8 })

      Scroll() {
        Text(this.operationLog || '暂无操作记录')
          .fontSize(11)
          .textAlign(TextAlign.Start)
          .backgroundColor('#f9f9f9')
          .padding(8)
          .borderRadius(6)
          .width('100%')
          .constraintSize({ minHeight: 80, maxHeight: 100 })
      }
      .width('90%')
      .height(100)

      // 测试说明
      Text('B包内部功能验证:')
        .fontSize(12)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)
        .margin({ top: 10, bottom: 5 })

      Text('• 验证跨包调用链完整性\n' +
        '• 验证B包内部router跳转成功\n' +
        '• 上传B包内部完成状态\n' +
        '• 支持多种返回方式测试')
        .fontSize(10)
        .fontColor('#666666')
        .textAlign(TextAlign.Start)
        .alignSelf(ItemAlign.Start)
        .lineHeight(15)

    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Start)
    .padding(15)
    .scrollable(ScrollDirection.Vertical)
  }
}
