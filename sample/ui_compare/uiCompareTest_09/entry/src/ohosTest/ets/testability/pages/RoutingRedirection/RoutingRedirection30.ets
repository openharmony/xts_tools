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
struct routingRedirection30 {
  @State routerStackInfo: string = '';
  @State operationLog: string = '';
  @State uploadStatus: string = '';
  @State hapPackageInfo: string = '';

  aboutToAppear() {
    this.updateRouterStackInfo();
    this.updateHapPackageInfo();
    this.addLog('A包（主包）页面初始化完成');
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
    this.hapPackageInfo = `当前包: PackageA (主包)\n包类型: 测试主包\n包状态: 运行中`;
  }

  // 添加操作日志
  addLog(message: string) {
    const timestamp = new Date().toLocaleTimeString();
    this.operationLog = `[${timestamp}] ${message}\n${this.operationLog}`;
  }

  // 上传跨包路由信息给元能力
  uploadCrossPackageRouteInfo(routeData: any) {
    this.addLog(`准备上传跨包路由信息给元能力...`);
    
    // 模拟跨包路由元能力上传接口
    const uploadData = {
      timestamp: Date.now(),
      operation: 'cross_package_route',
      sourcePackage: 'PackageA',
      targetPackage: 'PackageB',
      routeData: routeData,
      crossPackageInfo: {
        launchType: 'package_launch',
        dataTransfer: true,
        routeSuccess: true
      },
      testMetadata: {
        testId: 30,
        testName: 'SUB_ACE_Routing_redirection_0030',
        description: '两个hap包之间相互跳转，A包拉起B包页面，B包内router跳转'
      },
      deviceInfo: {
        platform: 'OpenHarmony',
        version: '5.0',
        timestamp: new Date().toISOString()
      }
    };

    // 模拟异步上传过程
    setTimeout(() => {
      try {
        console.info('=== 跨包路由信息已上传给元能力 ===');
        console.info('上传数据:', JSON.stringify(uploadData, null, 2));
        
        const uploadResult = {
          success: true,
          uploadId: `cross_package_upload_${Date.now()}`,
          uploadTime: new Date().toISOString(),
          dataSize: JSON.stringify(uploadData).length,
          packageVerified: true
        };
        
        this.uploadStatus = `✅ 跨包路由信息上传成功\n上传ID: ${uploadResult.uploadId}\n包验证: ${uploadResult.packageVerified ? '通过' : '失败'}`;
        this.addLog(`跨包路由信息已成功上传给元能力`);
        this.addLog(`上传数据: ${JSON.stringify(uploadData, null, 2)}`);
      } catch (err) {
        this.uploadStatus = `❌ 跨包路由信息上传失败: ${JSON.stringify(err)}`;
        this.addLog(`跨包路由信息上传失败: ${JSON.stringify(err)}`);
      }
    }, 700);
  }

  // A包拉起B包页面
  launchPackageBPage() {
    this.addLog('A包准备拉起B包页面...');
    
    const currentPath = router.getState().path;
    const launchData = {
      sourcePackage: 'PackageA',
      sourcePage: currentPath,
      launchTime: Date.now(),
      launchType: 'cross_package_launch',
      transferData: {
        testId: 30,
        message: '来自A包的跨包数据传递',
        routerStackDepth: router.getLength(),
        launchParams: {
          feature: 'cross_package_router_test',
          priority: 'high',
          needCallback: true
        }
      }
    };
    
    try {
      // 模拟跨包启动，实际上是跳转到模拟B包的页面
      router.pushUrl({
        url: 'testability/pages/RoutingRedirection/RoutingRedirection30_target',
        params: {
          fromPackage: 'PackageA',
          toPackage: 'PackageB',
          launchData: launchData,
          crossPackageMode: true,
          testId: 30,
          timestamp: Date.now(),
          uploadCallback: this.uploadCrossPackageRouteInfo.bind(this)
        }
      }).then(() => {
        console.info('A包成功拉起B包页面');
        this.addLog('A包成功拉起B包页面');
        
        // 上传跨包启动信息
        this.uploadCrossPackageRouteInfo({
          operation: 'package_launch',
          success: true,
          launchData: launchData
        });
        
      }).catch((err: BusinessError) => {
        console.error('A包拉起B包页面失败:', JSON.stringify(err));
        this.addLog(`A包拉起B包页面失败: ${err.message}`);
        
        // 上传失败信息
        this.uploadCrossPackageRouteInfo({
          operation: 'package_launch',
          success: false,
          error: err.message,
          launchData: launchData
        });
      });
    } catch (err) {
      console.error('A包拉起B包页面异常:', JSON.stringify(err));
      this.addLog('A包拉起B包页面发生异常');
    }
  }

  // 模拟A包内部路由跳转（对比测试）
  internalRouteInPackageA() {
    this.addLog('测试A包内部路由跳转...');
    
    const currentPath = router.getState().path;
    
    router.pushUrl({
      url: 'testability/pages/RoutingRedirection/RoutingRedirection30_target',
      params: {
        fromPackage: 'PackageA',
        toPackage: 'PackageA', // 同包跳转
        internalRoute: true,
        testId: 30,
        timestamp: Date.now(),
        message: 'A包内部路由跳转测试'
      }
    }).then(() => {
      console.info('A包内部路由跳转成功');
      this.addLog('A包内部路由跳转成功');
      
      // 上传内部路由信息
      this.uploadCrossPackageRouteInfo({
        operation: 'internal_route',
        success: true,
        sourcePackage: 'PackageA',
        targetPackage: 'PackageA',
        routePath: currentPath
      });
      
    }).catch((err: BusinessError) => {
      console.error('A包内部路由跳转失败:', JSON.stringify(err));
      this.addLog(`A包内部路由跳转失败: ${err.message}`);
    });
  }

  // 测试直接上传跨包信息
  testDirectCrossPackageUpload() {
    const currentPath = router.getState().path;
    this.addLog('测试直接上传跨包路由信息...');
    
    this.uploadCrossPackageRouteInfo({
      operation: 'direct_test',
      success: true,
      testType: 'cross_package_info_upload',
      currentPath: currentPath,
      packageInfo: {
        currentPackage: 'PackageA',
        stackDepth: router.getLength(),
        capabilities: ['router', 'cross_package', 'meta_ability']
      }
    });
  }

  build() {
    Column() {
      Text('跨hap包路由重定向测试')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 20 })

      Text('A包拉起B包页面，B包内router跳转')
        .fontSize(16)
        .fontColor('#666666')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 15 })

      // hap包信息显示
      Text('hap包信息:')
        .fontSize(16)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)
        .margin({ bottom: 10 })

      Text(this.hapPackageInfo)
        .fontSize(14)
        .textAlign(TextAlign.Center)
        .backgroundColor('#e1f5fe')
        .padding(15)
        .borderRadius(10)
        .margin({ bottom: 20 })
        .width('90%')

      // 路由栈信息显示
      Text('当前路由栈信息:')
        .fontSize(16)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)
        .margin({ bottom: 10 })

      Text(this.routerStackInfo)
        .fontSize(14)
        .textAlign(TextAlign.Center)
        .backgroundColor('#f3e5f5')
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
      Button('A包拉起B包页面')
        .onClick(() => {
          this.launchPackageBPage();
        })
        .id('btn')
        .width('85%')
        .backgroundColor('#9c27b0')
        .fontColor('#ffffff')

      Button('A包内部路由跳转（对比）')
        .onClick(() => {
          this.internalRouteInPackageA();
        })
        .width('85%')
        .backgroundColor('#3f51b5')
        .fontColor('#ffffff')
        .margin({ top: 10 })

      Button('测试直接上传跨包信息')
        .onClick(() => {
          this.testDirectCrossPackageUpload();
        })
        .width('85%')
        .backgroundColor('#4caf50')
        .fontColor('#ffffff')
        .margin({ top: 10 })

      Button('刷新路由栈信息')
        .onClick(() => {
          this.updateRouterStackInfo();
          this.updateHapPackageInfo();
          this.addLog('已刷新路由栈和包信息');
        })
        .width('85%')
        .backgroundColor('#607d8b')
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
        .backgroundColor('#795548')
        .fontColor('#ffffff')
        .margin({ top: 10 })

      Divider()
        .margin({ top: 20, bottom: 15 })

      // 功能说明
      Text('跨包路由测试流程:')
        .fontSize(14)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)

      Text('1. A包页面拉起B包页面（跨包启动）\n' +
        '2. B包页面接收A包传递的数据\n' +
        '3. B包内部进行router跳转操作\n' +
        '4. 监控跨包路由状态和数据传递\n' +
        '5. 上传跨包路由信息给元能力')
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
