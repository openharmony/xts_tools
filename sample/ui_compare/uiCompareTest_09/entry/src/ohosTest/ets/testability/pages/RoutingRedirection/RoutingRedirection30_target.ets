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
struct routingRedirection30Target {
  @State receivedParams: string = '';
  @State routerStackInfo: string = '';
  @State operationLog: string = '';
  @State uploadStatus: string = '';
  @State hapPackageInfo: string = '';
  @State crossPackageData: string = '';
  @State fromPackage: string = '';
  @State crossPackageMode: boolean = false;

  aboutToAppear() {
    this.loadReceivedParams();
    this.updateRouterStackInfo();
    this.updateHapPackageInfo();
    this.addLog('B包页面初始化完成，接收A包启动');
  }

  // 加载接收到的参数
  loadReceivedParams() {
    try {
      const params = router.getParams();
      if (params) {
        this.fromPackage = params['fromPackage'] || 'unknown';
        this.crossPackageMode = params['crossPackageMode'] || false;
        
        if (params['launchData']) {
          this.crossPackageData = `跨包启动数据：\n${JSON.stringify(params['launchData'], null, 2)}`;
        }
        
        this.receivedParams = `接收到的参数：\n${JSON.stringify(params, null, 2)}`;
        console.info('B包页面接收到A包参数:', JSON.stringify(params));
        this.addLog(`成功接收来自${this.fromPackage}的跨包数据`);
      } else {
        this.receivedParams = '未接收到任何参数';
        this.addLog('未接收到任何跨包参数');
      }
    } catch (err) {
      this.receivedParams = '获取参数失败';
      this.addLog('获取跨包参数失败');
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

  // 更新hap包信息
  updateHapPackageInfo() {
    this.hapPackageInfo = `当前包: PackageB (被拉起包)\n包类型: 目标业务包\n启动方式: ${this.crossPackageMode ? '跨包启动' : '普通启动'}\n来源包: ${this.fromPackage}`;
  }

  // 添加操作日志
  addLog(message: string) {
    const timestamp = new Date().toLocaleTimeString();
    this.operationLog = `[${timestamp}] ${message}\n${this.operationLog}`;
  }

  // 上传B包内路由信息给元能力
  uploadPackageBRouteInfo(routeData: any) {
    this.addLog(`B包准备上传路由信息给元能力...`);
    
    // 构建B包路由上传数据
    const uploadData = {
      timestamp: Date.now(),
      operation: 'package_b_route',
      sourcePackage: 'PackageB',
      routeType: 'internal_package_route',
      crossPackageContext: {
        launchedBy: this.fromPackage,
        crossPackageMode: this.crossPackageMode,
        receivedData: router.getParams()?.['launchData'] || null
      },
      routeData: routeData,
      packageBInfo: {
        stackDepth: router.getLength(),
        currentPath: router.getState().path,
        capabilities: ['internal_router', 'data_processing', 'cross_package_response']
      },
      testMetadata: {
        testId: 30,
        testName: 'SUB_ACE_Routing_redirection_0030',
        description: 'B包内router跳转并上传路由信息'
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
          console.info('=== B包路由信息已上传给元能力 ===');
          console.info('上传数据:', JSON.stringify(uploadData, null, 2));
          
          const uploadResult = {
            success: true,
            uploadId: `package_b_upload_${Date.now()}`,
            uploadTime: new Date().toISOString(),
            dataSize: JSON.stringify(uploadData).length,
            crossPackageVerified: this.crossPackageMode
          };
          
          this.uploadStatus = `✅ B包路由信息上传成功\n上传ID: ${uploadResult.uploadId}\n跨包验证: ${uploadResult.crossPackageVerified ? '通过' : '失败'}`;
          this.addLog(`B包路由信息已成功上传给元能力`);
          this.addLog(`跨包上下文已验证: ${this.crossPackageMode}`);
          
          resolve(uploadResult);
        } catch (err) {
          this.uploadStatus = `❌ B包路由信息上传失败: ${JSON.stringify(err)}`;
          this.addLog(`B包路由信息上传失败: ${JSON.stringify(err)}`);
          reject(err);
        }
      }, 800);
    });
  }

  // B包内部router跳转到其他页面
  packageBInternalRoute() {
    this.addLog('B包准备进行内部router跳转...');
    
    const currentState = router.getState();
    const currentPath = currentState.path;
    const currentLength = router.getLength();
    
    const routeData = {
      operation: 'package_b_internal_route',
      fromPath: currentPath,
      toPath: 'testability/pages/RoutingRedirection/RoutingRedirection30_b',
      stackDepthBefore: currentLength,
      routeTime: Date.now(),
      crossPackageInfo: {
        originalLauncher: this.fromPackage,
        crossPackageMode: this.crossPackageMode
      }
    };
    
    try {
      router.pushUrl({
        url: 'testability/pages/RoutingRedirection/RoutingRedirection30_b',
        params: {
          fromPackage: 'PackageB',
          fromPage: 'RoutingRedirection30_target',
          originalLauncher: this.fromPackage,
          crossPackageChain: true,
          routeData: routeData,
          testId: 30,
          timestamp: Date.now(),
          uploadCallback: this.uploadPackageBRouteInfo.bind(this)
        }
      }).then(() => {
        console.info('B包内部router跳转成功');
        this.addLog('B包内部router跳转成功');
        
        // 上传B包内路由信息
        this.uploadPackageBRouteInfo({
          ...routeData,
          success: true,
          stackDepthAfter: router.getLength()
        });
        
      }).catch((err: BusinessError) => {
        console.error('B包内部router跳转失败:', JSON.stringify(err));
        this.addLog(`B包内部router跳转失败: ${err.message}`);
        
        // 上传失败信息
        this.uploadPackageBRouteInfo({
          ...routeData,
          success: false,
          error: err.message
        });
      });
    } catch (err) {
      console.error('B包内部router跳转异常:', JSON.stringify(err));
      this.addLog('B包内部router跳转发生异常');
    }
  }

  // B包内部替换路由
  packageBReplaceRoute() {
    this.addLog('B包准备进行内部replace路由...');
    
    const currentPath = router.getState().path;
    const currentLength = router.getLength();
    
    router.replaceUrl({
      url: 'testability/pages/RoutingRedirection/RoutingRedirection30_b',
      params: {
        fromPackage: 'PackageB',
        fromPage: 'RoutingRedirection30_target',
        originalLauncher: this.fromPackage,
        routeType: 'replace',
        crossPackageChain: true,
        testId: 30,
        timestamp: Date.now()
      }
    }).then(() => {
      console.info('B包内部replace路由成功');
      this.addLog('B包内部replace路由成功');
      
      // 上传replace路由信息
      this.uploadPackageBRouteInfo({
        operation: 'package_b_replace_route',
        success: true,
        fromPath: currentPath,
        stackDepthUnchanged: router.getLength() === currentLength,
        replaceTime: Date.now()
      });
      
    }).catch((err: BusinessError) => {
      console.error('B包内部replace路由失败:', JSON.stringify(err));
      this.addLog(`B包内部replace路由失败: ${err.message}`);
    });
  }

  // 返回A包页面（模拟跨包返回）
  returnToPackageA() {
    this.addLog('B包准备返回A包页面...');
    
    try {
      router.back();
      console.info('返回A包页面成功');
      this.addLog('返回A包页面成功');
      
      // 上传跨包返回信息
      this.uploadPackageBRouteInfo({
        operation: 'cross_package_return',
        success: true,
        returnTo: this.fromPackage,
        returnTime: Date.now()
      });
      
    } catch (err) {
      console.error('返回A包页面失败:', JSON.stringify(err));
      this.addLog(`返回A包页面失败: ${JSON.stringify(err)}`);
    }
  }

  // 测试直接上传B包信息
  testDirectPackageBUpload() {
    this.addLog('测试直接上传B包路由信息...');
    
    this.uploadPackageBRouteInfo({
      operation: 'direct_test',
      success: true,
      testType: 'package_b_info_upload',
      packageBStatus: {
        currentPath: router.getState().path,
        stackDepth: router.getLength(),
        crossPackageMode: this.crossPackageMode,
        fromPackage: this.fromPackage,
        capabilities: ['internal_routing', 'cross_package_communication', 'data_upload']
      }
    });
  }

  build() {
    Column() {
      Text('B包页面 (被拉起包)')
        .fontSize(22)
        .fontWeight(FontWeight.Bold)
        .fontColor('#9c27b0')
        .margin({ bottom: 15 })

      Text('✅ A包成功拉起B包页面！')
        .fontSize(16)
        .fontColor('#4caf50')
        .fontWeight(FontWeight.Medium)
        .margin({ bottom: 15 })

      // hap包信息显示
      Text('B包信息:')
        .fontSize(14)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)
        .margin({ bottom: 8 })

      Text(this.hapPackageInfo)
        .fontSize(12)
        .textAlign(TextAlign.Center)
        .backgroundColor('#f3e5f5')
        .padding(12)
        .borderRadius(8)
        .margin({ bottom: 15 })
        .width('90%')

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

      // 跨包数据显示
      if (this.crossPackageData !== '') {
        Text('跨包传递数据:')
          .fontSize(14)
          .fontWeight(FontWeight.Bold)
          .alignSelf(ItemAlign.Start)
          .margin({ bottom: 8 })

        Scroll() {
          Text(this.crossPackageData)
            .fontSize(10)
            .textAlign(TextAlign.Start)
            .backgroundColor('#fff3e0')
            .padding(8)
            .borderRadius(6)
            .width('100%')
        }
        .width('90%')
        .height(80)
        .margin({ bottom: 15 })
      }

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

      // B包内路由操作按钮
      Button('B包内部router跳转')
        .onClick(() => {
          this.packageBInternalRoute();
        })
        .width('85%')
        .backgroundColor('#9c27b0')
        .fontColor('#ffffff')

      Button('B包内部replace路由')
        .onClick(() => {
          this.packageBReplaceRoute();
        })
        .width('85%')
        .backgroundColor('#673ab7')
        .fontColor('#ffffff')
        .margin({ top: 8 })

      Button('返回A包页面')
        .onClick(() => {
          this.returnToPackageA();
        })
        .width('85%')
        .backgroundColor('#f44336')
        .fontColor('#ffffff')
        .margin({ top: 8 })

      Button('测试上传B包信息')
        .onClick(() => {
          this.testDirectPackageBUpload();
        })
        .width('85%')
        .backgroundColor('#4caf50')
        .fontColor('#ffffff')
        .margin({ top: 8 })

      Button('刷新页面信息')
        .onClick(() => {
          this.loadReceivedParams();
          this.updateRouterStackInfo();
          this.updateHapPackageInfo();
          this.addLog('已刷新B包页面信息');
        })
        .width('85%')
        .backgroundColor('#607d8b')
        .fontColor('#ffffff')
        .margin({ top: 8 })

      Divider()
        .margin({ top: 15, bottom: 10 })

      // 接收到的参数显示
      Text('接收到的跨包参数:')
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
      .height(100)
      .margin({ bottom: 15 })

      // 操作日志区域
      Text('B包操作日志:')
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
      Text('B包功能说明:')
        .fontSize(12)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)
        .margin({ top: 10, bottom: 5 })

      Text('• 接收A包的跨包启动数据\n' +
        '• 进行B包内部的router跳转\n' +
        '• 上传B包内路由信息给元能力\n' +
        '• 支持跨包返回到A包页面')
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
