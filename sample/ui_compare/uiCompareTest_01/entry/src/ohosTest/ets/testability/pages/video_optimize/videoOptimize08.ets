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
struct videoOptimize08 {
  @State eventLog: string = '等待onPrepared事件触发...';
  controller: VideoController = new VideoController();

  build() {
    Column() {
      Text('Video组件跳转进度位置测试')
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 20 })

      Video({
        src: $rawfile('video1.mp4')
      })
        .width('100%')
        .height(450)
        .margin({ bottom: 10 })

      Video({
        src: $rawfile('video2.mp4')
      })
        .width('100%')
        .height(450)
        .margin({ bottom: 10 })

      Video({
        src: $rawfile('video3.mp4'),
        controller: this.controller
      })
        .id('video_08')
        .width('100%')
        .height(450)
        .onPrepared((e?: PreparedInfo) => {
          console.info('Video onPrepared: ' + JSON.stringify(e));
          this.eventLog = `✅ onPrepared事件触发!\\n时长: ${e?.duration}秒`;
        })

      Row() {
        Button('跳转到第10s')
          .onClick(() => {
            this.controller.setCurrentTime(10, SeekMode.Accurate);
          })
          .margin(5)
      }
      .margin({ top: 20 })

      Text('测试说明: 点击跳转到第10s按钮，查看onPrepared事件和视频播放进度位置')
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
