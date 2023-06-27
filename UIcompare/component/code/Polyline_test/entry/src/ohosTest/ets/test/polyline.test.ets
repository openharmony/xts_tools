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
 * demoTest_001:Polyline-高度已定'150'-宽度设为-'150px'
 * demoTest_002:Polyline-高度已定'150'-宽度设为-'150vp
 * demoTest_003:Polyline-高度已定'150'-宽度设为-'150fp'
 * demoTest_004:Polyline-高度已定'150'-宽度设为-'150aaaa
 * demoTest_005:Polyline-高度已定'150'-宽度设为-'150
 * demoTest_006:Polyline-高度已定'150'-宽度设为-'0'
 * demoTest_007:Polyline-高度已定'150'-宽度设为-'-100'
 * demoTest_008:Polyline-高度已定150-宽度设为-0
 * demoTest_009:Polyline-高度已定150-宽度设为-(-100)
 * demoTest_010:Polyline-高度已定150-宽度设为-150
 *
 * demoTest_011:Polyline-宽度已定'150'-高度设为-'150px'
 * demoTest_012:Polyline-宽度已定'150'-高度设为-'150vp'
 * demoTest_013:Polyline-宽度已定'150'-高度设为-'150fp'
 * demoTest_014:Polyline-宽度已定'150'-高度设为-'150aaaa'
 * demoTest_015:Polyline-宽度已定'150'-高度设为-'150'
 * demoTest_016:Polyline-宽度已定'150'-高度设为-'0'
 * demoTest_017:Polyline-宽度已定'150'-高度设为-'-100'
 * demoTest_018:Polyline-宽度已定150-高度设为-0
 * demoTest_019:Polyline-宽度已定150-高度设为-(-100)
 * demoTest_020:Polyline-宽度已定150-高度设为-150
 *
 * demoTest_021:Polyline({ width: 100, height: 100 }).设定坐标点points([[0, 0], [100, 100], [100, 0] , [0, 100]])
 * demoTest_022:Polyline({ width: 100, height: 100 }).设定坐标点points([[-100, -100], [100, 0] , [0, 100]])
 * demoTest_023:Polyline({ width: 100, height: 100 }).设定坐标点points([[0, 0]])
 * demoTest_024:Polyline({ width: 100, height: 100 }).设定坐标点points([['10', 0], ['40', '100'], ['70', 0]])
 * demoTest_025:Polyline({ width: 100, height: 100 }).设定坐标点points([['10abc', 0], ['abc', '100'], ['100', '50abc']])
 * demoTest_026:Polyline({ width: 100, height: 100 }).不设定坐标点
 * demoTest_027:Polyline内设置一个可填充颜色的图形.设定fill(Color.Blue)
 * demoTest_028:Polyline内设置一个可填充颜色的图形.设定fill(Color.Transparent)
 * demoTest_029:Polyline内设置一个可填充颜色的图形.设定fill(0xff0000)
 * demoTest_030:Polyline内设置一个可填充颜色的图形.设定fill('#ff0000')
 *
 * demoTest_031:Polyline内设置一个可填充颜色的图形.设定fill('abcd')
 * demoTest_032:Polyline内设置一个可填充颜色的图形.设定fill('rgb(255, 0, 0)'）
 * demoTest_033:Polyline内设置一个可填充颜色的图形.resources/element文件下color.json中增加"name": "Yellow","value": "#ffff00"
 * demoTest_034:Polyline内设置一个可填充颜色的图形.不设置fill
 * demoTest_035:Polyline，设置width('90%'),height:50.fillOpacity设为0
 * demoTest_036:Polyline，设置width('90%'),height:50.fillOpacity设为0.5
 * demoTest_037:Polyline，设置width('90%'),height:50.fillOpacity设为-0.5
 * demoTest_038:Polyline内设置一个有边框的图形.stroke设为Color.Blue
 * demoTest_039:Polyline内设置一个有边框的图形.stroke设为0xff0000
 * demoTest_040:Polyline内设置一个有边框的图形.stroke设为'#ffff00'
 *
 * demoTest_041:添加Polyline.属性-stroke(value:ResourceColor)-string-'abcd'
 * demoTest_042:添加Polyline.属性-stroke(value:ResourceColor)-string-'rgb(255, 0, 0)'
 * demoTest_043:添加Polyline.属性-stroke(value:ResourceColor)-string-'rgb(0, 0, 0)'
 * demoTest_044:添加Polyline.resources/element文件下color.json中增加"name": "Yellow","value": "#ffff00"$r方式引用'app.color.Yellow'
 * demoTest_045:添加Polyline.属性-stroke(value:ResourceColor)-string-不设置
 * demoTest_046:添加Polyline.属性-strokeDashArray(Array<any>)-['abc']
 * demoTest_047:添加Polyline.属性-strokeDashArray(Array<any>)-['5aa']
 * demoTest_048:添加Polyline.属性-strokeDashArray(Array<any>)-[5]
 * demoTest_049:添加Polyline.属性-strokeDashArray(Array<any>)-[-5]
 * demoTest_050:添加Polyline.属性-strokeDashArray(Array<any>)-['5vp','2px','12fp']
 *
 * demoTest_051:添加Polyline.属性-strokeDashArray(Array<any>)-[2,1,6]
 * demoTest_052:添加Polyline.属性-strokeDashArray(Array<any>)-[2,-2,10]
 * demoTest_053:添加Polyline.属性-strokeDashArray(Array<any>)-默认值
 * demoTest_054:添加Polyline.属性-strokeDashOffset(number)-10
 * demoTest_055:添加Polyline.属性-strokeDashOffset(number)-0
 * demoTest_056:添加Polyline.属性-strokeDashOffset(number)-(-10)
 * demoTest_057:添加Polyline.属性-strokeDashOffset(number)-不设置
 * demoTest_058:添加Polyline.属性-strokeLineCap(LineCapStyle)-LineCapStyle.Butt
 * demoTest_059:添加Polyline.属性-strokeLineCap(LineCapStyle)-LineCapStyle.Round
 * demoTest_060:添加Polyline.属性-strokeLineCap(LineCapStyle)-LineCapStyle.Square
 *
 * demoTest_061:添加Polyline.属性-strokeLineCap(LineCapStyle)-不设置
 * demoTest_062:添加Polyline.属性-strokeLineJoin(LineJoinStyle)-LineJoinStyle.Miter
 * demoTest_063:添加Polyline.属性-strokeLineJoin(LineJoinStyle)-LineJoinStyle.Round
 * demoTest_064:添加Polyline.属性-strokeLineJoin(LineJoinStyle)-LineJoinStyle.Bevel
 * demoTest_065:添加Polyline.属性-strokeLineJoin(LineJoinStyle)-不设置
 * demoTest_066:添加Polyline.属性-strokeMiterLimit(number)-(-3)
 * demoTest_067:添加Polyline.属性-strokeMiterLimit(number)-0
 * demoTest_068:添加Polyline.属性-strokeMiterLimit(number)-1
 * demoTest_069:添加Polyline.属性-strokeMiterLimit(number)-3
 * demoTest_070:添加Polyline.属性-strokeMiterLimit(number)-不设置
 *
 * demoTest_071:添加Polyline.属性-strokeOpacity(number)-0
 * demoTest_072:添加Polyline.属性-strokeOpacity(number)-0.5
 * demoTest_073:添加Polyline.属性-strokeOpacity(number)-(-0.5)
 * demoTest_074:添加Polyline.属性-strokeOpacity(number)-不设置
 * demoTest_075:添加Polyline.属性-strokeWidth(number)-5
 * demoTest_076:添加Polyline.属性-strokeWidth(number)-0
 * demoTest_077:添加Polyline.属性-strokeWidth(number)-(-5)
 * demoTest_078:添加Polyline.属性-strokeWidth(number)-不设置
 * demoTest_079:添加Polyline.属性-antiAlias(boolean)-true
 * demoTest_080:添加Polyline.属性-antiAlias(boolean)-false
 *
 * demoTest_081:添加Polyline.属性-antiAlias(boolean)-不设置
 * demoTest_082:添加Polyline.场景分析用例-组件属性width,height与通用属性width,height冲突
 * demoTest_083:添加Polyline.添加Polyline.性能场景分析-图形页面展开所需时间
 *                          添加Polyline.性能场景分析-图形页面滑动响应时间
 *                          添加Polyline.稳定性分析-频繁打开关闭
 *                          添加Polyline.稳定性分析-频繁滑动
 *                          添加Polyline.其他异常场景-hap意外关闭
 *                          添加Polyline.其他异常场景-设备意外关闭
 *
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

export default function polylineTest() {

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  describe('polylineTest', function () {

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

    it('polylineTest_001',0,async function (done){
      //添加Polyline.高度设定不变为150，更改宽度为150px
      let config={
        uri:"testability/pages/polyline/polylineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"widthValue", widthValue:'150px'
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_002',0,async function (done){
      //添加Polyline.高度设定不变为150，更改宽度为150vp
      let config={
        uri:"testability/pages/polyline/polylineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"widthValue", widthValue:'150vp'
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_003',0,async function (done){
      //添加Polyline.高度设定不变为150，更改宽度为150fp
      let config={
        uri:"testability/pages/polyline/polylineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"widthValue", widthValue:'150fp'
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_004',0,async function (done){
      //添加Polyline.高度设定不变为150，更改宽度为'150aaaa'
      let config={
        uri:"testability/pages/polyline/polylineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"widthValue", widthValue:'150aaaa'
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_005',0,async function (done){
      //添加Polyline.高度设定不变为150，更改宽度为'150'
      let config={
        uri:"testability/pages/polyline/polylineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"widthValue", widthValue:'150'
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_006',0,async function (done){
      //添加Polyline.高度设定不变为150，更改宽度为'0'
      let config={
        uri:"testability/pages/polyline/polylineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"widthValue", widthValue:'0'
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_007',0,async function (done){
      //添加Polyline.高度设定不变为150，更改宽度为'-100'
      let config={
        uri:"testability/pages/polyline/polylineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"widthValue", widthValue:'-100'
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_008',0,async function (done){
      //添加Polyline.高度设定不变为150，更改宽度为0
      let config={
        uri:"testability/pages/polyline/polylineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"widthValue", widthValue:0
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_009',0,async function (done){
      //添加Polyline.高度设定不变为150，更改宽度为-100
      let config={
        uri:"testability/pages/polyline/polylineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"widthValue", widthValue:-100
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_010',0,async function (done){
      //添加Polyline.高度设定不变为150，更改宽度为150
      let config={
        uri:"testability/pages/polyline/polylineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"widthValue", widthValue:150
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_011',0,async function (done){
      //添加Polyline.宽度已定'150'-高度设为-'150px'
      let config={
        uri:"testability/pages/polyline/polylineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"widthValue", widthValue:'150'
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:'150px'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_012',0,async function (done){
      //添加Polyline.宽度已定'150'-高度设为-'150vp'
      let config={
        uri:"testability/pages/polyline/polylineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"widthValue", widthValue:'150'
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:'150vp'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_013',0,async function (done){
      //添加Polyline.宽度已定'150'-高度设为-'150fp'
      let config={
        uri:"testability/pages/polyline/polylineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"widthValue", widthValue:'150'
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:'150fp'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_014',0,async function (done){
      //添加Polyline.宽度已定'150'-高度设为-'150aaaa'
      let config={
        uri:"testability/pages/polyline/polylineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"widthValue", widthValue:'150'
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:'150aaaa'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_015',0,async function (done){
      //添加Polyline.宽度已定'150'-高度设为-'150'
      let config={
        uri:"testability/pages/polyline/polylineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"widthValue", widthValue:'150'
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_016',0,async function (done){
      //添加Polyline.宽度已定'150'-高度设为-'0'
      let config={
        uri:"testability/pages/polyline/polylineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"widthValue", widthValue:'150'
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:'0'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_017',0,async function (done){
      //添加Polyline.宽度已定'150'-高度设为-'-100'
      let config={
        uri:"testability/pages/polyline/polylineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"widthValue", widthValue:'150'
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:'-100'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_018',0,async function (done){
      //添加Polyline.宽度已定150-高度设为-0
      let config={
        uri:"testability/pages/polyline/polylineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"widthValue", widthValue:150
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_019',0,async function (done){
      //添加Polyline.宽度已定150-高度设为-(-100)
      let config={
        uri:"testability/pages/polyline/polylineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"widthValue", widthValue:150
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:-100
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_020',0,async function (done){
      //添加Polyline.宽度已定150-高度设为-150
      let config={
        uri:"testability/pages/polyline/polylineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"widthValue", widthValue:150
      })
      globalThis.value.message.notify({
        name:"heightValue", heightValue:150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_021',0,async function (done){
      //添加Polyline.折线经过坐标-points([[0, 0], [100, 100], [100, 0] , [0, 100]])
      let config={
        uri:"testability/pages/polyline/polylineIndex1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"point", point:[[0, 0], [100, 100], [100, 0] , [0, 100]]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_022',0,async function (done){
      //添加Polyline.折线经过坐标-points([[-100, -100], [100, 0] , [0, 100]])
      let config={
        uri:"testability/pages/polyline/polylineIndex1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"point", point:[[-100, -100], [100, 0] , [0, 100]]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_023',0,async function (done){
      //添加Polyline.折线经过坐标-points([[0, 0]])
      let config={
        uri:"testability/pages/polyline/polylineIndex1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"point", point:[[0, 0]]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_024',0,async function (done){
      //添加Polyline.折线经过坐标-points([['10', 0], ['40', '100'], ['70', 0]])
      let config={
        uri:"testability/pages/polyline/polylineIndex1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"point", point:[['10', 0], ['40', '100'], ['70', 0]]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_025',0,async function (done){
      //添加Polyline.折线经过坐标-points([['10abc', 0], ['abc', '100'], ['100', '50abc']])
      let config={
        uri:"testability/pages/polyline/polylineIndex1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"point", point:[['10abc', 0], ['abc', '100'], ['100', '50abc']]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_026',0,async function (done){
      //添加Polyline.折线经过坐标-points([])
      let config={
        uri:"testability/pages/polyline/polylineIndex1",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"point", point:[]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_027',0,async function (done){
      //添加Polyline.fill(value?:ResourceColor)-Color.Blue
      let config={
        uri:"testability/pages/polyline/polylineIndex2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"fill", fill:Color.Blue
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_028',0,async function (done){
      //添加Polyline.fill(value?:ResourceColor)-Color.Transparent
      let config={
        uri:"testability/pages/polyline/polylineIndex2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"fill", fill:Color.Transparent
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_029',0,async function (done){
      //添加Polyline.fill(value?:ResourceColor)-number-0xff0000
      let config={
        uri:"testability/pages/polyline/polylineIndex2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"fill", fill:0xff0000
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_030',0,async function (done){
      //添加Polyline.fill(value?:ResourceColor)-string-'#ff0000'
      let config={
        uri:"testability/pages/polyline/polylineIndex2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"fill", fill:'#ff0000'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_031',0,async function (done){
      //添加Polyline.fill(value?:ResourceColor)-string-'abcd'
      let config={
        uri:"testability/pages/polyline/polylineIndex2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"fill", fill:'abcd'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_032',0,async function (done){
      //添加Polyline.fill(value?:ResourceColor)-string-'rgb(255, 0, 0)'
      let config={
        uri:"testability/pages/polyline/polylineIndex2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"fill", fill:'rgb(255, 0, 0)'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_033',0,async function (done){
      //添加Polyline.resources/element文件下color.json中增加
      // "name": "Yellow",
      // "value": "#ffff00"
      // $r方式引用'app.color.Yellow'
      let config={
        uri:"testability/pages/polyline/polylineIndex2",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"fill", fill:$r('app.color.Yellow')
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_034',0,async function (done){
      //添加Polyline.fill(value:ResourceColor)-不设置
      let config={
        uri:"testability/pages/polyline/polylineIndex3",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_035',0,async function (done){
      //添加Polyline.fillOpacity(value:number)-number-0
      let config={
        uri:"testability/pages/polyline/polylineIndex4",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"fillOpacity", fillOpacity:0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_036',0,async function (done){
      //添加Polyline.fillOpacity(value:number)-number-0.5
      let config={
        uri:"testability/pages/polyline/polylineIndex4",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"fillOpacity", fillOpacity:0.5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_037',0,async function (done){
      //添加Polyline.fillOpacity(value:number)-number-（-0.5
      let config={
        uri:"testability/pages/polyline/polylineIndex4",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"fillOpacity", fillOpacity:-0.5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_038',0,async function (done){
      //添加Polyline.stroke(value:ResourceColor)-color.Blue
      let config={
        uri:"testability/pages/polyline/polylineIndex5",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"stroke", stroke:Color.Blue
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_039',0,async function (done){
      //添加Polyline.stroke(value:ResourceColor)-number.0xff0000
      let config={
        uri:"testability/pages/polyline/polylineIndex5",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"stroke", stroke:0xff0000
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_040',0,async function (done){
      //添加Polyline.stroke(value:ResourceColor)-string-'#ffff00'
      let config={
        uri:"testability/pages/polyline/polylineIndex5",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"stroke", stroke:'#ffff00'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_041',0,async function (done){
      //添加Polyline.stroke(value:ResourceColor)-string-'abcd'
      let config={
        uri:"testability/pages/polyline/polylineIndex5",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"stroke", stroke:'abcd'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_042',0,async function (done){
      //添加Polyline.stroke(value:ResourceColor)-string-'rgb(255, 0, 0)'
      let config={
        uri:"testability/pages/polyline/polylineIndex5",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"stroke", stroke:'rgb(255, 0, 0)'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_043',0,async function (done){
      //添加Polyline.stroke(value:ResourceColor)-string-'rgb(0,0,0)'
      let config={
        uri:"testability/pages/polyline/polylineIndex5",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"stroke", stroke:'rgb(0,0,0)'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_044',0,async function (done){
      //添加Polyline.resources/element文件下color.json中增加
      // "name": "Yellow",
      // "value": "#ffff00"
      // $r方式引用'app.color.Yellow'
      let config={
        uri:"testability/pages/polyline/polylineIndex5",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"stroke", stroke:$r('app.color.Yellow')
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_045',0,async function (done){
      //添加Polyline.stroke(value:ResourceColor)-string-不设置
      let config={
        uri:"testability/pages/polyline/polylineIndex6",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_046',0,async function (done){
      //添加Polyline.绘制一条折线.strokeWidth(8).strokeDashArray设为['abc']
      let config={
        uri:"testability/pages/polyline/polylineIndex7",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeDashArray", strokeDashArray:['abc']
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_047',0,async function (done){
      //添加Polyline.绘制一条折线.strokeWidth(8).strokeDashArray设为['5aa']
      let config={
        uri:"testability/pages/polyline/polylineIndex7",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeDashArray", strokeDashArray:['5aa']
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_048',0,async function (done){
      //添加Polyline.绘制一条折线.strokeWidth(8).strokeDashArray设为[5]
      let config={
        uri:"testability/pages/polyline/polylineIndex7",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeDashArray", strokeDashArray:[5]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_049',0,async function (done){
      //添加Polyline.绘制一条折线.strokeWidth(8).strokeDashArray设为[-5]
      let config={
        uri:"testability/pages/polyline/polylineIndex7",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeDashArray", strokeDashArray:[-5]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_050',0,async function (done){
      //添加Polyline.绘制一条折线.strokeWidth(8).strokeDashArray设为['5vp','2px','12fp']
      let config={
        uri:"testability/pages/polyline/polylineIndex7",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeDashArray", strokeDashArray:['5vp','2px','12fp']
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_051',0,async function (done){
      //添加Polyline.绘制一条折线.strokeWidth(8).strokeDashArray设为[2,1,6]
      let config={
        uri:"testability/pages/polyline/polylineIndex7",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeDashArray", strokeDashArray:[2,1,6]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_052',0,async function (done){
      //添加Polyline.绘制一条折线.strokeWidth(8).strokeDashArray设为[2,-2,10]
      let config={
        uri:"testability/pages/polyline/polylineIndex7",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeDashArray", strokeDashArray:[2,-2,10]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_053',0,async function (done){
      //添加Polyline.绘制一条折线.strokeWidth(8).strokeDashArray不设置
      let config={
        uri:"testability/pages/polyline/polylineIndex8",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_054',0,async function (done){
      //添加Polyline.属性-strokeDashOffset(number)-10
      let config={
        uri:"testability/pages/polyline/polylineIndex9",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeDashOffset", strokeDashOffset:10
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_055',0,async function (done){
      //添加Polyline.属性-strokeDashOffset(number)-0
      let config={
        uri:"testability/pages/polyline/polylineIndex9",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeDashOffset", strokeDashOffset:0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_056',0,async function (done){
      //添加Polyline.属性-strokeDashOffset(number)-(-10)
      let config={
        uri:"testability/pages/polyline/polylineIndex9",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeDashOffset", strokeDashOffset:-10
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_057',0,async function (done){
      //添加Polyline.属性-strokeDashOffset(number)-不设置
      let config={
        uri:"testability/pages/polyline/polylineIndex10",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_058',0,async function (done){
      //添加Polyline.属性-strokeLineCap(LineCapStyle)-LineCapStyle.Butt
      let config={
        uri:"testability/pages/polyline/polylineIndex11",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeLineCap", strokeLineCap:LineCapStyle.Butt
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_059',0,async function (done){
      //添加Polyline.属性-strokeLineCap(LineCapStyle)-LineCapStyle.Round
      let config={
        uri:"testability/pages/polyline/polylineIndex11",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeLineCap", strokeLineCap:LineCapStyle.Round
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_060',0,async function (done){
      //添加Polyline.属性-strokeLineCap(LineCapStyle)-LineCapStyle.Square
      let config={
        uri:"testability/pages/polyline/polylineIndex11",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeLineCap", strokeLineCap:LineCapStyle.Square
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_061',0,async function (done){
      //添加Polyline.属性-strokeLineCap(LineCapStyle)-不设置
      let config={
        uri:"testability/pages/polyline/polylineIndex12",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_062',0,async function (done){
      //添加Polyline.属性-strokeLineJoin(LineJoinStyle)-LineJoinStyle.Miter
      let config={
        uri:"testability/pages/polyline/polylineIndex13",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
        globalThis.value.message.notify({
          name:"strokeLineJoin", strokeLineJoin:LineJoinStyle.Miter
        })
        await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_063',0,async function (done){
      //添加Polyline.属性-strokeLineJoin(LineJoinStyle)-LineJoinStyle.Round
      let config={
        uri:"testability/pages/polyline/polylineIndex13",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeLineJoin", strokeLineJoin:LineJoinStyle.Round
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_064',0,async function (done){
      //添加Polyline.属性-strokeLineJoin(LineJoinStyle)-LineJoinStyle.Bevel
      let config={
        uri:"testability/pages/polyline/polylineIndex13",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeLineJoin", strokeLineJoin:LineJoinStyle.Bevel
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_065',0,async function (done){
      //添加Polyline.属性-strokeLineJoin(LineJoinStyle)-不设置
      let config={
        uri:"testability/pages/polyline/polylineIndex14",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_066',0,async function (done){
      //添加Polyline.属性-strokeMiterLimit(number)-(-3)
      let config={
        uri:"testability/pages/polyline/polylineIndex15",
      }
        Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeMiterLimit", strokeMiterLimit:-3
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_067',0,async function (done){
      //添加Polyline.属性-strokeMiterLimit(number)-0
      let config={
        uri:"testability/pages/polyline/polylineIndex15",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeMiterLimit", strokeMiterLimit:0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_068',0,async function (done){
      //添加Polyline.属性-strokeMiterLimit(number)-1
      let config={
        uri:"testability/pages/polyline/polylineIndex15",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeMiterLimit", strokeMiterLimit:1
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_069',0,async function (done){
      //添加Polyline.属性-strokeMiterLimit(number)-3
      let config={
        uri:"testability/pages/polyline/polylineIndex15",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeMiterLimit", strokeMiterLimit:3
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_070',0,async function (done){
      //添加Polyline.属性-strokeMiterLimit(number)不设置
      let config={
        uri:"testability/pages/polyline/polylineIndex16",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_071',0,async function (done){
      //添加Polyline.属性-strokeOpacity(number)-0
      let config={
        uri:"testability/pages/polyline/polylineIndex17",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeOpacity", strokeOpacity:0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_072',0,async function (done){
      //添加Polyline.属性-strokeOpacity(number)-0.5
      let config={
        uri:"testability/pages/polyline/polylineIndex17",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeOpacity", strokeOpacity:0.5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_073',0,async function (done){
      //添加Polyline.属性-strokeOpacity(number)-(-0.5)
      let config={
        uri:"testability/pages/polyline/polylineIndex17",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeOpacity", strokeOpacity:-0.5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_074',0,async function (done){
      //添加Polyline.属性-strokeOpacity(number)-不设置
      let config={
        uri:"testability/pages/polyline/polylineIndex18",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_075',0,async function (done){
      //添加Polyline.属性-strokeWidth(number)-5
      let config={
        uri:"testability/pages/polyline/polylineIndex19",
      }
        Settings.createWindow(config.uri, {
          dpi: 200
        })
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeWidth", strokeWidth:5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_076',0,async function (done){
      //添加Polyline.属性-strokeWidth(number)-0
      let config={
        uri:"testability/pages/polyline/polylineIndex19",
      }
        Settings.createWindow(config.uri, {
          dpi: 200
        })
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeWidth", strokeWidth:0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_077',0,async function (done){
      //添加Polyline.属性-strokeWidth(number)-(-5)
      let config={
        uri:"testability/pages/polyline/polylineIndex19",
      }
        Settings.createWindow(config.uri, {
          dpi: 200
        })
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeWidth", strokeWidth:-5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_078',0,async function (done){
      //添加Polyline.属性-strokeWidth(number)-不设置
      let config={
        uri:"testability/pages/polyline/polylineIndex20",
      }
        Settings.createWindow(config.uri, {
          dpi: 200
        })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_079',0,async function (done){
      //添加Polyline.antiAlias(boolean)-true
      let config={
        uri:"testability/pages/polyline/polylineIndex21",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"antiAlias", antiAlias:true
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_080',0,async function (done){
      //添加Polyline.antiAlias(boolean)-false
      let config={
        uri:"testability/pages/polyline/polylineIndex21",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"antiAlias", antiAlias:false
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_081',0,async function (done){
      //添加Polyline.antiAlias(boolean)-不设置
      let config={
        uri:"testability/pages/polyline/polylineIndex22",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_082',0,async function (done){
      //添加Polyline.场景分析用例-组件属性width与通用属性width冲突
      //添加Polyline.场景分析用例-组件属性height与通用属性height冲突
      let config={
        uri:"testability/pages/polyline/polylineIndex23",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })

    it('polylineTest_083',0,async function (done){
      //添加Polyline.性能场景分析-图形页面展开所需时间
      //添加Polyline.性能场景分析-图形页面滑动响应时间
      //添加Polyline.稳定性分析-频繁打开关闭s
      //添加Polyline.稳定性分析-频繁滑动
      //添加Polyline.其他异常场景-hap意外关闭
      //添加Polyline.其他异常场景-设备意外关闭
      let config={
        uri:"testability/pages/polyline/polylineIndex24",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)

      done()
    })
  })
}