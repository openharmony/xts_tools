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
struct routingRedirection40Target {
  @State receivedParams: string = '';
  @State routerStackInfo: string = '';
  @State operationLog: string = '';
  @State uploadStatus: string = '';
  @State backStatus: string = '';

  aboutToAppear() {
    this.loadReceivedParams();
    this.updateRouterStackInfo();
    this.addLog('Router重定向测试目标页面初始化完成');
  }

  // 加载接收到的参数
  loadReceivedParams() {
    try {
      const params = router.getParams();
      if (params) {
        this.receivedParams = `接收到的参数：\n${JSON.stringify(params, null, 2)}`;
        console.info('目标页面接收到参数:', JSON.stringify(params));
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

  // 添加操作日志
  addLog(message: string) {
    const timestamp = new Date().toLocaleTimeString();
    this.operationLog = `[${timestamp}] ${message}\n${this.operationLog}`;
  }

  // 上传页面路径给元能力
  uploadPagePathToMetaAbility(pagePath: string, operation: string, backResult: any) {
    this.addLog(`开始上传页面路径给元能力...`);
    
    // 构建上传数据
    const uploadData = {
      timestamp: Date.now(),
      operation: operation,
      currentPagePath: router.getState().path,
      targetPagePath: pagePath,
      routerStackLength: router.getLength(),
      backResult: backResult,
      testMetadata: {
        testId: 40,
        testName: 'SUB_ACE_Routing_redirection_0040',
        description: 'router.back成功后上传页面路径给元能力'
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
          console.info('=== 页面路径上传给元能力 ===');
          console.info('上传数据:', JSON.stringify(uploadData, null, 2));
          
          // 模拟上传成功回调
          const uploadResult = {
            success: true,
            uploadId: `upload_${Date.now()}`,
            uploadTime: new Date().toISOString(),
            dataSize: JSON.stringify(uploadData).length
          };
          
          this.uploadStatus = `✅ 元能力上传成功\n上传ID: ${uploadResult.uploadId}`;
          this.addLog(`页面路径已成功上传给元能力`);
          this.addLog(`上传结果: ${JSON.stringify(uploadResult)}`);
          
          resolve(uploadResult);
        } catch (err) {
          this.uploadStatus = `❌ 元能力上传失败: ${JSON.stringify(err)}`;
          this.addLog(`页面路径上传失败: ${JSON.stringify(err)}`);
          reject(err);
        }
      }, 800);
    });
  }

  // 执行 router.back 并在成功后上传页面路径
  executeBackAndUpload() {
    this.addLog('准备执行 router.back 操作...');
    this.backStatus = '🔄 正在执行 router.back...';
    
    // 获取当前页面路径信息
    const currentState = router.getState();
    const currentPath = currentState.path;
    const beforeLength = router.getLength();
    
    this.addLog(`执行back前 - 页面路径: ${currentPath}, 栈深度: ${beforeLength}`);
    
    // 使用 Promise 方式执行 router.back
    router.back()
      .then(() => {
        this.backStatus = '✅ router.back 执行成功';
        this.addLog('router.back 执行成功');
        
        // router.back 成功后，上传页面路径给元能力
        this.uploadPagePathToMetaAbility(
          currentPath || 'unknown', 
          'router.back', 
          {
            success: true,
            beforeLength: beforeLength,
            afterLength: router.getLength(),
            executionTime: Date.now()
          }
        ).then((uploadResult) => {
          this.addLog('页面路径上传完成，测试成功');
          console.info('完整测试流程完成:', uploadResult);
        }).catch((uploadError) => {
          this.addLog(`页面路径上传失败: ${JSON.stringify(uploadError)}`);
        });
        
      })
      .catch((err: BusinessError) => {
        this.backStatus = `❌ router.back 执行失败: ${err.message}`;
        this.addLog(`router.back 执行失败: ${err.message}`);
        console.error('router.back 失败:', JSON.stringify(err));
        
        // 即使 back 失败也尝试上传错误信息
        this.uploadPagePathToMetaAbility(
          currentPath || 'unknown', 
          'router.back', 
          {
            success: false,
            error: err.message,
            beforeLength: beforeLength,
            executionTime: Date.now()
          }
        );
      });
  }

  // 使用回调方式执行 router.back
  executeBackWithCallback() {
    this.addLog('使用回调方式执行 router.back...');
    this.backStatus = '🔄 正在使用回调方式执行 router.back...';
    
    const currentState = router.getState();
    const currentPath = currentState.path;
    const beforeLength = router.getLength();
    
    try {
      router.back(undefined, (err) => {
        if (err) {
          this.backStatus = `❌ 回调方式 router.back 失败: ${err.message}`;
          this.addLog(`回调方式 router.back 失败: ${err.message}`);
          
          // 上传失败信息
          this.uploadPagePathToMetaAbility(
            currentPath || 'unknown', 
            'router.back_callback', 
            {
              success: false,
              error: err.message,
              beforeLength: beforeLength,
              executionTime: Date.now()
            }
          );
        } else {
          this.backStatus = '✅ 回调方式 router.back 成功';
          this.addLog('回调方式 router.back 成功');
          
          // 上传成功信息
          this.uploadPagePathToMetaAbility(
            currentPath || 'unknown', 
            'router.back_callback', 
            {
              success: true,
              beforeLength: beforeLength,
              afterLength: router.getLength(),
              executionTime: Date.now()
            }
          );
        }
      });
    } catch (exception) {
      this.backStatus = `❌ router.back 异常: ${JSON.stringify(exception)}`;
      this.addLog(`router.back 异常: ${JSON.stringify(exception)}`);
    }
  }

  build() {
    Column() {
      Text('Router重定向测试目标页面')
        .fontSize(22)
        .fontWeight(FontWeight.Bold)
        .fontColor('#007dff')
        .margin({ bottom: 15 })

      Text('✅ 成功跳转到目标页面！')
        .fontSize(16)
        .fontColor('#4caf50')
        .fontWeight(FontWeight.Medium)
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

      // 执行状态显示
      if (this.backStatus !== '') {
        Text(this.backStatus)
          .fontSize(14)
          .fontColor(
            this.backStatus.includes('✅') ? '#4caf50' : 
            this.backStatus.includes('❌') ? '#f44336' : '#ff9800'
          )
          .backgroundColor('#f8f9fa')
          .padding(10)
          .borderRadius(8)
          .margin({ bottom: 15 })
          .width('90%')
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

      // 测试按钮
      Button('执行router.back并上传路径')
        .onClick(() => {
          this.executeBackAndUpload();
        })
        .width('85%')
        .backgroundColor('#f44336')
        .fontColor('#ffffff')

      Button('回调方式router.back')
        .onClick(() => {
          this.executeBackWithCallback();
        })
        .width('85%')
        .backgroundColor('#9c27b0')
        .fontColor('#ffffff')
        .margin({ top: 8 })

      Button('刷新页面信息')
        .onClick(() => {
          this.loadReceivedParams();
          this.updateRouterStackInfo();
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
      Text('测试说明:')
        .fontSize(12)
        .fontWeight(FontWeight.Bold)
        .alignSelf(ItemAlign.Start)
        .margin({ top: 10, bottom: 5 })

      Text('• 点击按钮执行 router.back 操作\n' +
        '• router.back 成功后自动上传页面路径\n' +
        '• 验证上传到元能力的数据完整性\n' +
        '• 支持Promise和回调两种方式')
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
