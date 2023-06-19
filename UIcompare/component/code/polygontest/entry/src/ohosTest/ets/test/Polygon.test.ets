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

// @ts-nocheck
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
 * polygonTest_001:Polygon-高度已定'150'-宽度设为-'150px'
 * polygonTest_002:Polygon-高度已定'150'-宽度设为-'150vp'
 * polygonTest_003:Polygon-高度已定'150'-宽度设为-'150fp'
 * polygonTest_004:Polygon-高度已定'150'-宽度设为-'150aaaa'
 * polygonTest_005:Polygon-高度已定'150'-宽度设为-'150'
 * polygonTest_006:Polygon-高度已定'150'-宽度设为-'0'
 * polygonTest_007:Polygon-高度已定'150'-宽度设为-'-100'
 * polygonTest_008:Polygon-高度已定150-宽度设为-0
 * polygonTest_009:Polygon-高度已定150-宽度设为-(-100)
 * polygonTest_010:Polygon-高度已定150-宽度设为-150
 *
 * polygonTest_011:Polygon-宽度已定'150'-高度设为-'150px'
 * polygonTest_012:Polygon-宽度已定'150'-高度设为-'150vp'
 * polygonTest_013:Polygon-宽度已定'150'-高度设为-'150fp'
 * polygonTest_014:Polygon-宽度已定'150'-高度设为-'150aaaa'
 * polygonTest_015:Polygon-宽度已定'150'-高度设为-'150'
 * polygonTest_016:Polygon-宽度已定'150'-高度设为-'0'
 * polygonTest_017:Polygon-宽度已定'150'-高度设为-'-100'
 * polygonTest_018:Polygon-宽度已定150-高度设为-0
 * polygonTest_019:Polygon-宽度已定150-高度设为-(-100)
 * polygonTest_020:Polygon-宽度已定150-高度设为-150
 *
 * polygonTest_021:Polygon-points([[0, 0], [100, 100], [100, 0] , [0, 100]])
 * polygonTest_022:Polygon-points([[-100, -100], [100, 0] , [0, 100]])
 * polygonTest_023:Polygon-points([[0, 0]])
 * polygonTest_024:Polygon-points([['10', 0], ['40', '100'], ['70', 0]])
 * polygonTest_025:Polygon-points([['10abc', 0], ['abc', '100'], ['100', '50abc']])
 *
 * polygonTest_026:属性-fill(value?:ResourceColor)-Color.Blue
 * polygonTest_027:属性-fill(value?:ResourceColor)-Color.Transparent
 * polygonTest_028:属性-fill(value:ResourceColor)-number-0xff0000
 * polygonTest_029:属性-fill(value:ResourceColor)-string-'#ff0000'
 * polygonTest_030:属性-fill(value:ResourceColor)-string-'abcd'
 * polygonTest_031:属性-fill(value:ResourceColor)-string-'rgb(255, 0, 0)'
 * polygonTest_032:属性-fill(value:ResourceColor)-Resource
 * polygonTest_033:属性-fill(value:ResourceColor)-不设置
 *
 * polygonTest_034:属性-fillOpacity(value:number)-number-0
 * polygonTest_035:属性-fillOpacity(value:number)-number-0.5
 * polygonTest_036:属性-fillOpacity(value:number)-number-（-0.5）
 *
 * polygonTest_037:属性-stroke(value:ResourceColor)-color
 * polygonTest_038:属性-stroke(value:ResourceColor)-number
 * polygonTest_039:属性-stroke(value:ResourceColor)-string-'#ffff00'
 * polygonTest_040:属性-stroke(value:ResourceColor)-string-'abcd'
 * polygonTest_041:属性-stroke(value:ResourceColor)-string-'rgb(255, 0, 0)'
 * polygonTest_042:属性-stroke(value:ResourceColor)-string-'rgb(0, 0, 0)'
 * polygonTest_043:属性-stroke(value:ResourceColor)-string-Rescoure
 * polygonTest_044:属性-stroke(value:ResourceColor)-string-不设置
 *
 * polygonTest_045:属性-strokeDashArray(Array<any>)-['abc']
 * polygonTest_046:属性-strokeDashArray(Array<any>)-['5aa']
 * polygonTest_047:属性-strokeDashArray(Array<any>)-[5]
 * polygonTest_048:属性-strokeDashArray(Array<any>)-[-5]
 * polygonTest_049:属性-strokeDashArray(Array<any>)-['5vp','2px','12fp']
 * polygonTest_050:属性-strokeDashArray(Array<any>)-[2,1,6]
 * polygonTest_051:属性-strokeDashArray(Array<any>)-[2,-2,10]
 * polygonTest_052:属性-strokeDashArray(Array<any>)-不设置
 *
 * polygonTest_053:属性-strokeDashOffset(number)-10
 * polygonTest_054:属性-strokeDashOffset(number)-0
 * polygonTest_055:属性-strokeDashOffset(number)-(-10)
 * polygonTest_056:属性-strokeDashOffset(number)-不设置
 *
 * polygonTest_057:属性-strokeLineCap(LineCapStyle)-LineCapStyle.Butt
 * polygonTest_058:属性-strokeLineCap(LineCapStyle)-LineCapStyle.Round
 * polygonTest_059:属性-strokeLineCap(LineCapStyle)-LineCapStyle.Square
 * polygonTest_060:属性-strokeLineCap(LineCapStyle)-不设置
 *
 * polygonTest_061:属性-strokeLineJoin(LineJoinStyle)-LineJoinStyle.Miter
 * polygonTest_062:属性-strokeLineJoin(LineJoinStyle)-LineJoinStyle.Round
 * polygonTest_063:属性-strokeLineJoin(LineJoinStyle)-LineJoinStyle.Bevel
 * polygonTest_064:属性-strokeLineJoin(LineJoinStyle)-不设置
 *
 * polygonTest_065:属性-strokeMiterLimit(number)-(-3)
 * polygonTest_066:属性-strokeMiterLimit(number)-0
 * polygonTest_067:属性-strokeMiterLimit(number)-1
 * polygonTest_068:属性-strokeMiterLimit(number)-10
 * polygonTest_069:属性-strokeMiterLimit(number)-不设置
 *
 * polygonTest_070:属性-strokeOpacity(number)-0
 * polygonTest_071:属性-strokeOpacity(number)-0.5
 * polygonTest_072:属性-strokeOpacity(number)-(-0.5)
 * polygonTest_073:属性-strokeOpacity(number)-不设置
 *
 * polygonTest_074:属性-strokeWidth(number)-5
 * polygonTest_075:属性-strokeWidth(number)-0
 * polygonTest_076:属性-strokeWidth(number)-(-5)
 * polygonTest_077:属性-strokeWidth(number)-不设置
 *
 * polygonTest_078:属性-antiAlias(boolean)-true
 * polygonTest_079:属性-antiAlias(boolean)-false
 * polygonTest_080:属性-antiAlias(boolean)-不设置
 *
 * polygonTest_081:场景分析用例-组件显示的尺寸、位置等被设定在显示区域之外
 * polygonTest_082:场景分析用例-通用属性与组件属性冲突
 *
 * polygonTest_083:性能场景分析-图形页面展开所需时间
 * polygonTest_083:性能场景分析-图形页面滑动响应时间
 * polygonTest_083:稳定性分析-频繁打开关闭
 * polygonTest_083:稳定性分析-频繁滑动
 * polygonTest_083:其他异常场景-hap意外关闭
 * polygonTest_083:其他异常场景-设备意外关闭
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

export default function polygonTest() {

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  describe('polygonTest', function () {

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

    it('polygonTest_001',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-高度已定'150'-宽度设为-'150px'
      globalThis.value.message.notify({
        name:"width", value:'150px'
      })
      globalThis.value.message.notify({
        name:"height", value:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_002',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-高度已定'150'-宽度设为-'150vp'
      globalThis.value.message.notify({
        name:"width", value:'150vp'
      })
      globalThis.value.message.notify({
        name:"height", value:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_003',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-高度已定'150'-宽度设为-'150fp'
      globalThis.value.message.notify({
        name:"width", value:'150fp'
      })
      globalThis.value.message.notify({
        name:"height", value:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_004',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/noWidth",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-高度已定'150'-宽度设为-'150aaaa'
      globalThis.value.message.notify({
        name:"width", value:'150aaaa'
      })
      globalThis.value.message.notify({
        name:"height", value:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_005',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-高度已定'150'-宽度设为-'150'
      globalThis.value.message.notify({
        name:"width", value:'150'
      })
      globalThis.value.message.notify({
        name:"height", value:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_006',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-高度已定'150'-宽度设为-'0'
      globalThis.value.message.notify({
        name:"width", value:'0'
      })
      globalThis.value.message.notify({
        name:"height", value:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_007',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-高度已定'150'-宽度设为-'-100'
      globalThis.value.message.notify({
        name:"width", value:'-100'
      })
      globalThis.value.message.notify({
        name:"height", value:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_008',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-高度已定150-宽度设为-0
      globalThis.value.message.notify({
        name:"width", value:0
      })
      globalThis.value.message.notify({
        name:"height", value:150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_009',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-高度已定150-宽度设为-(-100)
      globalThis.value.message.notify({
        name:"width", value:-100
      })
      globalThis.value.message.notify({
        name:"height", value:150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_010',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-高度已定150-宽度设为-150
      globalThis.value.message.notify({
        name:"width", value:150
      })
      globalThis.value.message.notify({
        name:"height", value:150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_011',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-宽度已定'150'-高度设为-'150px'
      globalThis.value.message.notify({
        name:"width", value:'150'
      })
      globalThis.value.message.notify({
        name:"height", value:'150px'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_012',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-宽度已定'150'-高度设为-'150vp'
      globalThis.value.message.notify({
        name:"width", value:'150'
      })
      globalThis.value.message.notify({
        name:"height", value:'150vp'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_013',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-宽度已定'150'-高度设为-'150fp'
      globalThis.value.message.notify({
        name:"width", value:'150'
      })
      globalThis.value.message.notify({
        name:"height", value:'150fp'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_014',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/noHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-宽度已定'150'-高度设为-'150aaaa'
      globalThis.value.message.notify({
        name:"width", value:'150'
      })
      globalThis.value.message.notify({
        name:"height", value:'150aaaa'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_015',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-宽度已定'150'-高度设为-'150'
      globalThis.value.message.notify({
        name:"width", value:'150'
      })
      globalThis.value.message.notify({
        name:"height", value:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_016',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-宽度已定'150'-高度设为-'0'
      globalThis.value.message.notify({
        name:"width", value:'150'
      })
      globalThis.value.message.notify({
        name:"height", value:'0'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_017',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-宽度已定'150'-高度设为-'-100'
      globalThis.value.message.notify({
        name:"width", value:'150'
      })
      globalThis.value.message.notify({
        name:"height", value:'-100'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_018',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-宽度已定150-高度设为-0
      globalThis.value.message.notify({
        name:"width", value:150
      })
      globalThis.value.message.notify({
        name:"height", value:0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_019',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-宽度已定150-高度设为-(-100)
      globalThis.value.message.notify({
        name:"width", value:150
      })
      globalThis.value.message.notify({
        name:"height", value:-100
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_020',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-宽度已定150-高度设为-150
      globalThis.value.message.notify({
        name:"width", value:150
      })
      globalThis.value.message.notify({
        name:"height", value:150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_021',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-points([[0, 0], [100, 100], [100, 0] , [0, 100]])
      globalThis.value.message.notify({
        name:"points", value:[[0, 0], [100, 100], [100, 0] , [0, 100]]
      })
      globalThis.value.message.notify({
        name:"width", value:150
      })
      globalThis.value.message.notify({
        name:"height", value:150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_022',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-points([[-100, -100], [100, 0] , [0, 100]])
      globalThis.value.message.notify({
        name:"points", value:[[-100, -100], [100, 0] , [0, 100]]
      })
      globalThis.value.message.notify({
        name:"width", value:150
      })
      globalThis.value.message.notify({
        name:"height", value:150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_023',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/noPoints",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-points([[0, 0]])
      globalThis.value.message.notify({
        name:"points", value:[[0, 0]]
      })
      globalThis.value.message.notify({
        name:"width", value:150
      })
      globalThis.value.message.notify({
        name:"height", value:150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_024',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-points([['10', 0], ['40', '100'], ['70', 0]])
      globalThis.value.message.notify({
        name:"points", value:[['10', 0], ['40', '100'], ['70', 0]]
      })
      globalThis.value.message.notify({
        name:"width", value:150
      })
      globalThis.value.message.notify({
        name:"height", value:150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_025',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // Polygon-points([['10abc', 0], ['abc', '100'], ['100', '50abc']])
      globalThis.value.message.notify({
        name:"points", value:[['10abc', 0], ['abc', '100'], ['100', '50abc']]
      })
      globalThis.value.message.notify({
        name:"width", value:150
      })
      globalThis.value.message.notify({
        name:"height", value:150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_026',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-fill(value?:ResourceColor)-Color.Blue
      globalThis.value.message.notify({
        name:"fillColor", value: Color.Blue
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_027',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-fill(value?:ResourceColor)-Color.Transparent
      globalThis.value.message.notify({
        name:"fillColor", value: Color.Transparent
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_028',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-fill(value:ResourceColor)-number-0xff0000
      globalThis.value.message.notify({
        name:"fillColor", value: 0xff0000
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_029',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-fill(value:ResourceColor)-string-'#ff0000'
      globalThis.value.message.notify({
        name:"fillColor", value: '#ff0000'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_030',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-fill(value:ResourceColor)-string-'abcd'
      globalThis.value.message.notify({
        name:"fillColor", value: 'abcd'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_031',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-fill(value:ResourceColor)-string-'rgb(255, 0, 0)'
      globalThis.value.message.notify({
        name:"fillColor", value: 'rgb(255, 0, 0)'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_032',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-fill(value:ResourceColor)-Resource
      globalThis.value.message.notify({
        name:"fillColor", value: $r('app.color.Yellow')
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_033',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/noFill",
      }
      Settings.createWindow(config.uri)
      // 属性-fill(value:ResourceColor)-不设置
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_034',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index3",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-fillOpacity(value:number)-number-0
      globalThis.value.message.notify({
        name:"width", value:'90%'
      })
      globalThis.value.message.notify({
        name:"height", value:50
      })
      globalThis.value.message.notify({
        name:"fillOpacity", value:0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_035',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index3",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-fillOpacity(value:number)-number-0.5
      globalThis.value.message.notify({
        name:"width", value:'90%'
      })
      globalThis.value.message.notify({
        name:"height", value:50
      })
      globalThis.value.message.notify({
        name:"fillOpacity", value:0.5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_036',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index3",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-fillOpacity(value:number)-number-（-0.5）
      globalThis.value.message.notify({
        name:"width", value:'90%'
      })
      globalThis.value.message.notify({
        name:"height", value:50
      })
      globalThis.value.message.notify({
        name:"fillOpacity", value:-0.5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_037',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index4",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-stroke(value:ResourceColor)-color
      globalThis.value.message.notify({
        name:"strokeColor", value: Color.Blue
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_038',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index4",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-stroke(value:ResourceColor)-number
      globalThis.value.message.notify({
        name:"strokeColor", value: 0xff0000
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_039',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index4",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-stroke(value:ResourceColor)-number
      globalThis.value.message.notify({
        name:"strokeColor", value: '#ffff00'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_040',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index4",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-stroke(value:ResourceColor)-string-'abcd'
      globalThis.value.message.notify({
        name:"strokeColor", value: 'abcd'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_041',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index4",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-stroke(value:ResourceColor)-string-'rgb(255, 0, 0)'
      globalThis.value.message.notify({
        name:"strokeColor", value: 'rgb(255, 0, 0)'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_042',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index4",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-stroke(value:ResourceColor)-string-'rgb(0, 0, 0)'
      globalThis.value.message.notify({
        name:"strokeColor", value: 'rgb(0, 0, 0)'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_043',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index4",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-stroke(value:ResourceColor)-string-Rescoure
      globalThis.value.message.notify({
        name:"strokeColor", value: $r('app.color.Yellow')
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_044',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/noStroke",
      }
      Settings.createWindow(config.uri)
      // 属性-stroke(value:ResourceColor)-string-不设置
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_045',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index5",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeDashArray(Array<any>)-['abc']
      globalThis.value.message.notify({
        name:"strokeDashArray", value: ['abc']
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_046',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index5",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeDashArray(Array<any>)-['5aa']
      globalThis.value.message.notify({
        name:"strokeDashArray", value: ['5aa']
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_047',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index5",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeDashArray(Array<any>)-[5]
      globalThis.value.message.notify({
        name:"strokeDashArray", value: [5]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_048',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index5",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeDashArray(Array<any>)-[-5]
      globalThis.value.message.notify({
        name:"strokeDashArray", value: [-5]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_049',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index5",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeDashArray(Array<any>)-['5vp','2px','12fp']
      globalThis.value.message.notify({
        name:"strokeDashArray", value: ['5vp','2px','12fp']
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_050',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index5",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeDashArray(Array<any>)-[2,1,6]
      globalThis.value.message.notify({
        name:"strokeDashArray", value: [2,1,6]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_051',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index5",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeDashArray(Array<any>)-[2,-2,10]
      globalThis.value.message.notify({
        name:"strokeDashArray", value: [2,-2,10]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_052',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/noStrokeDashArray",
      }
      Settings.createWindow(config.uri)
      // 属性-strokeDashArray(Array<any>)-不设置
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_053',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index6",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeDashOffset(number):10
      globalThis.value.message.notify({
        name:"strokeDashOffset", value: 10
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_054',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index6",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeDashOffset(number):0
      globalThis.value.message.notify({
        name:"strokeDashOffset", value: 0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_055',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index6",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeDashOffset(number):-10
      globalThis.value.message.notify({
        name:"strokeDashOffset", value: -10
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_056',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/noStrokeDashOffset",
      }
      Settings.createWindow(config.uri)
      // 属性-strokeDashOffset(number)-不设置
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_057',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index7",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeLineCap(LineCapStyle)-LineCapStyle.Butt
      globalThis.value.message.notify({
        name:"strokeLineCap", value: LineCapStyle.Butt
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_058',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index7",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeLineCap(LineCapStyle)-LineCapStyle.Round
      globalThis.value.message.notify({
        name:"strokeLineCap", value: LineCapStyle.Round
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_059',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index7",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeLineCap(LineCapStyle)-LineCapStyle.Square
      globalThis.value.message.notify({
        name:"strokeLineCap", value: LineCapStyle.Square
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_060',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/noStrokeLineCap",
      }
      Settings.createWindow(config.uri)
      // 属性-strokeLineCap(LineCapStyle)-不设置
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_061',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index8",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeLineJoin(LineJoinStyle)-LineJoinStyle.Miter
      globalThis.value.message.notify({
        name:"strokeLineJoin", value: LineJoinStyle.Miter
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_062',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index8",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeLineJoin(LineJoinStyle)-LineJoinStyle.Round
      globalThis.value.message.notify({
        name:"strokeLineJoin", value: LineJoinStyle.Round
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_063',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index8",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeLineJoin(LineJoinStyle)-LineJoinStyle.Bevel
      globalThis.value.message.notify({
        name:"strokeLineJoin", value: LineJoinStyle.Bevel
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_064',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/noStrokeLineJoin",
      }
      Settings.createWindow(config.uri)
      // 属性-strokeLineJoin(LineJoinStyle)-不设置
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_065',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index9",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeMiterLimit(number)-(-3)
      globalThis.value.message.notify({
        name:"strokeMiterLimit", value: -3
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_066',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index9",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeMiterLimit(number)-0
      globalThis.value.message.notify({
        name:"strokeMiterLimit", value: 0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_067',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index9",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeMiterLimit(number)-1
      globalThis.value.message.notify({
        name:"strokeMiterLimit", value: 1
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_068',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index9",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeMiterLimit(number)-10
      globalThis.value.message.notify({
        name:"strokeMiterLimit", value: 10
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_069',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/noStrokeMiterLimit",
      }
      Settings.createWindow(config.uri)
      // 属性-strokeMiterLimit(number)-不设置
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_070',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index10",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeOpacity(number)-0
      globalThis.value.message.notify({
        name:"strokeOpacity", value: 0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_071',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index10",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeOpacity(number)-0.5
      globalThis.value.message.notify({
        name:"strokeOpacity", value: 0.5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_072',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index10",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeOpacity(number)-(-0.5)
      globalThis.value.message.notify({
        name:"strokeOpacity", value: -0.5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_073',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/noStrokeOpacity",
      }
      Settings.createWindow(config.uri)
      // 属性-strokeOpacity(number)-不设置
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_074',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index11",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeWidth(number)-5
      globalThis.value.message.notify({
        name:"strokeWidth", value: 5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_075',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index11",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeWidth(number)-0
      globalThis.value.message.notify({
        name:"strokeWidth", value: 0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_076',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index11",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-strokeWidth(number)-(-5)
      globalThis.value.message.notify({
        name:"strokeWidth", value: -5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_077',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/noStrokeWidth",
      }
      Settings.createWindow(config.uri)
      // 属性-strokeWidth(number)-不设置
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_078',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index12",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-antiAlias(boolean)-true
      globalThis.value.message.notify({
        name:"antiAlias", value: true
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_079',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index12",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      // 属性-antiAlias(boolean)-false
      globalThis.value.message.notify({
        name:"antiAlias", value: false
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_080',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/noAntiAlias",
      }
      Settings.createWindow(config.uri)
      // 属性-antiAlias(boolean)-不设置
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_081',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index13",
      }
      Settings.createWindow(config.uri)
      // 场景分析用例-组件显示的尺寸、位置等被设定在显示区域之外
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_082',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index14",
      }
      Settings.createWindow(config.uri)
      // 场景分析用例-通用属性与组件属性冲突
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polygonTest_083',0,async function (done){
      // 更改pages路由
      let config={
        uri:"testability/pages/polygon/Index15",
      }
      Settings.createWindow(config.uri)
      // 性能场景分析-图形页面展开所需时间
      // 性能场景分析-图形页面滑动响应时间
      // 稳定性分析-频繁打开关闭
      // 稳定性分析-频繁滑动
      // 其他异常场景-设备意外关闭
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })
  })
}