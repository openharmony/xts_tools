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
struct videoOptimize03 {
  @State isAutoPlay: boolean = false;
  @State eventLog: string = '等待操作...';
  @State operationCount: number = 0;
  @State videoStatus: 'idle' | 'loading' | 'success' | 'error' | 'stopped' = 'idle';
  @State operationSequence: string[] = [];
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
          .fontSize(32)
          .margin({ right: 12 })
        
        Column() {
          Text('Video组件停止播放、重置AVPlayer和自动播放测试')
            .fontSize(22)
            .fontWeight(FontWeight.Bold)
            .fontColor('#2C3E50')
          
          Text('SUB_ACE_UI_COMPONENT_MEDIA_VIDEO_OPTIMIZE_0030')
            .fontSize(14)
            .fontColor('#7F8C8D')
            .margin({ top: 4 })
        }
        .alignItems(HorizontalAlign.Start)
      }
      .width('100%')
      .justifyContent(FlexAlign.Start)
      .padding({ bottom: 24 })

      // 视频播放区域
      Column() {
        Video({
          src: $rawfile('video1.mp4'),
          controller: this.controller
        })
          .id('video_03')
          .width('100%')
          .height(300)
          .autoPlay(this.isAutoPlay)
          .borderRadius(12)
          .shadow({
            radius: 8,
            color: '#1F000000',
            offsetX: 0,
            offsetY: 4
          })
          .onPrepared((e?: PreparedInfo) => {
            console.info('Video onPrepared: ' + JSON.stringify(e));
            this.eventLog = `✅ onPrepared事件触发!\\n时长: ${e?.duration}秒`;
            this.videoStatus = 'success';
          })
          .onError(() => {
            this.eventLog = '❌ 视频加载失败';
            this.videoStatus = 'error';
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

      // 控制面板
      Column() {
        Text('🎮 控制面板')
          .fontSize(18)
          .fontWeight(FontWeight.Medium)
          .fontColor('#2C3E50')
          .margin({ bottom: 16 })

        Row() {
          Button('⏹️ 停止播放')
            .id('stopButton')
            .width('30%')
            .height(44)
            .fontSize(14)
            .fontWeight(FontWeight.Medium)
            .backgroundColor('#E74C3C')
            .fontColor(Color.White)
            .borderRadius(8)
            .onClick(() => {
              this.controller.stop();
              this.operationCount++;
              this.eventLog = `⏹️ 已停止播放 (操作次数: ${this.operationCount})`;
              this.videoStatus = 'stopped';
              this.addOperation('停止播放');
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
              this.eventLog = `🔄 已重置AVPlayer (操作次数: ${this.operationCount})`;
              this.videoStatus = 'loading';
              this.addOperation('重置AVPlayer');
            })
          
          Button('🎯 打开自动播放')
            .id('autoPlayButton')
            .width('30%')
            .height(44)
            .fontSize(14)
            .fontWeight(FontWeight.Medium)
            .backgroundColor('#27AE60')
            .fontColor(Color.White)
            .borderRadius(8)
            .onClick(() => {
              this.isAutoPlay = true;
              this.operationCount++;
              this.eventLog = `🎯 已打开自动播放 (操作次数: ${this.operationCount})`;
              this.videoStatus = 'success';
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

        Text('1. 点击"停止播放"按钮停止视频播放\\n2. 点击"重置AVPlayer"按钮重置播放器\\n3. 点击"打开自动播放"按钮启用自动播放\\n4. 观察视频是否自动开始播放\\n5. 查看操作序列记录和状态变化')
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
