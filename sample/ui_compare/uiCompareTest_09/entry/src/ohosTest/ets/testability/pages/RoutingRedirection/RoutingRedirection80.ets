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
struct routingRedirection80 {
  @State routerStackInfo: string = '';
  @State operationLog: string = '';
  @State uploadStatus: string = '';

  aboutToAppear() {
    this.updateRouterStackInfo();
    this.addLog('Router replaceUrl重定向测试主页面初始化完成');
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
  uploadPagePathToMetaAbility(pagePath: string, operation: string, replaceResult: any) {
    this.addLog(`准备上传页面路径给元能力...`);
    
    // 模拟元能力上传接口
    const uploadData = {
      timestamp: Date.now(),
      operation: operation,
      originalPagePath: pagePath,
      currentPagePath: router.getState().path,
      routerStackLength: router.getLength(),
      replaceResult: replaceResult,
      testMetadata: {
        testId: 80,
        testName: 'SUB_ACE_Routing_redirection_0080',
        description: 'router.replaceUrl成功后上传页面路径给元能力'
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
        // 这里是模拟的上传逻辑
        console.info('=== replaceUrl页面路径已上传给元能力 ===');
        console.info('上传数据:', JSON.stringify(uploadData, null, 2));
        
        const uploadResult = {
          success: true,
          uploadId: `replace_upload_${Date.now()}`,
          uploadTime: new Date().toISOString(),
          dataSize: JSON.stringify(uploadData).length
        };
        
        this.uploadStatus = `✅ replaceUrl页面路径上传成功\n上传ID: ${uploadResult.uploadId}`;
        this.addLog(`replaceUrl页面路径已成功上传给元能力`);
        this.addLog(`上传数据: ${JSON.stringify(uploadData, null, 2)}`);
      } catch (err) {
        this.uploadStatus = `❌ replaceUrl页面路径上传失败: ${JSON.stringify(err)}`;
        this.addLog(`replaceUrl页面路径上传失败: ${JSON.stringify(err)}`);
      }
    }, 600);
  }

  // 执行 replaceUrl 测试
  executeReplaceUrlTest() {
    this.addLog('准备执行 replaceUrl 测试...');
    
    const currentPath = router.getState().path;
    const currentLength = router.getLength();
    
    try {
      router.replaceUrl({
        url: 'testability/pages/RoutingRedirection/RoutingRedirection80_target',
        params: {
          fromPage: 'RoutingRedirection80',
          originalPath: currentPath,
          originalLength: currentLength,
          testId: 80,
          timestamp: Date.now(),
          operation: 'replaceUrl',
          uploadCallback: this.uploadPagePathToMetaAbility.bind(this)
        }
      }).then(() => {
        console.info('replaceUrl 执行成功');
        this.addLog('replaceUrl 执行成功，页面已替换');
        
        // replaceUrl 成功后上传页面路径
        this.uploadPagePathToMetaAbility(
          currentPath || 'unknown', 
          'router.replaceUrl', 
          {
            success: true,
            originalLength: currentLength,
            currentLength: router.getLength(),
            executionTime: Date.now()
          }
        );
        
      }).catch((err: BusinessError) => {
        console.error('replaceUrl 失败:', JSON.stringify(err));
        this.addLog(`replaceUrl 失败: ${err.message}`);
        
        // 即使失败也上传错误信息
        this.uploadPagePathToMetaAbility(
          currentPath || 'unknown', 
          'router.replaceUrl', 
          {
            success: false,
            error: err.message,
            originalLength: currentLength,
            executionTime: Date.now()
          }
        );
      });
    } catch (err) {
      console.error('replaceUrl 异常:', JSON.stringify(err));
      this.addLog('replaceUrl 发生异常');
    }
  }

  // 回调方式执行 replaceUrl 测试
  executeReplaceUrlWithCallback() {
    this.addLog('使用回调方式执行 replaceUrl 测试...');
    
    const currentPath = router.getState().path;
    const currentLength = router.getLength();
    
    try {
      router.replaceUrl({
        url: 'testability/pages/RoutingRedirection/RoutingRedirection80_target',
        params: {
          fromPage: 'RoutingRedirection80',
          originalPath: currentPath,
          originalLength: currentLength,
          testId: 80,
          timestamp: Date.now(),
          operation: 'replaceUrl_callback',
          uploadCallback: this.uploadPagePathToMetaAbility.bind(this)
        }
      }, router.RouterMode.Standard, (err) => {
        if (err) {
          console.error('回调方式 replaceUrl 失败:', JSON.stringify(err));
          this.addLog(`回调方式 replaceUrl 失败: ${err.message}`);
          
          // 上传失败信息
          this.uploadPagePathToMetaAbility(
            currentPath || 'unknown', 
            'router.replaceUrl_callback', 
            {
              success: false,
              error: err.message,
              originalLength: currentLength,
              executionTime: Date.now()
            }
          );
        } else {
          console.info('回调方式 replaceUrl 成功');
          this.addLog('回调方式 replaceUrl 成功');
          
          // 上传成功信息
          this.uploadPagePathToMetaAbility(
            currentPath || 'unknown', 
            'router.replaceUrl_callback', 
            {
              success: true,
              originalLength: currentLength,
              currentLength: router.getLength(),
              executionTime: Date.now()
            }
          );
        }
      });
    } catch (err) {
      console.error('回调方式 replaceUrl 异常:', JSON.stringify(err));
      this.addLog('回调方式 replaceUrl 发生异常');
    }
  }

  // 测试直接上传功能
  testDirectUpload() {
    const currentPath = router.getState().path;
    this.addLog('测试直接上传当前页面路径...');
    this.uploadPagePathToMetaAbility(
      currentPath || 'unknown', 
      'direct_test', 
      {
        success: true,
        testType: 'direct_upload',
        currentLength: router.getLength(),
        executionTime: Date.now()
      }
    );
  }

  build() {
    Column() {
      Text('Router replaceUrl重定向测试')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 20 })

      Text('测试router.replaceUrl成功后上传页面路径给元能力')
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
        .backgroundColor('#fff3e0')
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
      Button('执行replaceUrl测试')
        .onClick(() => {
          this.executeReplaceUrlTest();
        })
        .id('btn')
        .width('85%')
        .backgroundColor('#ff9800')
        .fontColor('#ffffff')

      Button('回调方式replaceUrl测试')
        .onClick(() => {
          this.executeReplaceUrlWithCallback();
        })
        .width('85%')
        .backgroundColor('#9c27b0')
        .fontColor('#ffffff')
        .margin({ top: 10 })

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
      Text('测试流程:')
        .fontSize(14)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)

      Text('1. 点击"执行replaceUrl测试"按钮\n' +
        '2. 执行router.replaceUrl()替换到目标页面\n' +
        '3. replaceUrl成功后获取页面路径信息\n' +
        '4. 将页面路径上传给元能力\n' +
        '5. 验证栈深度保持不变（replaceUrl特性）')
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
