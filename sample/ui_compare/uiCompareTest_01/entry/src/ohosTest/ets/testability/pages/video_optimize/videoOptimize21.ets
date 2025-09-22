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
struct videoOptimize21 {
  @State isAutoPlay: boolean = false;
  @State eventLog: string = '等待操作...';
  @State operationCount: number = 0;
  @State videoStatus: 'idle' | 'loading' | 'success' | 'error' | 'playing' = 'idle';
  @State currentVideoIndex: number = 0;
  @State eventHistory: string[] = [];
  @State operationSequence: string[] = [];
  controller: VideoController = new VideoController();

  getStatusText(): string {
    switch (this.videoStatus) {
      case 'idle': return '空闲';
      case 'loading': return '加载中';
      case 'success': return '成功';
      case 'error': return '错误';
      case 'playing': return '播放中';
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
        Text('🎬')
          .fontSize(32)
          .margin({ right: 12 })
        
        Column() {
          Text('Video组件开始播放、重置AVPlayer和自动播放测试(三Video)')
            .fontSize(22)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2C3E50')
          
          Text('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0210')
            .fontSize(14)
            .fontColor('#7F8C8D')
            .margin({ top: 4 })
        }
        .alignItems(HorizontalAlign.Start)
      }
      .width('100%')
      .justifyContent(FlexAlign.Start)
      .padding({ bottom: 24 })

      // 视频列表指示器
      Row() {
        ForEach([0, 1, 2], (index: number) => {
          Circle({ width: 12, height: 12 })
            .fill(this.currentVideoIndex === index ? '#3498DB' : '#BDC3C7')
            .margin({ left: 6, right: 6 });
        });
      }
      .width('100%')
      .justifyContent(FlexAlign.Center)
      .margin({ bottom: 16 })

      // 视频列表
      Column() {
        // 视频1
        Column() {
          Text('📹 视频 1')
            .fontSize(16)
            .fontWeight(FontWeight.Medium)
            .fontColor('#34495E')
            .margin({ bottom: 8 })

          Video({
            src: $rawfile('video1.mp4')
          })
            .width('100%')
            .height(200)
            .borderRadius(12)
            .shadow({
              radius: 6,
              color: '#1F000000',
              offsetX: 0,
              offsetY: 3
            })
        }
        .width('100%')
        .padding(16)
        .backgroundColor(Color.White)
        .borderRadius(16)
        .shadow({
          radius: 8,
          color: '#1A000000',
          offsetX: 0,
          offsetY: 4
        })
        .margin({ bottom: 16 })

        // 视频2
        Column() {
          Text('📹 视频 2')
            .fontSize(16)
            .fontWeight(FontWeight.Medium)
            .fontColor('#34495E')
            .margin({ bottom: 8 })

          Video({
            src: $rawfile('video2.mp4')
          })
            .width('100%')
            .height(200)
            .borderRadius(12)
            .shadow({
              radius: 6,
              color: '#1F000000',
              offsetX: 0,
              offsetY: 3
            })
        }
        .width('100%')
        .padding(16)
        .backgroundColor(Color.White)
        .borderRadius(16)
        .shadow({
          radius: 8,
          color: '#1A000000',
          offsetX: 0,
          offsetY: 4
        })
        .margin({ bottom: 16 })

        // 视频3 (主要测试视频)
        Column() {
          Row() {
            Text('📹 视频 3 (测试目标)')
              .fontSize(16)
              .fontWeight(FontWeight.Medium)
              .fontColor('#34495E')
            
            Circle({ width: 8, height: 8 })
              .fill(this.videoStatus === 'success' ? '#27AE60' : 
                    this.videoStatus === 'error' ? '#E74C3C' : 
                    this.videoStatus === 'loading' ? '#F39C12' : 
                    this.videoStatus === 'playing' ? '#3498DB' : '#BDC3C7')
              .margin({ left: 8 })
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
          .margin({ bottom: 8 })

          Video({
            src: $rawfile('video3.mp4'),
            controller: this.controller
          })
            .id('video_21')
            .width('100%')
            .height(200)
            .borderRadius(12)
            .shadow({
              radius: 6,
              color: '#1F000000',
              offsetX: 0,
              offsetY: 3
            })
            .autoPlay(this.isAutoPlay)
            .border({
              width: 2,
              color: this.isAutoPlay ? '#27AE60' : '#E74C3C'
            })
            .onStart(() => {
              this.videoStatus = 'playing';
              this.addEvent('视频开始播放');
            })
            .onError(() => {
              this.eventLog = '❌ 视频加载失败';
              this.videoStatus = 'error';
              this.addEvent('视频加载失败');
            })
        }
        .width('100%')
        .padding(16)
        .backgroundColor(Color.White)
        .borderRadius(16)
        .shadow({
          radius: 8,
          color: '#1A000000',
          offsetX: 0,
          offsetY: 4
        })
      }
      .width('100%')
      .margin({ bottom: 24 })

      // 控制面板
      Column() {
        Text('🎮 控制面板')
          .fontSize(18)
          .fontWeight(FontWeight.Medium)
          .fontColor('#2C3E50')
          .margin({ bottom: 16 })

        Row() {
          Button('▶️ 开始播放')
            .id('startButton')
            .width('30%')
            .height(44)
            .fontSize(14)
            .fontWeight(FontWeight.Medium)
            .backgroundColor('#27AE60')
            .fontColor(Color.White)
            .borderRadius(8)
            .onClick(() => {
              this.controller.start();
              this.operationCount++;
              this.eventLog = '已开始播放';
              this.addEvent('点击开始播放按钮');
              this.addOperation('开始播放');
            })
          
          Button('🔄 重置AVPlayer')
            .id('resetButton')
            .width('30%')
            .height(44)
            .fontSize(14)
            .fontWeight(FontWeight.Medium)
            .backgroundColor('#3498DB')
            .fontColor(Color.White)
            .borderRadius(8)
            .onClick(() => {
              this.controller.reset();
              this.operationCount++;
              this.eventLog = '已重置AVPlayer';
              this.addEvent('点击重置AVPlayer按钮');
              this.addOperation('重置AVPlayer');
            })
          
          Button('🎯 打开自动播放')
            .id('autoPlayButton')
            .width('30%')
            .height(44)
            .fontSize(14)
            .fontWeight(FontWeight.Medium)
            .backgroundColor('#9B59B6')
            .fontColor(Color.White)
            .borderRadius(8)
            .onClick(() => {
              this.isAutoPlay = true;
              this.operationCount++;
              this.eventLog = '已打开自动播放';
              this.addEvent('点击打开自动播放按钮');
              this.addOperation('打开自动播放');
            })
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
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

      // 操作序列记录
      Column() {
        Text('📝 操作序列')
          .fontSize(18)
          .fontWeight(FontWeight.Medium)
          .fontColor('#2C3E50')
          .margin({ bottom: 16 })

        Text(this.operationSequence.length > 0 ? this.operationSequence.join('\\n') : '暂无操作记录')
          .fontSize(14)
          .fontColor('#5D6D7E')
          .lineHeight(20)
          .textAlign(TextAlign.Start)
          .width('100%')
          .padding(16)
          .backgroundColor('#F8F9FA')
          .borderRadius(8)
          .border({ width: 1, color: '#E9ECEF' })
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

      // 事件历史记录
      Column() {
        Text('📝 事件历史')
          .fontSize(18)
          .fontWeight(FontWeight.Medium)
          .fontColor('#2C3E50')
          .margin({ bottom: 16 })

        Text(this.eventHistory.length > 0 ? this.eventHistory.join('\\n') : '暂无事件记录')
          .fontSize(14)
          .fontColor('#5D6D7E')
          .lineHeight(20)
          .textAlign(TextAlign.Start)
          .width('100%')
          .padding(16)
          .backgroundColor('#F8F9FA')
          .borderRadius(8)
          .border({ width: 1, color: '#E9ECEF' })
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

      // 状态显示区域
      Column() {
        Text('📊 状态信息')
          .fontSize(18)
          .fontWeight(FontWeight.Medium)
          .fontColor('#2C3E50')
          .margin({ bottom: 16 })

        // 操作统计
        Row() {
          Column() {
            Text('操作次数')
              .fontSize(12)
              .fontColor('#7F8C8D')
            Text(`${this.operationCount}`)
              .fontSize(20)
              .fontWeight(FontWeight.Bold)
              .fontColor('#3498DB')
          }
          .layoutWeight(1)

          Column() {
            Text('自动播放')
              .fontSize(12)
              .fontColor('#7F8C8D')
            Text(this.isAutoPlay ? '已启用' : '已禁用')
              .fontSize(16)
              .fontWeight(FontWeight.Medium)
              .fontColor(this.isAutoPlay ? '#27AE60' : '#E74C3C')
          }
          .layoutWeight(1)

          Column() {
            Text('视频状态')
              .fontSize(12)
              .fontColor('#7F8C8D')
            Text(this.getStatusText())
              .fontSize(16)
              .fontWeight(FontWeight.Medium)
              .fontColor('#34495E')
          }
          .layoutWeight(1)
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceAround)
        .margin({ bottom: 16 })

        // 事件日志
        Text(this.eventLog)
          .fontSize(14)
          .fontColor('#2C3E50')
          .textAlign(TextAlign.Center)
          .width('100%')
          .padding(16)
          .backgroundColor('#F8F9FA')
          .borderRadius(8)
          .border({ width: 1, color: '#E9ECEF' })
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

      // 测试说明
      Column() {
        Text('📋 测试说明')
          .fontSize(18)
          .fontWeight(FontWeight.Medium)
          .fontColor('#2C3E50')
          .margin({ bottom: 16 })

        Text('1. 查看三个视频的展示效果\\n2. 点击"开始播放"按钮开始播放第三个视频\\n3. 点击"重置AVPlayer"按钮重置播放器\\n4. 点击"打开自动播放"按钮启用自动播放\\n5. 滑动到第三个Video查看是否自动播放')
          .fontSize(14)
          .fontColor('#5D6D7E')
          .lineHeight(20)
          .textAlign(TextAlign.Start)
          .width('100%')
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
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F7FA')
    .padding(20)
    .justifyContent(FlexAlign.Start)
  }
}
