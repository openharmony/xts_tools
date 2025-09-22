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
struct videoOptimize01 {
  @State isAutoPlay: boolean = false;
  @State eventLog: string = '等待onPrepared事件触发...';
  controller: VideoController = new VideoController();

  build() {
    Column() {
      Text('Video组件重置AVPlayer和自动播放测试')
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 20 })

      Video({
        src: $rawfile('video1.mp4'),
        controller: this.controller
      })
        .id('video_01')
        .width('100%')
        .height(450)
        .autoPlay(this.isAutoPlay)
        .onPrepared((e?: PreparedInfo) => {
          console.info('Video onPrepared: ' + JSON.stringify(e));
          this.eventLog = `✅ onPrepared事件触发!\\n时长: ${e?.duration}秒`;
        })

      Row() {
        Button('重置AVPlayer')
          .onClick(() => {
            this.controller.reset();
          })
          .margin(5)
        
        Button('打开自动播放')
          .onClick(() => {
            this.isAutoPlay = true;
          })
          .margin(5)
      }
      .margin({ top: 20 })

      Text('测试说明: 重置AVPlayer后设置自动播放，查看视频是否播放')
        .fontSize(14)
        .fontColor(Color.Gray)
        .textAlign(TextAlign.Center)
        .margin({ top: 20 })

      Text(this.eventLog)
        .fontSize(16)
        .fontColor(Color.Red)
        .fontWeight(FontWeight.Bold)
        .textAlign(TextAlign.Center)
        .width('100%')
        .padding(10)
        .backgroundColor(Color.White)
        .borderRadius(8)
        .border({ width: 2, color: Color.Red })
        .margin({ top: 20 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F5F5')
    .padding(20)
    .justifyContent(FlexAlign.Center)
  }
}
