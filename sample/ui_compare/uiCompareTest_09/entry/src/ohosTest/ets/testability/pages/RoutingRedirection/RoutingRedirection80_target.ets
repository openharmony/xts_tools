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
struct routingRedirection80Target {
  @State receivedParams: string = '';
  @State routerStackInfo: string = '';
  @State operationLog: string = '';
  @State uploadStatus: string = '';
  @State replaceComparison: string = '';
  @State originalPath: string = '';
  @State originalLength: number = 0;

  aboutToAppear() {
    this.loadReceivedParams();
    this.updateRouterStackInfo();
    this.updateReplaceComparison();
    this.addLog('Router replaceUrl目标页面初始化完成');
  }

  // 加载接收到的参数
  loadReceivedParams() {
    try {
      const params = router.getParams();
      if (params) {
        this.originalPath = params['originalPath'] || 'unknown';
        this.originalLength = params['originalLength'] || 0;
        this.receivedParams = `接收到的参数：\n${JSON.stringify(params, null, 2)}`;
        console.info('replaceUrl目标页面接收到参数:', JSON.stringify(params));
        this.addLog('成功接收来自主页面的参数');
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

  // 更新替换对比信息
  updateReplaceComparison() {
    const currentLength = router.getLength();
    const currentPath = router.getState().path;
    
    if (this.originalLength > 0) {
      const lengthDiff = currentLength - this.originalLength;
      
      if (lengthDiff === 0) {
        this.replaceComparison = `✅ replaceUrl验证成功：栈深度保持不变 (${this.originalLength} → ${currentLength})`;
      } else {
        this.replaceComparison = `⚠️ 异常：栈深度发生了变化 (${this.originalLength} → ${currentLength})`;
      }
      
      this.replaceComparison += `\n页面路径：${this.originalPath} → ${currentPath}`;
    } else {
      this.replaceComparison = `当前栈深度: ${currentLength}, 页面路径: ${currentPath}`;
    }
  }

  // 添加操作日志
  addLog(message: string) {
    const timestamp = new Date().toLocaleTimeString();
    this.operationLog = `[${timestamp}] ${message}\n${this.operationLog}`;
  }

  // 上传页面路径给元能力
  uploadPagePathToMetaAbility(pagePath: string, operation: string, replaceResult: any) {
    this.addLog(`开始上传页面路径给元能力...`);
    
    // 构建上传数据
    const uploadData = {
      timestamp: Date.now(),
      operation: operation,
      originalPagePath: this.originalPath,
      currentPagePath: router.getState().path,
      routerStackLength: router.getLength(),
      originalStackLength: this.originalLength,
      replaceResult: replaceResult,
      testMetadata: {
        testId: 80,
        testName: 'SUB_ACE_Routing_redirection_0080',
        description: 'router.replaceUrl成功后上传页面路径给元能力'
      },
      verificationData: {
        stackDepthUnchanged: router.getLength() === this.originalLength,
        pagePathChanged: router.getState().path !== this.originalPath,
        replaceSuccess: true
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
          // 模拟元能力上传接口
          console.info('=== replaceUrl页面路径上传给元能力 ===');
          console.info('上传数据:', JSON.stringify(uploadData, null, 2));
          
          // 模拟上传成功回调
          const uploadResult = {
            success: true,
            uploadId: `replace_upload_${Date.now()}`,
            uploadTime: new Date().toISOString(),
            dataSize: JSON.stringify(uploadData).length,
            verificationPassed: uploadData.verificationData.stackDepthUnchanged && uploadData.verificationData.pagePathChanged
          };
          
          this.uploadStatus = `✅ replaceUrl页面路径上传成功\n上传ID: ${uploadResult.uploadId}\n验证通过: ${uploadResult.verificationPassed ? '是' : '否'}`;
          this.addLog(`页面路径已成功上传给元能力`);
          this.addLog(`验证结果: 栈深度未变=${uploadData.verificationData.stackDepthUnchanged}, 页面路径已变=${uploadData.verificationData.pagePathChanged}`);
          
          resolve(uploadResult);
        } catch (err) {
          this.uploadStatus = `❌ replaceUrl页面路径上传失败: ${JSON.stringify(err)}`;
          this.addLog(`页面路径上传失败: ${JSON.stringify(err)}`);
          reject(err);
        }
      }, 800);
    });
  }

  // 验证并上传replaceUrl结果
  verifyAndUploadReplaceResult() {
    this.addLog('开始验证replaceUrl结果并上传...');
    
    const currentState = router.getState();
    const currentPath = currentState.path;
    
    // 验证replaceUrl的特性
    const verificationResult = {
      stackDepthUnchanged: router.getLength() === this.originalLength,
      pagePathChanged: currentPath !== this.originalPath,
      replaceOperationSuccess: true,
      currentStackDepth: router.getLength(),
      originalStackDepth: this.originalLength,
      currentPath: currentPath,
      originalPath: this.originalPath
    };
    
    this.addLog(`验证结果: 栈深度保持不变=${verificationResult.stackDepthUnchanged}`);
    this.addLog(`验证结果: 页面路径已改变=${verificationResult.pagePathChanged}`);
    
    // 上传验证结果
    this.uploadPagePathToMetaAbility(
      currentPath || 'unknown', 
      'router.replaceUrl_verify', 
      verificationResult
    ).then((uploadResult) => {
      this.addLog('replaceUrl验证和上传完成');
      console.info('replaceUrl验证完成:', uploadResult);
    }).catch((uploadError) => {
      this.addLog(`replaceUrl验证上传失败: ${JSON.stringify(uploadError)}`);
    });
  }

  // 继续替换到自己（测试多次替换）
  continueReplaceToSelf() {
    this.addLog('继续替换到自己，测试多次替换...');
    
    const currentPath = router.getState().path;
    const currentLength = router.getLength();
    
    router.replaceUrl({
      url: 'testability/pages/RoutingRedirection/RoutingRedirection80_target',
      params: {
        fromPage: 'RoutingRedirection80_target',
        originalPath: this.originalPath, // 保持原始路径
        originalLength: this.originalLength, // 保持原始长度
        testId: 80,
        operation: 'continue_replace',
        replaceCount: (router.getParams()?.['replaceCount'] || 0) + 1,
        timestamp: Date.now()
      }
    }).then(() => {
      console.info('继续替换成功');
      this.addLog(`继续替换成功，替换前栈长度: ${currentLength}`);
      
      // 验证栈深度是否依然保持不变
      setTimeout(() => {
        this.updateRouterStackInfo();
        this.updateReplaceComparison();
      }, 100);
      
    }).catch((err: BusinessError) => {
      console.error('继续替换失败:', JSON.stringify(err));
      this.addLog(`继续替换失败: ${err.message}`);
    });
  }

  // 替换到主页面
  replaceBackToMainPage() {
    this.addLog('替换回主页面...');
    
    router.replaceUrl({
      url: 'testability/pages/RoutingRedirection/RoutingRedirection80',
      params: {
        fromPage: 'RoutingRedirection80_target',
        replaceBackSuccess: true,
        testId: 80,
        timestamp: Date.now()
      }
    }).then(() => {
      console.info('替换回主页面成功');
      this.addLog('替换回主页面成功');
    }).catch((err: BusinessError) => {
      console.error('替换回主页面失败:', JSON.stringify(err));
      this.addLog(`替换回主页面失败: ${err.message}`);
    });
  }

  build() {
    Column() {
      Text('replaceUrl 目标页面')
        .fontSize(22)
        .fontWeight(FontWeight.Bold)
        .fontColor('#ff9800')
        .margin({ bottom: 15 })

      Text('✅ replaceUrl 替换成功！')
        .fontSize(16)
        .fontColor('#4caf50')
        .fontWeight(FontWeight.Medium)
        .margin({ bottom: 15 })

      // 替换对比信息
      Text('replaceUrl 验证结果:')
        .fontSize(14)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)
        .margin({ bottom: 8 })

      Text(this.replaceComparison)
        .fontSize(12)
        .fontColor(
          this.replaceComparison.includes('✅') ? '#4caf50' : 
          this.replaceComparison.includes('⚠️') ? '#ff9800' : '#666666'
        )
        .backgroundColor('#fff8e1')
        .padding(10)
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

      // 测试按钮
      Button('验证并上传replaceUrl结果')
        .onClick(() => {
          this.verifyAndUploadReplaceResult();
        })
        .width('85%')
        .backgroundColor('#ff9800')
        .fontColor('#ffffff')

      Button('继续替换到自己')
        .onClick(() => {
          this.continueReplaceToSelf();
        })
        .width('85%')
        .backgroundColor('#4caf50')
        .fontColor('#ffffff')
        .margin({ top: 8 })

      Button('替换回主页面')
        .onClick(() => {
          this.replaceBackToMainPage();
        })
        .width('85%')
        .backgroundColor('#9c27b0')
        .fontColor('#ffffff')
        .margin({ top: 8 })

      Button('刷新页面信息')
        .onClick(() => {
          this.loadReceivedParams();
          this.updateRouterStackInfo();
          this.updateReplaceComparison();
          this.addLog('已刷新页面信息');
        })
        .width('85%')
        .backgroundColor('#607d8b')
        .fontColor('#ffffff')
        .margin({ top: 8 })

      Divider()
        .margin({ top: 15, bottom: 10 })

      // 接收到的参数显示
      Text('接收到的参数:')
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
      Text('操作日志:')
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
          .constraintSize({ minHeight: 100, maxHeight: 120 })
      }
      .width('90%')
      .height(120)

      // 测试说明
      Text('replaceUrl 特性验证:')
        .fontSize(12)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)
        .margin({ top: 10, bottom: 5 })

      Text('• replaceUrl 不改变路由栈深度\n' +
        '• 当前页面被新页面替换\n' +
        '• 替换成功后上传页面路径信息\n' +
        '• 验证栈深度保持不变')
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
