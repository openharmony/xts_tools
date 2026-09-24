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

@Entry
@Component
struct videoOptimize35 {
  @State eventLog: string = '等待onPrepared事件触发...';
  @State videoSrc: Resource = $rawfile('video1.mp4');
  @State operationCount: number = 0;
  @State videoStatus: 'idle' | 'loading' | 'success' | 'error' | 'stopped' = 'idle';
  @State currentVideoIndex: number = 0;
  @State eventHistory: string[] = [];
  @State operationSequence: string[] = [];
  @State repeatCount: number = 0;
  @State duration: number = 0;
  controller: VideoController = new VideoController();

  getStatusText(): string {
    switch (this.videoStatus) {
      case 'idle': return '空闲';
      case 'loading': return '加载中';
      case 'success': return '成功';
      case 'error': return '错误';
      case 'stopped': return '已停止';
      default: return '未知';
    }
  }

  addEvent(event: string) {
    this.eventHistory.push(`${new Date().toLocaleTimeString()}: ${event}`);
    if (this.eventHistory.length > 5) {
      this.eventHistory.shift();
    }
  }

  addOperation(operation: string) {
    this.operationSequence.push(`${this.operationSequence.length + 1}. ${operation}`);
    if (this.operationSequence.length > 5) {
      this.operationSequence.shift();
    }
  }

  build() {
    Column() {
      // 页面标题
      Row() {
        Text('⏹️')
          .fontSize(24)
          .margin({ right: 8 })
        
        Column() {
          Text('Video组件停止播放、切换视频源、重置AVPlayer重复测试')
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2C3E50')
          
          Text('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0350')
            .fontSize(12)
            .fontColor('#7F8C8D')
            .margin({ top: 2 })
        }
        .alignItems(HorizontalAlign.Start)
      }
      .width('100%')
      .justifyContent(FlexAlign.Start)
      .padding({ bottom: 16 })

      // 视频源指示器
      Row() {
        ForEach([0, 1], (index: number) => {
          Circle({ width: 8, height: 8 })
            .fill(this.currentVideoIndex === index ? '#3498DB' : '#BDC3C7')
            .margin({ left: 4, right: 4 });
        });
      }
      .width('100%')
      .justifyContent(FlexAlign.Center)
      .margin({ bottom: 12 })

      // 视频播放区域
      Column() {
        Video({
          src: this.videoSrc,
          controller: this.controller
        })
          .id('video_35')
          .width('100%')
          .height(180)
          .borderRadius(8)
          .shadow({
            radius: 4,
            color: '#1F000000',
            offsetX: 0,
            offsetY: 2
          })
          .border({
            width: 2,
            color: this.videoStatus === 'success' ? '#27AE60' : 
                   this.videoStatus === 'stopped' ? '#95A5A6' : '#E74C3C'
          })
          .onPrepared((e?: PreparedInfo) => {
            console.info('Video onPrepared: ' + JSON.stringify(e));
            this.eventLog = `✅ onPrepared事件触发!\\n时长: ${e?.duration}秒`;
            this.videoStatus = 'success';
            this.duration = e?.duration || 0;
            this.addEvent('onPrepared事件触发');
          })
          .onStop(() => {
            this.videoStatus = 'stopped';
            this.addEvent('视频停止播放');
          })
          .onError(() => {
            this.eventLog = '❌ 视频加载失败';
            this.videoStatus = 'error';
            this.addEvent('视频加载失败');
          })

        // 视频状态指示器
        Row() {
          Circle({ width: 12, height: 12 })
            .fill(this.videoStatus === 'success' ? '#27AE60' : 
                  this.videoStatus === 'error' ? '#E74C3C' : 
                  this.videoStatus === 'loading' ? '#F39C12' : 
                  this.videoStatus === 'stopped' ? '#95A5A6' : '#BDC3C7')
            .margin({ right: 8 })
          
          Text(`视频状态: ${this.getStatusText()}`)
            .fontSize(14)
            .fontColor('#34495E')
        }
        .margin({ top: 12 })
        .justifyContent(FlexAlign.Center)
      }
      .width('100%')
      .padding(16)
      .backgroundColor(Color.White)
      .borderRadius(16)
      .shadow({
        radius: 12,
        color: '#1A000000',
        offsetX: 0,
        offsetY: 6
      })
      .margin({ bottom: 24 })

      // 重复测试信息
      Column() {
        Text('🔄 重复测试信息')
          .fontSize(18)
          .fontWeight(FontWeight.Medium)
          .fontColor('#2C3E50')
          .margin({ bottom: 16 })

        Row() {
          Column() {
            Text('重复次数')
              .fontSize(12)
              .fontColor('#7F8C8D')
            Text(`${this.repeatCount}/5`)
              .fontSize(20)
              .fontWeight(FontWeight.Bold)
              .fontColor('#3498DB')
          }
          .layoutWeight(1)

          Column() {
            Text('操作次数')
              .fontSize(12)
              .fontColor('#7F8C8D')
            Text(`${this.operationCount}`)
              .fontSize(20)
              .fontWeight(FontWeight.Bold)
              .fontColor('#E74C3C')
          }
          .layoutWeight(1)

          Column() {
            Text('视频时长')
              .fontSize(12)
              .fontColor('#7F8C8D')
            Text(`${Math.floor(this.duration)}秒`)
              .fontSize(20)
              .fontWeight(FontWeight.Bold)
              .fontColor('#9B59B6')
          }
          .layoutWeight(1)
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceAround)
      }
      .width('100%')
      .padding(20)
      .backgroundColor(Color.White)
      .borderRadius(16)
      .shadow({
        radius: 8,
        color: '#1A000000',
        offsetX: 0,
        offsetY: 4
      })
      .margin({ bottom: 24 })

      // 视频源信息显示
      Column() {
        Text('📊 视频源信息')
          .fontSize(18)
          .fontWeight(FontWeight.Medium)
          .fontColor('#2C3E50')
          .margin({ bottom: 16 })

        Row() {
          Column() {
            Text('当前视频源')
              .fontSize(12)
              .fontColor('#7F8C8D')
            Text(this.currentVideoIndex === 0 ? 'video1.mp4' : 'video4.mp4')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .fontColor('#3498DB')
          }
          .layoutWeight(1)

          Column() {
            Text('停止状态')
              .fontSize(12)
              .fontColor('#7F8C8D')
            Text(this.videoStatus === 'stopped' ? '已停止' : '未停止')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .fontColor(this.videoStatus === 'stopped' ? '#95A5A6' : '#E74C3C')
          }
          .layoutWeight(1)

          Column() {
            Text('视频状态')
              .fontSize(12)
              .fontColor('#7F8C8D')
            Text(this.getStatusText())
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .fontColor(this.videoStatus === 'success' ? '#27AE60' :
                        this.videoStatus === 'error' ? '#E74C3C' : '#3498DB')
          }
          .layoutWeight(1)
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceAround)
      }
      .width('100%')
      .padding(20)
      .backgroundColor(Color.White)
      .borderRadius(16)
      .shadow({
        radius: 8,
        color: '#1A000000',
        offsetX: 0,
        offsetY: 4
      })
      .margin({ bottom: 24 })

      // 控制面板
      Column() {
        Text('🎮 控制面板')
          .fontSize(16)
          .fontWeight(FontWeight.Medium)
          .fontColor('#2C3E50')
          .margin({ bottom: 8 })

        Row() {
          Button('⏹️ 停止播放')
            .id('stopButton_35')
            .width('30%')
            .height(32)
            .fontSize(12)
            .fontWeight(FontWeight.Medium)
            .backgroundColor('#E74C3C')
            .fontColor(Color.White)
            .borderRadius(6)
            .onClick(() => {
              this.controller.stop();
              this.operationCount++;
              this.addEvent('点击停止播放按钮');
              this.addOperation('停止播放');
            })

          Button('🔄 切换成视频源video4')
            .id('switchButton_35')
            .width('30%')
            .height(32)
            .fontSize(12)
            .fontWeight(FontWeight.Medium)
            .backgroundColor('#3498DB')
            .fontColor(Color.White)
            .borderRadius(6)
            .onClick(() => {
              this.videoSrc = $rawfile('video4.mp4');
              this.operationCount++;
              this.currentVideoIndex = 1;
              this.videoStatus = 'loading';
              this.addEvent('切换视频源到video4');
              this.addOperation('切换视频源');
              this.eventLog = '🔄 已切换到video4.mp4';
            })

          Button('🔄 重置AVPlayer')
            .id('resetButton_35')
            .width('30%')
            .height(32)
            .fontSize(12)
            .fontWeight(FontWeight.Medium)
            .backgroundColor('#9B59B6')
            .fontColor(Color.White)
            .borderRadius(6)
            .onClick(() => {
              this.controller.reset();
              this.operationCount++;
              this.addEvent('重置AVPlayer');
              this.addOperation('重置AVPlayer');
              this.eventLog = '🔄 已重置AVPlayer';
            })
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .width('100%')
      .padding(12)
      .backgroundColor(Color.White)
      .borderRadius(8)
      .shadow({
        radius: 4,
        color: '#1A000000',
        offsetX: 0,
        offsetY: 2
      })
      .margin({ bottom: 12 })

      // 操作序列记录
      Column() {
        Text('📝 操作序列')
          .fontSize(16)
          .fontWeight(FontWeight.Medium)
          .fontColor('#2C3E50')
          .margin({ bottom: 8 })

        Text(this.operationSequence.length > 0 ? this.operationSequence.join('\\n') : '暂无操作记录')
          .fontSize(12)
          .fontColor('#5D6D7E')
          .lineHeight(16)
          .textAlign(TextAlign.Start)
          .width('100%')
          .padding(8)
          .backgroundColor('#F8F9FA')
          .borderRadius(6)
          .border({ width: 1, color: '#E9ECEF' })
      }
      .width('100%')
      .padding(12)
      .backgroundColor(Color.White)
      .borderRadius(8)
      .shadow({
        radius: 4,
        color: '#1A000000',
        offsetX: 0,
        offsetY: 2
      })
      .margin({ bottom: 12 })

      // 事件历史记录
      Column() {
        Text('📝 事件历史')
          .fontSize(16)
          .fontWeight(FontWeight.Medium)
          .fontColor('#2C3E50')
          .margin({ bottom: 8 })

        Text(this.eventHistory.length > 0 ? this.eventHistory.join('\\n') : '暂无事件记录')
          .fontSize(12)
          .fontColor('#5D6D7E')
          .lineHeight(16)
          .textAlign(TextAlign.Start)
          .width('100%')
          .padding(8)
          .backgroundColor('#F8F9FA')
          .borderRadius(6)
          .border({ width: 1, color: '#E9ECEF' })
      }
      .width('100%')
      .padding(12)
      .backgroundColor(Color.White)
      .borderRadius(8)
      .shadow({
        radius: 4,
        color: '#1A000000',
        offsetX: 0,
        offsetY: 2
      })
      .margin({ bottom: 12 })

      // 状态显示区域
      Column() {
        Text('📊 状态信息')
          .fontSize(16)
          .fontWeight(FontWeight.Medium)
          .fontColor('#2C3E50')
          .margin({ bottom: 8 })

        // 操作统计
        Row() {
          Column() {
            Text('操作次数')
              .fontSize(10)
              .fontColor('#7F8C8D')
            Text(`${this.operationCount}`)
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .fontColor('#3498DB')
          }
          .layoutWeight(1)

          Column() {
            Text('事件数量')
              .fontSize(10)
              .fontColor('#7F8C8D')
            Text(`${this.eventHistory.length}`)
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .fontColor('#9B59B6')
          }
          .layoutWeight(1)

          Column() {
            Text('当前源')
              .fontSize(10)
              .fontColor('#7F8C8D')
            Text(this.currentVideoIndex === 0 ? 'video1' : 'video4')
              .fontSize(14)
              .fontWeight(FontWeight.Medium)
              .fontColor('#E67E22')
          }
          .layoutWeight(1)
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceAround)
        .margin({ bottom: 8 })

        // 事件日志
        Text(this.eventLog)
          .fontSize(12)
          .fontColor('#2C3E50')
          .textAlign(TextAlign.Center)
          .width('100%')
          .padding(8)
          .backgroundColor('#F8F9FA')
          .borderRadius(6)
          .border({ width: 1, color: '#E9ECEF' })
      }
      .width('100%')
      .padding(12)
      .backgroundColor(Color.White)
      .borderRadius(8)
      .shadow({
        radius: 4,
        color: '#1A000000',
        offsetX: 0,
        offsetY: 2
      })
      .margin({ bottom: 12 })

      // 测试说明
      Column() {
        Text('📋 测试说明')
          .fontSize(16)
          .fontWeight(FontWeight.Medium)
          .fontColor('#2C3E50')
          .margin({ bottom: 8 })

        Text('1. 点击"停止播放"按钮停止视频播放\\n2. 点击"切换成视频源video4"按钮切换视频源\\n3. 点击"重置AVPlayer"按钮重置播放器\\n4. 重复以上操作5次\\n5. 观察onPrepared事件是否正确触发')
          .fontSize(12)
          .fontColor('#5D6D7E')
          .lineHeight(16)
          .textAlign(TextAlign.Start)
          .width('100%')
      }
      .width('100%')
      .padding(12)
      .backgroundColor(Color.White)
      .borderRadius(8)
      .shadow({
        radius: 4,
        color: '#1A000000',
        offsetX: 0,
        offsetY: 2
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F7FA')
    .padding(12)
    .justifyContent(FlexAlign.Start)
  }
}
