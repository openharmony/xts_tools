/**
 * Copyright (c) 2022 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
struct ZIndex008 {

  @State zIndex1:number = 3
  @State zIndex2:number = 2
  @State zIndex3:number = 1
  @State isAutoPlay: boolean = false
  @State showControls: boolean = true
  controller: VideoController = new VideoController()

  build() {
    Column() {
      Stack() {
        Video({
          controller: this.controller
        })
          .width(80)
          .height(60)
          .autoPlay(this.isAutoPlay)
          .controls(this.showControls)
          .onStart(() => {
            console.info('onStart')
          })
          .onPause(() => {
            console.info('onPause')
          })
          .onFinish(() => {
            console.info('onFinish')
          })
          .onError(() => {
            console.info('onError')
          })
          .onPrepared((e) => {
            console.info('onPrepared is ' + e.duration)
          })
          .onSeeking((e) => {
            console.info('onSeeking is ' + e.time)
          })
          .onSeeked((e) => {
            console.info('onSeeked is ' + e.time)
          })
          .onUpdate((e) => {
            console.info('onUpdate is ' + e.time)
          })
          .zIndex(this.zIndex1)
        Video({
          controller: this.controller
        })
          .width(80)
          .height(60)
          .autoPlay(this.isAutoPlay)
          .controls(this.showControls)
          .onStart(() => {
            console.info('onStart')
          })
          .onPause(() => {
            console.info('onPause')
          })
          .onFinish(() => {
            console.info('onFinish')
          })
          .onError(() => {
            console.info('onError')
          })
          .onPrepared((e) => {
            console.info('onPrepared is ' + e.duration)
          })
          .onSeeking((e) => {
            console.info('onSeeking is ' + e.time)
          })
          .onSeeked((e) => {
            console.info('onSeeked is ' + e.time)
          })
          .onUpdate((e) => {
            console.info('onUpdate is ' + e.time)
          })
          .width(200)
          .height(120)
          .align(Alignment.TopStart)
          .zIndex(this.zIndex2)
        Video({
          controller: this.controller
        })
          .width(80)
          .height(60)
          .autoPlay(this.isAutoPlay)
          .controls(this.showControls)
          .onStart(() => {
            console.info('onStart')
          })
          .onPause(() => {
            console.info('onPause')
          })
          .onFinish(() => {
            console.info('onFinish')
          })
          .onError(() => {
            console.info('onError')
          })
          .onPrepared((e) => {
            console.info('onPrepared is ' + e.duration)
          })
          .onSeeking((e) => {
            console.info('onSeeking is ' + e.time)
          })
          .onSeeked((e) => {
            console.info('onSeeked is ' + e.time)
          })
          .onUpdate((e) => {
            console.info('onUpdate is ' + e.time)
          })
          .width(400)
          .height(220)
          .align(Alignment.TopStart)
          .zIndex(this.zIndex3)
      }.width('100%').height(400)
    }.width('100%').height(600)
  }
}