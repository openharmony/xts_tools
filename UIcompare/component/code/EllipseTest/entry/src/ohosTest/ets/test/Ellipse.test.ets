/*
 * Copyright (c) 2023 iSoftStone Information Technology (Group) Co.,Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium'
import Settings from './model/Settings'
import windowSnap from './model/snapShot'
import Logger from './model/Logger'
import {
  UiComponent,
  UiDriver,
  Component,
  Driver,
  UiWindow,
  ON,
  BY,
  MatchPattern,
  DisplayRotation,
  ResizeDirection,
  WindowMode,
  PointerMatrix
} from '@ohos.UiTest';

/*
 * ellipseTest_001:Ellipse-height设为'150'，设定width-'100px'
 * ellipseTest_002:Ellipse-height设为'150'，设定width-'100vp'
 * ellipseTest_003:Ellipse-height设为'150'，设定width-'100fp'
 * ellipseTest_004:Ellipse-height设为'150'，设定width-'100aaaa'
 * ellipseTest_005:Ellipse-height设为'150'，设定width-'100'
 * ellipseTest_006:Ellipse-height设为'150'，设定width-'0'
 * ellipseTest_007:Ellipse-height设为'150'，设定width-'-100'
 * ellipseTest_008:Ellipse-height设为150，设定width-0
 * ellipseTest_009:Ellipse-height设为150，设定width-(-100)
 * ellipseTest_010:Ellipse-height设为150，设定width-100
 * ellipseTest_011:Ellipse-height设为150，设定width-100
 * ellipseTest_012:Ellipse-height设为150，设定width-100
 * ellipseTest_013:Ellipse-height设为150，设定width-100
 * ellipseTest_014:Ellipse-height设为150，设定width-100
 * ellipseTest_015:Ellipse-height设为150，设定width-100
 * ellipseTest_016:Ellipse-width设为'150'，设定height-'0'
 * ellipseTest_017:Ellipse-width设为'150'，设定height-'-100'
 * ellipseTest_018:Ellipse-width设为150，设定height-0
 * ellipseTest_019:Ellipse-width设为150，设定height-(-100)
 * ellipseTest_020:Ellipse-width设为150，设定height-100
 * ellipseTest_021:属性-fill(value?:ResourceColor)-Color.Blue
 * ellipseTest_022:属性-fill(value?:ResourceColor)-Color.Transparent
 * ellipseTest_023:属性-fill(value:ResourceColor)-number-0xff0000
 * ellipseTest_024:属性-fill(value:ResourceColor)-string-'#ff0000'
 * ellipseTest_025:属性-fill(value:ResourceColor)-string-'abcd'
 * ellipseTest_026:属性-fill(value:ResourceColor)-string-'rgb(255, 0, 0)'
 * ellipseTest_027:属性-fill(value:ResourceColor)-Resource
 * ellipseTest_028:属性-fill(value:ResourceColor)-不设置
 * ellipseTest_029:属性-fillOpacity(value:number)-number-0
 * ellipseTest_030:属性-fillOpacity(value:number)-number-0.5
 * ellipseTest_031:属性-fillOpacity(value:number)-number-（-0.5）
 * ellipseTest_032属性-stroke(value:ResourceColor)-color
 * ellipseTest_033:属性-stroke(value:ResourceColor)-number
 * ellipseTest_034:属性-stroke(value:ResourceColor)-string-'#ffff00'
 * ellipseTest_035:属性-stroke(value:ResourceColor)-string-'abcd'
 * ellipseTest_036:属性-stroke(value:ResourceColor)-string-'rgb(255, 0, 0)'
 * ellipseTest_036:属性-stroke(value:ResourceColor)-string-'rgb(0, 0, 0)'
 * ellipseTest_038:属性-stroke(value:ResourceColor)-string-Rescoure
 * ellipseTest_039:属性-stroke(value:ResourceColor)-string-不设置
 * ellipseTest_040:属性-strokeDashArray(Array<any>)-['abc']
 * ellipseTest_041:属性-strokeDashArray(Array<any>)-['5aa']
 * ellipseTest_042:属性-strokeDashArray(Array<any>)-[5]
 * ellipseTest_043:属性-strokeDashArray(Array<any>)-[-5]
 * ellipseTest_044:属性-strokeDashArray(Array<any>)-['5vp','2px','12fp']
 * ellipseTest_045:属性-strokeDashArray(Array<any>)-[2,1,6]
 * ellipseTest_046:属性-strokeDashArray(Array<any>)-[2,-2,10]
 * ellipseTest_047:属性-strokeDashArray(Array<any>)-默认值
 * ellipseTest_048:属性-strokeDashOffset(number)-10
 * ellipseTest_049:属性-strokeDashOffset(number)-0
 * ellipseTest_050:属性-strokeDashOffset(number)-(-10)
 * ellipseTest_051:属性-strokeDashOffset(number)-不设置
 * ellipseTest_052:属性-strokeLineCap(LineCapStyle)-LineCapStyle.Butt
 * ellipseTest_053:属性-strokeLineCap(LineCapStyle)-LineCapStyle.Round
 * ellipseTest_054:属性-strokeLineCap(LineCapStyle)-LineCapStyle.Square
 * ellipseTest_055:属性-strokeLineCap(LineCapStyle)-不设置
 * ellipseTest_056:属性-strokeOpacity(number)-0
 * ellipseTest_057:属性-strokeOpacity(number)-0.5
 * ellipseTest_058:属性-strokeOpacity(number)-(-0.5)
 * ellipseTest_059:属性-strokeOpacity(number)-不设置
 * ellipseTest_060:属性-strokeWidth(number)-5
 * ellipseTest_061:属性-strokeWidth(number)-0
 * ellipseTest_062:属性-strokeWidth(number)-(-5)
 * ellipseTest_063:属性-strokeWidth(number)-不设置
 * ellipseTest_064:属性-antiAlias(boolean)-true
 * ellipseTest_065:属性-antiAlias(boolean)-false
 * ellipseTest_066:属性-antiAlias(boolean)-不设置
 * ellipseTest_067:场景分析用例-组件显示的尺寸、位置等被设定在显示区域之外
 * ellipseTest_068:场景分析用例-通用属性与组件属性冲突
 * ellipseTest_069:稳定性分析-频繁打开关闭
 * ellipseTest_070:稳定性分析-频繁滑动
 * ellipseTest_071:其他异常场景-hap意外关闭
 * ellipseTest_072:其他异常场景-设备意外关闭
 *
 * Settings.createWindow(config.url)：
 *  创建窗口，更改窗口基本配置，更改方式详见model/Settings createWindow方法
 *
 * windowSnap.snapShot(globalThis.context)：
 *  窗口截屏&图片文件保存，存储在设备端
 *  存储文件固定，单挑用例执行后覆盖，用于自动化UI对比
 *  支持调试更改文件名为时间戳格式，更改model/snapShot createAndGetFile方法 注释L35，放开L32，L33
 *
 * Logger日志使用方法：
 *  import Logger form './model/Logger'
 *  Logger.info(TAG,`config = ${config}, err = ${JSON.stringify(exception)}`)
 * */

export default function ellipseTest() {

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  describe('ellipseTest', function () {

    afterEach(async function (done) {
      if (Settings.windowClass == null) {
        return
      }

      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      })
      await sleep(1000);
      done()
    })

    it('ellipseTest_001', 0, async function (done){
      // Ellipse-height设为'150'，设定width-'100px'
      let config={
        uri:"testability/pages/ellipse/widthAndHeight",
      }
     Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '100px'
      })
      globalThis.value.message.notify({
        name: "height", value: '150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('ellipseTest_002', 0, async function (done){
      // Ellipse-height设为'150'，设定width-'100vp'
      let config={
        uri:"testability/pages/ellipse/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '100vp'
      })
      globalThis.value.message.notify({
        name: "height", value: '150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_003', 0, async function (done){
      // Ellipse-height设为'150'，设定width-'100fp'
      let config={
        uri:"testability/pages/ellipse/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '100fp'
      })
      globalThis.value.message.notify({
        name: "height", value: '150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_004', 0, async function (done){
      // Ellipse-height设为'150'，设定width-'100aaaa'
      let config={
        uri:"testability/pages/ellipse/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '100aaaa'
      })
      globalThis.value.message.notify({
        name: "height", value: '150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_005', 0, async function (done){
      // Ellipse-height设为'150'，设定width-'100'
      let config={
        uri:"testability/pages/ellipse/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '100'
      })
      globalThis.value.message.notify({
        name: "height", value: '150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_006', 0, async function (done){
      // Ellipse-height设为'150'，设定width-'0
      let config={
        uri:"testability/pages/ellipse/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '0'
      })
      globalThis.value.message.notify({
        name: "height", value: '150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_007', 0, async function (done){
      // Ellipse-height设为'150'，设定width-'-100'
      let config={
        uri:"testability/pages/ellipse/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '-100'
      })
      globalThis.value.message.notify({
        name: "height", value: '150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_008', 0, async function (done){
      // Ellipse-height设为150，设定width-0
      let config={
        uri:"testability/pages/ellipse/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: 0
      })
      globalThis.value.message.notify({
        name: "height", value: 150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_009', 0, async function (done){
      // Ellipse-height设为150，设定width-(-100)
      let config={
        uri:"testability/pages/ellipse/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: -100
      })
      globalThis.value.message.notify({
        name: "height", value: 150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_010', 0, async function (done){
      // Ellipse-height设为150，设定width-100
      let config={
        uri:"testability/pages/ellipse/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: 100
      })
      globalThis.value.message.notify({
        name: "height", value: 150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_011', 0, async function (done){
      // Ellipse-width设为'150'，设定height-'100px'
      let config={
        uri:"testability/pages/ellipse/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '150'
      })
      globalThis.value.message.notify({
        name: "height", value: '100px'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_012', 0, async function (done){
      //Ellipse-width设为'150'，设定height-'100vp'
      let config={
        uri:"testability/pages/ellipse/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '150'
      })
      globalThis.value.message.notify({
        name: "height", value: '100vp'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_013', 0, async function (done){
      // Ellipse-width设为'150'，设定height-'100fp'
      let config={
        uri:"testability/pages/ellipse/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '150'
      })
      globalThis.value.message.notify({
        name: "height", value: '100fp'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_014', 0, async function (done){
      // Ellipse-width设为'150'，设定height-'100aaaa'
      let config={
        uri:"testability/pages/ellipse/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '150'
      })
      globalThis.value.message.notify({
        name: "height", value: '100aaaa'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_015', 0, async function (done){
      // Ellipse-width设为'150'，设定height-'100'
      let config={
        uri:"testability/pages/ellipse/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '150'
      })
      globalThis.value.message.notify({
        name: "height", value: '100'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_016', 0, async function (done){
      // Ellipse-width设为'150'，设定height-'0'
      let config={
        uri:"testability/pages/ellipse/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '150'
      })
      globalThis.value.message.notify({
        name: "height", value: '0'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_017', 0, async function (done){
      // Ellipse-width设为'150'，设定height-'-100'
      let config={
        uri:"testability/pages/ellipse/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '150'
      })
      globalThis.value.message.notify({
        name: "height", value: '-100'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_018', 0, async function (done){
      // Ellipse-width设为150，设定height-0
      let config={
        uri:"testability/pages/ellipse/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '150'
      })
      globalThis.value.message.notify({
        name: "height", value: 0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_019', 0, async function (done){
      // Ellipse-width设为150，设定height-(-100)
      let config={
        uri:"testability/pages/ellipse/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '150'
      })
      globalThis.value.message.notify({
        name: "height", value: -100
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_020', 0, async function (done){
      // Ellipse-width设为150，设定height-100
      let config={
        uri:"testability/pages/ellipse/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: 150
      })
      globalThis.value.message.notify({
        name: "height", value: 100
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_021', 0, async function (done){
      // 属性-fill(value?:ResourceColor)-Color.Blue
      let config={
        uri:"testability/pages/ellipse/fillColor",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "fill", value: Color.Blue
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_022', 0, async function (done){
      // 属性-fill(value?:ResourceColor)-Color.Transparent
      let config={
        uri:"testability/pages/ellipse/fillColor",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "fill", value: Color.Transparent
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_023', 0, async function (done){
      // 属性-fill(value:ResourceColor)-number-0xff0000
      let config={
        uri:"testability/pages/ellipse/fillColor",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "fill", value: 0xff0000
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_024', 0, async function (done){
      // 属性-fill(value:ResourceColor)-string-'#ff0000'
      let config={
        uri:"testability/pages/ellipse/fillColor",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "fill", value: '#ff0000'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_025', 0, async function (done){
      // 属性-fill(value:ResourceColor)-string-'abcd'
      let config={
        uri:"testability/pages/ellipse/fillColor",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "fill", value: 'abcd'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_026', 0, async function (done){
      // 属性-fill(value:ResourceColor)-string-'rgb(255, 0, 0)'
      let config={
        uri:"testability/pages/ellipse/fillColor",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "fill", value: 'rgb(255, 0, 0)'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_027', 0, async function (done){
      // 属性-fill(value:ResourceColor)-Resource
      let config={
        uri:"testability/pages/ellipse/fillColor",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "fill", value: $r('app.color.Yellow')
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_028', 0, async function (done){
      // 属性-fill(value:ResourceColor)-不设置
      let config={
        uri:"testability/pages/ellipse/noFillColor",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_029', 0, async function (done){
      // 属性-fillOpacity(value:number)-number-0
      let config={
        uri:"testability/pages/ellipse/fillOpacity",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "fillOpacity", value: 0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_030', 0, async function (done){
      // 属性-fillOpacity(value:number)-number-0.5
      let config={
        uri:"testability/pages/ellipse/fillOpacity",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "fillOpacity", value: 0.5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_031', 0, async function (done){
      // 属性-fillOpacity(value:number)-number-（-0.5）
      let config={
        uri:"testability/pages/ellipse/fillOpacity",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "fillOpacity", value: -0.5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_032', 0, async function (done){
      // 属性-stroke(value:ResourceColor)-color
      let config={
        uri:"testability/pages/ellipse/strokeColor",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "stroke", value: Color.Blue
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_033', 0, async function (done){
      // 属性-stroke(value:ResourceColor)-number
      let config={
        uri:"testability/pages/ellipse/strokeColor",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "stroke", value: 0xff0000
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_034', 0, async function (done){
      // 属性-stroke(value:ResourceColor)-string-'#ffff00'
      let config={
        uri:"testability/pages/ellipse/strokeColor",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "stroke", value: '#ffff00'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_035', 0, async function (done){
      // 属性-stroke(value:ResourceColor)-string-'abcd'
      let config={
        uri:"testability/pages/ellipse/strokeColor",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "stroke", value: 'abcd'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_036', 0, async function (done){
      // 属性-stroke(value:ResourceColor)-string-'rgb(255, 0, 0)'
      let config={
        uri:"testability/pages/ellipse/strokeColor",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "stroke", value: 'rgb(255, 0, 0)'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_037', 0, async function (done){
      // 属性-stroke(value:ResourceColor)-string-'rgb(0, 0, 0)'
      let config={
        uri:"testability/pages/ellipse/strokeColor",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "stroke", value: 'rgb(0, 0, 0)'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_038', 0, async function (done){
      // 属性-stroke(value:ResourceColor)-string-Rescoure
      let config={
        uri:"testability/pages/ellipse/strokeColor",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "stroke", value: $r('app.color.Yellow')
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_039', 0, async function (done){
      // 属性-stroke(value:ResourceColor)-string-不设置
      let config={
        uri:"testability/pages/ellipse/noStrokeColor",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_040', 0, async function (done){
      // 属性-strokeDashArray(Array<any>)-['abc']
      let config={
        uri:"testability/pages/ellipse/strokeDashArray",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeDashArray", value: ['abc']
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_041', 0, async function (done){
      // 属性-strokeDashArray(Array<any>)-['5aa']
      let config={
        uri:"testability/pages/ellipse/strokeDashArray",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeDashArray", value: ['5aa']
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_042', 0, async function (done){
      // 属性-strokeDashArray(Array<any>)-[5]
      let config={
        uri:"testability/pages/ellipse/strokeDashArray",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeDashArray", value: [5]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_043', 0, async function (done){
      // 属性-strokeDashArray(Array<any>)-[5]
      let config={
        uri:"testability/pages/ellipse/strokeDashArray",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeDashArray", value: [-5]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_044', 0, async function (done){
      // 属性-strokeDashArray(Array<any>)-['5vp', '2px', '12fp']
      let config={
        uri:"testability/pages/ellipse/strokeDashArray",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeDashArray", value: ['5vp', '2px', '12fp']
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_045', 0, async function (done){
      // 属性-strokeDashArray(Array<any>)-[2, 1, 6]
      let config={
        uri:"testability/pages/ellipse/strokeDashArray",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeDashArray", value: [2, 1, 6]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_046', 0, async function (done){
      // 属性-strokeDashArray(Array<any>)-[2, -2, 10]
      let config={
        uri:"testability/pages/ellipse/strokeDashArray",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeDashArray", value: [2, -2, 10]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_047', 0, async function (done){
      // 属性-strokeDashArray(Array<any>)-默认值
      let config={
        uri:"testability/pages/ellipse/noStrokeDashArray",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_048', 0, async function (done){
      // 属性-strokeDashOffset(number)-10
      let config={
        uri:"testability/pages/ellipse/strokeDashOffset",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeDashOffset", value: 10
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_049', 0, async function (done){
      // 属性-strokeDashOffset(number)-0
      let config={
        uri:"testability/pages/ellipse/strokeDashOffset",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeDashOffset", value: 0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_050', 0, async function (done){
      // 属性-strokeDashOffset(number)-(-10)
      let config={
        uri:"testability/pages/ellipse/strokeDashOffset",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeDashOffset", value: -10
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_051', 0, async function (done){
      // 属性-strokeDashOffset(number)-不设置
      let config={
        uri:"testability/pages/ellipse/noStrokeDashOffset",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_052', 0, async function (done){
      // 属性-strokeLineCap(LineCapStyle)-LineCapStyle.Butt
      let config={
        uri:"testability/pages/ellipse/strokeLineCap",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeLineCap", value: LineCapStyle.Butt
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_053', 0, async function (done){
      // 属性-strokeLineCap(LineCapStyle)-LineCapStyle.Round
      let config={
        uri:"testability/pages/ellipse/strokeLineCap",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeLineCap", value: LineCapStyle.Round
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_054', 0, async function (done){
      // 属性-strokeLineCap(LineCapStyle)-LineCapStyle.Square
      let config={
        uri:"testability/pages/ellipse/strokeLineCap",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeLineCap", value: LineCapStyle.Square
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_055', 0, async function (done){
      // strokeLineCap(LineCapStyle)-不设置
      let config={
        uri:"testability/pages/ellipse/noStrokeLineCap",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_056', 0, async function (done){
      // 属性-strokeOpacity(number)-0
      let config={
        uri:"testability/pages/ellipse/strokeOpacity",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeOpacity", value: 0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_057', 0, async function (done){
      // 属性-strokeOpacity(number)-0.5
      let config={
        uri:"testability/pages/ellipse/strokeOpacity",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeOpacity", value: 0.5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_058', 0, async function (done){
      // 属性-strokeOpacity(number)-(-0.5)
      let config={
        uri:"testability/pages/ellipse/strokeOpacity",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeOpacity", value: -0.5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_059', 0, async function (done){
      // 属性-strokeOpacity(number)-不设置
      let config={
        uri:"testability/pages/ellipse/noStrokeOpacity",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_060', 0, async function (done){
      // 属性-strokeWidth(number)-5
      let config={
        uri:"testability/pages/ellipse/strokeWidth",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeWidth", value: 5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_061', 0, async function (done){
      // 属性-strokeWidth(number)-0
      let config={
        uri:"testability/pages/ellipse/strokeWidth",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeWidth", value: 0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_062', 0, async function (done){
      // 属性-strokeWidth(number)-(-5)
      let config={
        uri:"testability/pages/ellipse/strokeWidth",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeWidth", value: -5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_063', 0, async function (done){
      // 属性-strokeWidth(number)-不设置
      let config={
        uri:"testability/pages/ellipse/noStrokeWidth",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_064', 0, async function (done){
      // 属性-antiAlias(boolean)-true
      let config={
        uri:"testability/pages/ellipse/antiAlias",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "antiAlias", value: true
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_065', 0, async function (done){
      // 属性-antiAlias(boolean)-false
      let config={
        uri:"testability/pages/ellipse/antiAlias",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "antiAlias", value: false
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_066', 0, async function (done){
      // 属性-antiAlias(boolean)-不设置
      let config={
        uri:"testability/pages/ellipse/noAntiAlias",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_067', 0, async function (done){
      // 场景分析用例-组件显示的尺寸、位置等被设定在显示区域之外
      let config={
        uri:"testability/pages/ellipse/showOutsideTheScreen",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeDashOffset", value: 100
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_068', 0, async function (done){
      // 场景分析用例-通用属性与组件属性冲突
      let config={
        uri:"testability/pages/ellipse/attributeConflict",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('ellipseTest_069', 0, async function (done){
      // 稳定性分析-频繁打开关闭
      // 稳定性分析-频繁滑动
      // 其他异常场景-hap意外关闭
      // 其他异常场景-设备意外关闭
      let config={
        uri:"testability/pages/ellipse/threeEllipse",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })
  })
}
