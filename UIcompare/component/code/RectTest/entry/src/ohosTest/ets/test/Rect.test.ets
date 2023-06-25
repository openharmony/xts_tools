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
 * rectTest_001:Rect-高度已定'150'，圆角不设置，设置宽度-'150px'
 * rectTest_002:Rect-高度已定'150'，圆角不设置，设置宽度-'150vp'
 * rectTest_003:Rect-高度已定'150'，圆角不设置，设置宽度-'150fp'
 * rectTest_004:Rect-高度已定'150'，圆角不设置，设置宽度-'150aaaa'
 * rectTest_005:Rect-高度已定'150'，圆角不设置，设置宽度-'150'
 * rectTest_006:Rect-高度已定'150'，圆角不设置，设置宽度-'0'
 * rectTest_007:Rect-高度已定'150'，圆角不设置，设置宽度-'-100'
 * rectTest_008:Rect-高度已定150，圆角不设置，设置宽度-'0'
 * rectTest_009:Rect-高度已定150，圆角不设置，设置宽度-'-100'
 * rectTest_010:Rect-高度已定150，圆角不设置，设置宽度-'150'
 * rectTest_011:Rect-宽度已定'150'，圆角不设置，设置高度-'150px'
 * rectTest_012:Rect-宽度已定'150'，圆角不设置，设置高度-'150vp'
 * rectTest_013:Rect-宽度已定'150'，圆角不设置，设置高度-'150fp'
 * rectTest_014:Rect-宽度已定'150'，圆角不设置，设置高度-'150aaaa'
 * rectTest_015:Rect-宽度已定'150'，圆角不设置，设置高度-'150'
 * rectTest_016:Rect-宽度已定'150'，圆角不设置，设置高度-'0'
 * rectTest_017:Rect-宽度已定'150'，圆角不设置，设置高度-'-100'
 * rectTest_018:Rect-宽度已定150，圆角不设置，设置高度-'0'
 * rectTest_019:Rect-宽度已定150，圆角不设置，设置高度-'-100'
 * rectTest_020:Rect-宽度已定150，圆角不设置，设置高度-'150'
 * rectTest_021:Rect-宽高为300-设置圆角-'50px'
 * rectTest_022:Rect-宽高为300-设置圆角-'50vp'
 * rectTest_023:Rect-宽高为300-设置圆角-'50fp'
 * rectTest_024:Rect-宽高为300-设置圆角-'50aaaa'
 * rectTest_025:Rect-宽高为300-设置圆角-'50'
 * rectTest_026:Rect-宽高为300-设置圆角-'0'
 * rectTest_027:Rect-宽高为300-设置圆角-'-50'
 * rectTest_028:Rect-宽高为300-设置圆角-0
 * rectTest_029:Rect-宽高为300-设置圆角-(-50)
 * rectTest_030:Rect-宽高为300-设置圆角-50
 * rectTest_031:Rect-宽高为100-设置圆角-60
 * rectTest_032:Rect-宽高为300-设置圆角-[[  ,  ],[  ,  ],[  ,  ],[  ,  ]]
 * rectTest_033:Rect-宽高为300-设置圆角-[[23,45],[12,34],[0,0],[10,39]]
 * rectTest_034:Rect-宽高为300-设置圆角-[[-10,45],[12,34],[0,0],[10,39]]
 * rectTest_035:Rect-宽高为300-设置圆角-[[-10,-10],[12,34],[0,25],[10,39]]
 * rectTest_036:Rect-宽高为300-设置圆角-[[-10,-10],[-10,-10],[-10,-10],[-10,-10]]
 * rectTest_037:Rect-宽高为300-设置圆角-[['abx',29],['abx',29],[29,'abx'],['abx',29]]
 * rectTest_038:Rect-宽高为300-设置圆角-[[-10,10],[-10,10],[-10,10],[-10,10]]
 * rectTest_039:Rect-宽高为300-设置圆角-[['20vp','15px'],['45fp','29vp'],['15abc','36px'],['19fx','33px']]
 * rectTest_040:Rect-宽高为300-设置圆角-[['abx','abx'],['abx','abx'],['abx','abx'],['abx','abx']]
 * rectTest_041:Rect-宽高为300，圆角高度不设置，设置圆角宽度-'50px'
 * rectTest_042:Rect-宽高为300，圆角高度不设置，设置圆角宽度-'50vp'
 * rectTest_043:Rect-宽高为300，圆角高度不设置，设置圆角宽度-'50fp'
 * rectTest_044:Rect-宽高为300，圆角高度不设置，设置圆角宽度-'50aaaa'
 * rectTest_045:Rect-宽高为300，圆角高度不设置，设置圆角宽度-'50'
 * rectTest_046:Rect-宽高为300，圆角高度不设置，设置圆角宽度-'0'
 * rectTest_047:Rect-宽高为300，圆角高度不设置，设置圆角宽度-'-50'
 * rectTest_048:Rect-宽高为300，圆角高度不设置，设置圆角宽度-50
 * rectTest_049:Rect-宽高为300，圆角高度不设置，设置圆角宽度-0
 * rectTest_050:Rect-宽高为300，圆角高度不设置，设置圆角宽度-(-50)
 * rectTest_051:Rect-宽高为300，圆角高度不设置，圆角宽度也不设置
 * rectTest_052:Rect-宽高为300，圆角高度为20，设置圆角宽度-'150px'
 * rectTest_053:Rect-宽高为300，圆角高度为20，设置圆角宽度-'150vp'
 * rectTest_054:Rect-宽高为300，圆角高度为20，设置圆角宽度-'150fp'
 * rectTest_055:Rect-宽高为300，圆角高度为20，设置圆角宽度-'150aaaa'
 * rectTest_056:Rect-宽高为300，圆角高度为20，设置圆角宽度-'150'
 * rectTest_057:Rect-宽高为300，圆角高度为20，设置圆角宽度-'0'
 * rectTest_058:Rect-宽高为300，圆角高度为20，设置圆角宽度-'-150'
 * rectTest_059:Rect-宽高为300，圆角高度为20，设置圆角宽度-150
 * rectTest_060:Rect-宽高为300，圆角高度为20，设置圆角宽度-0
 * rectTest_061:Rect-宽高为300，圆角高度为20，设置圆角宽度-（-150）
 * rectTest_062:Rect-宽高为300，圆角高度为20，圆角宽度也不设置
 * rectTest_063:Rect-宽高为300，圆角宽度不设置，设置圆角高度-'50px'
 * rectTest_064:Rect-宽高为300，圆角宽度不设置，设置圆角高度-'50vp'
 * rectTest_065:Rect-宽高为300，圆角宽度不设置，设置圆角高度-'50fp'
 * rectTest_066:Rect-宽高为300，圆角宽度不设置，设置圆角高度-'50aaaa'
 * rectTest_067:Rect-宽高为300，圆角宽度不设置，设置圆角高度-'50'
 * rectTest_068:Rect-宽高为300，圆角宽度不设置，设置圆角高度-'0'
 * rectTest_069:Rect-宽高为300，圆角宽度不设置，设置圆角高度-'-50'
 * rectTest_070:Rect-宽高为300，圆角宽度不设置，设置圆角高度-50
 * rectTest_071:Rect-宽高为300，圆角宽度不设置，设置圆角高度-0
 * rectTest_072:Rect-宽高为300，圆角宽度不设置，设置圆角高度-(-50)
 * rectTest_073:Rect-宽高为300，圆角宽度不设置，圆角高度不设置
 * rectTest_074:Rect-宽高为300，圆角宽度为20，设置圆角高度-'150px'
 * rectTest_075:Rect-宽高为300，圆角宽度为20，设置圆角高度-'150vp'
 * rectTest_076:Rect-宽高为300，圆角宽度为20，设置圆角高度-'150fp'
 * rectTest_077:Rect-宽高为300，圆角宽度为20，设置圆角高度-'150aaaa'
 * rectTest_078:Rect-宽高为300，圆角宽度为20，设置圆角高度-'150'
 * rectTest_079:Rect-宽高为300，圆角宽度为20，设置圆角高度-'0'
 * rectTest_080:Rect-宽高为300，圆角宽度为20，设置圆角高度-'-150'
 * rectTest_081:Rect-宽高为300，圆角宽度为20，设置圆角高度-150
 * rectTest_082:Rect-宽高为300，圆角宽度为20，设置圆角高度-0
 * rectTest_083:Rect-宽高为300，圆角宽度为20，设置圆角高度-（-150）
 * rectTest_084:Rect-宽高为300，圆角宽度为20，圆角高度不设置
 * rectTest_085:Rect-宽高为100，圆角宽度为60，圆角高度为70
 * rectTest_086:属性-fill(value?:ResourceColor)-Color.Blue
 * rectTest_087:属性-fill(value?:ResourceColor)-Color.Transparent
 * rectTest_088:属性-fill(value:ResourceColor)-number-0xff0000
 * rectTest_089:属性-fill(value:ResourceColor)-string-'#ff0000'
 * rectTest_090:属性-fill(value:ResourceColor)-string-'abcd'
 * rectTest_091:属性-fill(value:ResourceColor)-string-'rgb(255, 0, 0)'
 * rectTest_092:属性-fill(value:ResourceColor)-Resource
 * rectTest_093:属性-fill(value:ResourceColor)-不设置
 * rectTest_094:属性-fillOpacity(value:number)-number-0.5
 * rectTest_095:属性-fillOpacity(value:number)-number-（-0.5）
 * rectTest_096:属性-stroke(value:ResourceColor)-color
 * rectTest_097:属性-stroke(value:ResourceColor)-number
 * rectTest_098:属性-stroke(value:ResourceColor)-string-'#ffff00'
 * rectTest_099:属性-stroke(value:ResourceColor)-string-'abcd'
 * rectTest_100:属性-stroke(value:ResourceColor)-string-'rgb(255, 0, 0)'
 * rectTest_101:属性-stroke(value:ResourceColor)-string-'rgb(0, 0, 0)'
 * rectTest_102:属性-stroke(value:ResourceColor)-string-Rescoure
 * rectTest_103:属性-stroke(value:ResourceColor)-string-不设置
 * rectTest_104:属性-strokeDashArray(Array<any>)-['abc']
 * rectTest_105:属性-strokeDashArray(Array<any>)-['5aa']
 * rectTest_106:属性-strokeDashArray(Array<any>)-[5]
 * rectTest_107:属性-strokeDashArray(Array<any>)-[-5]
 * rectTest_108:属性-strokeDashArray(Array<any>)-['5vp','2px','12fp']
 * rectTest_109:属性-strokeDashArray(Array<any>)-[2,1,6]
 * rectTest_110:属性-strokeDashArray(Array<any>)-[2,-2,10]
 * rectTest_111:属性-strokeDashArray(Array<any>)-默认值
 * rectTest_112:属性-strokeDashOffset(number)-10
 * rectTest_113:属性-strokeDashOffset(number)-0
 * rectTest_114:属性-strokeDashOffset(number)-(-10)
 * rectTest_115:属性-strokeDashOffset(number)-不设置
 * rectTest_116:属性-strokeLineCap(LineCapStyle)-LineCapStyle.Butt
 * rectTest_117:属性-strokeLineCap(LineCapStyle)-LineCapStyle.Round
 * rectTest_118:属性-strokeLineCap(LineCapStyle)-LineCapStyle.Square
 * rectTest_119:属性-strokeLineCap(LineCapStyle)-不设置
 * rectTest_120:属性-strokeLineJoin(LineJoinStyle)-LineJoinStyle.Miter
 * rectTest_121:属性-strokeLineJoin(LineJoinStyle)-LineJoinStyle.Round
 * rectTest_122:属性-strokeLineJoin(LineJoinStyle)-LineJoinStyle.Bevel
 * rectTest_123:属性-strokeLineJoin(LineJoinStyle)-不设置
 * rectTest_124:属性-strokeMiterLimit(number)-(-3)
 * rectTest_125:属性-strokeMiterLimit(number)-0
 * rectTest_126:属性-strokeMiterLimit(number)-1
 * rectTest_127:属性-strokeMiterLimit(number)-10
 * rectTest_128:属性-strokeMiterLimit(number)-不设置
 * rectTest_129:属性-strokeOpacity(number)-0
 * rectTest_130:属性-strokeOpacity(number)-0.5
 * rectTest_131:属性-strokeOpacity(number)-(-0.5)
 * rectTest_132:属性-strokeOpacity(number)-不设置
 * rectTest_133:属性-strokeWidth(number)-5
 * rectTest_134:属性-strokeWidth(number)-0
 * rectTest_135:属性-strokeWidth(number)-(-5)
 * rectTest_136:属性-strokeWidth(number)-不设置
 * rectTest_137:属性-antiAlias(boolean)-true
 * rectTest_138:属性-antiAlias(boolean)-false
 * rectTest_139:属性-antiAlias(boolean)-不设置
 * rectTest_140:场景分析用例-各组件正常显示
 * rectTest_141:场景分析用例-组件显示的尺寸、位置等被设定在显示区域之外
 * rectTest_142:场景分析用例-组件也支持通用属性的圆角半径
 * rectTest_143:场景分析用例-组件也支持通用属性的颜色
 * rectTest_144:性能场景分析-图形页面展开所需时间
 *              性能场景分析-图形页面滑动响应时间
 *              稳定性分析-频繁打开关闭
 *              稳定性分析-频繁滑动
 *              其他异常场景-hap意外关闭
 *              其他异常场景-设备意外关闭
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

export default function rectTest() {

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  describe('rectTest', function () {

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

    it('rectTest_001', 0, async function (done){
      // Rect-高度已定'150'，圆角不设置，设置宽度-'150px'
      let config={
        uri:"testability/pages/rect/widthAndHeight",
      }
     Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '150px'
      })
      globalThis.value.message.notify({
        name: "height", value: '150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_002', 0, async function (done){
      // Rect-高度已定'150'，圆角不设置，设置宽度-'150vp'
      let config={
        uri:"testability/pages/rect/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '150vp'
      })
      globalThis.value.message.notify({
        name: "height", value: '150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_003', 0, async function (done){
      // Rect-高度已定'150'，圆角不设置，设置宽度-'150fp'
      let config={
        uri:"testability/pages/rect/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '150fp'
      })
      globalThis.value.message.notify({
        name: "height", value: '150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_004', 0, async function (done){
      // Rect-高度已定'150'，圆角不设置，设置宽度-'150aaaa'
      let config={
        uri:"testability/pages/rect/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '150aaaa'
      })
      globalThis.value.message.notify({
        name: "height", value: '150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_005', 0, async function (done){
      // Rect-高度已定'150'，圆角不设置，设置宽度-'150'
      let config={
        uri:"testability/pages/rect/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '150'
      })
      globalThis.value.message.notify({
        name: "height", value: '150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_006', 0, async function (done){
      // Rect-高度已定'150'，圆角不设置，设置宽度-'0'
      let config={
        uri:"testability/pages/rect/widthAndHeight",
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

    it('rectTest_007', 0, async function (done){
      // Rect-高度已定'150'，圆角不设置，设置宽度-'-100'
      let config={
        uri:"testability/pages/rect/widthAndHeight",
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

    it('rectTest_008', 0, async function (done){
      // Rect-高度已定150，圆角不设置，设置宽度-'0'
      let config={
        uri:"testability/pages/rect/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '0'
      })
      globalThis.value.message.notify({
        name: "height", value: 150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_009', 0, async function (done){
      // Rect-高度已定150，圆角不设置，设置宽度-'-100'
      let config={
        uri:"testability/pages/rect/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '-100'
      })
      globalThis.value.message.notify({
        name: "height", value: 150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_010', 0, async function (done){
      // Rect-高度已定150，圆角不设置，设置宽度-'150'
      let config={
        uri:"testability/pages/rect/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '150'
      })
      globalThis.value.message.notify({
        name: "height", value: 150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_011', 0, async function (done){
      // Rect-宽度已定'150'，圆角不设置，设置高度-'150px'
      let config={
        uri:"testability/pages/rect/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '150'
      })
      globalThis.value.message.notify({
        name: "height", value: '150px'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_012', 0, async function (done){
      // Rect-宽度已定'150'，圆角不设置，设置高度-'150vp'
      let config={
        uri:"testability/pages/rect/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '150'
      })
      globalThis.value.message.notify({
        name: "height", value: '150vp'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_013', 0, async function (done){
      // Rect-宽度已定'150'，圆角不设置，设置高度-'150fp'
      let config={
        uri:"testability/pages/rect/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '150'
      })
      globalThis.value.message.notify({
        name: "height", value: '150fp'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_014', 0, async function (done){
      // Rect-宽度已定'150'，圆角不设置，设置高度-'150aaaa'
      let config={
        uri:"testability/pages/rect/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '150'
      })
      globalThis.value.message.notify({
        name: "height", value: '150aaaa'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_015', 0, async function (done){
      // Rect-宽度已定'150'，圆角不设置，设置高度-'150'
      let config={
        uri:"testability/pages/rect/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: '150'
      })
      globalThis.value.message.notify({
        name: "height", value: '150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_016', 0, async function (done){
      // Rect-宽度已定'150'，圆角不设置，设置高度-'0'
      let config={
        uri:"testability/pages/rect/widthAndHeight",
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

    it('rectTest_017', 0, async function (done){
      // Rect-宽度已定'150'，圆角不设置，设置高度-'-100'
      let config={
        uri:"testability/pages/rect/widthAndHeight",
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

    it('rectTest_018', 0, async function (done){
      // Rect-宽度已定150，圆角不设置，设置高度-'0'
      let config={
        uri:"testability/pages/rect/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: 150
      })
      globalThis.value.message.notify({
        name: "height", value: '0'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_019', 0, async function (done){
      // Rect-宽度已定150，圆角不设置，设置高度-'-100'
      let config={
        uri:"testability/pages/rect/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: 150
      })
      globalThis.value.message.notify({
        name: "height", value: '-100'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_020', 0, async function (done){
      // Rect-宽度已定150，圆角不设置，设置高度-'150'
      let config={
        uri:"testability/pages/rect/widthAndHeight",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "width", value: 150
      })
      globalThis.value.message.notify({
        name: "height", value: '150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_021', 0, async function (done){
      // Rect-宽高为300-设置圆角-'50px'
      let config={
        uri:"testability/pages/rect/radius",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radius", value: '50px'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_022', 0, async function (done){
      // Rect-宽高为300-设置圆角-'50vp'
      let config={
        uri:"testability/pages/rect/radius",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radius", value: '50vp'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_023', 0, async function (done){
      // Rect-宽高为300-设置圆角-'50fp'
      let config={
        uri:"testability/pages/rect/radius",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radius", value: '50fp'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_024', 0, async function (done){
      // Rect-宽高为300-设置圆角-'50aaaa'
      let config={
        uri:"testability/pages/rect/radius",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radius", value: '50aaaa'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_025', 0, async function (done){
      // Rect-宽高为300-设置圆角-'50'
      let config={
        uri:"testability/pages/rect/radius",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radius", value: '50'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_026', 0, async function (done){
      // Rect-宽高为300-设置圆角-'0'
      let config={
        uri:"testability/pages/rect/radius",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radius", value: '0'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_027', 0, async function (done){
      // Rect-宽高为300-设置圆角-'-50'
      let config={
        uri:"testability/pages/rect/radius",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radius", value: '-50'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_028', 0, async function (done){
      // Rect-宽高为300-设置圆角-0
      let config={
        uri:"testability/pages/rect/radius",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radius", value: 0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_029', 0, async function (done){
      // Rect-宽高为300-设置圆角-(-50)
      let config={
        uri:"testability/pages/rect/radius",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radius", value: -50
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_030', 0, async function (done){
      // Rect-宽高为300-设置圆角-50
      let config={
        uri:"testability/pages/rect/radius",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radius", value: 50
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_031', 0, async function (done){
      // Rect-宽高为100-设置圆角-60
      let config={
        uri:"testability/pages/rect/radiusCircle",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radius", value: 60
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_032', 0, async function (done){
      // Rect-宽高为300-设置圆角-[[  ,  ],[  ,  ],[  ,  ],[  ,  ]]
      let config={
        uri:"testability/pages/rect/radius",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radius", value: [[  ,  ],[  ,  ],[  ,  ],[  ,  ]]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_033', 0, async function (done){
      // Rect-宽高为300-设置圆角-[[23,45],[12,34],[0,0],[10,39]]
      let config={
        uri:"testability/pages/rect/radius",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radius", value: [[23,45],[12,34],[0,0],[10,39]]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_034', 0, async function (done){
      // Rect-宽高为300-设置圆角-[[-10,45],[12,34],[0,0],[10,39]]
      let config={
        uri:"testability/pages/rect/radius",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radius", value: [[-10,45],[12,34],[0,0],[10,39]]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_035', 0, async function (done){
      // Rect-宽高为300-设置圆角-[[-10,-10],[12,34],[0,25],[10,39]]
      let config={
        uri:"testability/pages/rect/radius",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radius", value: [[-10,-10],[12,34],[0,25],[10,39]]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_036', 0, async function (done){
      // Rect-宽高为300-设置圆角-[[-10,-10],[-10,-10],[-10,-10],[-10,-10]]
      let config={
        uri:"testability/pages/rect/radius",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radius", value: [[-10,-10],[-10,-10],[-10,-10],[-10,-10]]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_037', 0, async function (done){
      // Rect-宽高为300-设置圆角-[['abx',29],['abx',29],[29,'abx'],['abx',29]]
      let config={
        uri:"testability/pages/rect/radius",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radius", value: [['abx',29],['abx',29],[29,'abx'],['abx',29]]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_038', 0, async function (done){
      // Rect-宽高为300-设置圆角-[[-10,10],[-10,10],[-10,10],[-10,10]]
      let config={
        uri:"testability/pages/rect/radius",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radius", value: [[-10,10],[-10,10],[-10,10],[-10,10]]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_039', 0, async function (done){
      // Rect-宽高为300-设置圆角-[['20vp','15px'],['45fp','29vp'],['15abc','36px'],['19fx','33px']]
      let config={
        uri:"testability/pages/rect/radius",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radius", value: [['20vp','15px'],['45fp','29vp'],['15abc','36px'],['19fx','33px']]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_040', 0, async function (done){
      // Rect-宽高为300-设置圆角-[['abx','abx'],['abx','abx'],['abx','abx'],['abx','abx']]
      let config={
        uri:"testability/pages/rect/radius",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radius", value: [['abx','abx'],['abx','abx'],['abx','abx'],['abx','abx']]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_041', 0, async function (done){
      // Rect-宽高为300，圆角高度不设置，设置圆角宽度-'50px'
      let config={
        uri:"testability/pages/rect/radiusWidth",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusWidth", value: '50px'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_042', 0, async function (done){
      // Rect-宽高为300，圆角高度不设置，设置圆角宽度-'50vp'
      let config={
        uri:"testability/pages/rect/radiusWidth",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusWidth", value: '50vp'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_043', 0, async function (done){
      // Rect-宽高为300，圆角高度不设置，设置圆角宽度-'50fp'
      let config={
        uri:"testability/pages/rect/radiusWidth",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusWidth", value: '50fp'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_044', 0, async function (done){
      // Rect-宽高为300，圆角高度不设置，设置圆角宽度-'50aaaa'
      let config={
        uri:"testability/pages/rect/radiusWidth",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusWidth", value: '50aaaa'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_045', 0, async function (done){
      // Rect-宽高为300，圆角高度不设置，设置圆角宽度-'50'
      let config={
        uri:"testability/pages/rect/radiusWidth",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusWidth", value: '50'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_046', 0, async function (done){
      // Rect-宽高为300，圆角高度不设置，设置圆角宽度-'0'
      let config={
        uri:"testability/pages/rect/radiusWidth",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusWidth", value: '0'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_047', 0, async function (done){
      // Rect-宽高为300，圆角高度不设置，设置圆角宽度-'-50'
      let config={
        uri:"testability/pages/rect/radiusWidth",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusWidth", value: '-50'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_048', 0, async function (done){
      // Rect-宽高为300，圆角高度不设置，设置圆角宽度-50
      let config={
        uri:"testability/pages/rect/radiusWidth",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusWidth", value: 50
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_049', 0, async function (done){
      // Rect-宽高为300，圆角高度不设置，设置圆角宽度-0
      let config={
        uri:"testability/pages/rect/radiusWidth",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusWidth", value: 0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_050', 0, async function (done){
      // Rect-宽高为300，圆角高度不设置，设置圆角宽度-(-50)
      let config={
        uri:"testability/pages/rect/radiusWidth",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusWidth", value: -50
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_051', 0, async function (done){
      // Rect-宽高为300，圆角高度不设置，圆角宽度也不设置
      let config={
        uri:"testability/pages/rect/noRadius",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_052', 0, async function (done){
      // Rect-宽高为300，圆角高度为20，设置圆角宽度-'150px'
      let config={
        uri:"testability/pages/rect/radiusWidthSpecial",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusWidth", value: '150px'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_053', 0, async function (done){
      // Rect-宽高为300，圆角高度为20，设置圆角宽度-'150vp'
      let config={
        uri:"testability/pages/rect/radiusWidthSpecial",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusWidth", value: '150vp'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_054', 0, async function (done){
      // Rect-宽高为300，圆角高度为20，设置圆角宽度-'150fp'
      let config={
        uri:"testability/pages/rect/radiusWidthSpecial",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusWidth", value: '150fp'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_055', 0, async function (done){
      // Rect-宽高为300，圆角高度为20，设置圆角宽度-'150aaaa'
      let config={
        uri:"testability/pages/rect/radiusWidthSpecial",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusWidth", value: '150aaaa'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_056', 0, async function (done){
      // Rect-宽高为300，圆角高度为20，设置圆角宽度-'150'
      let config={
        uri:"testability/pages/rect/radiusWidthSpecial",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusWidth", value: '150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_057', 0, async function (done){
      // Rect-宽高为300，圆角高度为20，设置圆角宽度-'0'
      let config={
        uri:"testability/pages/rect/radiusWidthSpecial",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusWidth", value: '0'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_058', 0, async function (done){
      // Rect-宽高为300，圆角高度为20，设置圆角宽度-'-150'
      let config={
        uri:"testability/pages/rect/radiusWidthSpecial",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusWidth", value: '-150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_059', 0, async function (done){
      // Rect-宽高为300，圆角高度为20，设置圆角宽度-'-150'
      let config={
        uri:"testability/pages/rect/radiusWidthSpecial",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusWidth", value: 150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_060', 0, async function (done){
      // Rect-宽高为300，圆角高度为20，设置圆角宽度-0
      let config={
        uri:"testability/pages/rect/radiusWidthSpecial",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusWidth", value: 0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_061', 0, async function (done){
      // Rect-宽高为300，圆角高度为20，设置圆角宽度-(-150)
      let config={
        uri:"testability/pages/rect/radiusWidthSpecial",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusWidth", value: -150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_062', 0, async function (done){
      // Rect-宽高为300，圆角高度为20，圆角宽度也不设置
      let config={
        uri:"testability/pages/rect/noRadiusWidth",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_063', 0, async function (done){
      // Rect-宽高为300，圆角宽度不设置，设置圆角高度-'50px'
      let config={
        uri:"testability/pages/rect/radiusHeight",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusHeight", value: '50px'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_064', 0, async function (done){
      // Rect-宽高为300，圆角宽度不设置，设置圆角高度-'50vp'
      let config={
        uri:"testability/pages/rect/radiusHeight",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusHeight", value: '50vp'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_065', 0, async function (done){
      // Rect-宽高为300，圆角宽度不设置，设置圆角高度-'50fp'
      let config={
        uri:"testability/pages/rect/radiusHeight",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusHeight", value: '50fp'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_066', 0, async function (done){
      // Rect-宽高为300，圆角宽度不设置，设置圆角高度-'50aaaa'
      let config={
        uri:"testability/pages/rect/radiusHeight",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusHeight", value: '50aaaa'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_067', 0, async function (done){
      // Rect-宽高为300，圆角宽度不设置，设置圆角高度-'50'
      let config={
        uri:"testability/pages/rect/radiusHeight",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusHeight", value: '50'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_068', 0, async function (done){
      // Rect-宽高为300，圆角宽度不设置，设置圆角高度-'0'
      let config={
        uri:"testability/pages/rect/radiusHeight",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusHeight", value: '0'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_069', 0, async function (done){
      // Rect-宽高为300，圆角宽度不设置，设置圆角高度-'-50'
      let config={
        uri:"testability/pages/rect/radiusHeight",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusHeight", value: '-50'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_070', 0, async function (done){
      // Rect-宽高为300，圆角宽度不设置，设置圆角高度-50
      let config={
        uri:"testability/pages/rect/radiusHeight",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusHeight", value: 50
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_071', 0, async function (done){
      // Rect-宽高为300，圆角宽度不设置，设置圆角高度-0
      let config={
        uri:"testability/pages/rect/radiusHeight",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusHeight", value: 0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_072', 0, async function (done){
      // Rect-宽高为300，圆角宽度不设置，设置圆角高度-(-50)
      let config={
        uri:"testability/pages/rect/radiusHeight",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusHeight", value: -50
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_073', 0, async function (done){
      // Rect-宽高为300，圆角宽度不设置，圆角高度不设置
      let config={
        uri:"testability/pages/rect/noRadius",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_074', 0, async function (done){
      // Rect-宽高为300，圆角宽度为20，设置圆角高度-'150px'
      let config={
        uri:"testability/pages/rect/radiusHeightSpecial",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusHeight", value: '150px'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_075', 0, async function (done){
      // Rect-宽高为300，圆角宽度为20，设置圆角高度-'150vp'
      let config={
        uri:"testability/pages/rect/radiusHeightSpecial",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusHeight", value: '150px'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_076', 0, async function (done){
      // Rect-宽高为300，圆角宽度为20，设置圆角高度-'150fp'
      let config={
        uri:"testability/pages/rect/radiusHeightSpecial",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusHeight", value: '150fp'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_077', 0, async function (done){
      // Rect-宽高为300，圆角宽度为20，设置圆角高度-'150aaaa'
      let config={
        uri:"testability/pages/rect/radiusHeightSpecial",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusHeight", value: '150aaaa'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_078', 0, async function (done){
      // Rect-宽高为300，圆角宽度为20，设置圆角高度-'150'
      let config={
        uri:"testability/pages/rect/radiusHeightSpecial",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusHeight", value: '150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_079', 0, async function (done){
      // Rect-宽高为300，圆角宽度为20，设置圆角高度-'0'
      let config={
        uri:"testability/pages/rect/radiusHeightSpecial",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusHeight", value: '0'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_080', 0, async function (done){
      // Rect-宽高为300，圆角宽度为20，设置圆角高度-'-150'
      let config={
        uri:"testability/pages/rect/radiusHeightSpecial",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusHeight", value: '-150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_081', 0, async function (done){
      // Rect-宽高为300，圆角宽度为20，设置圆角高度-150
      let config={
        uri:"testability/pages/rect/radiusHeightSpecial",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusHeight", value: 150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_082', 0, async function (done){
      // Rect-宽高为300，圆角宽度为20，设置圆角高度-0
      let config={
        uri:"testability/pages/rect/radiusHeightSpecial",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusHeight", value: 0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_083', 0, async function (done){
      // Rect-宽高为300，圆角宽度为20，设置圆角高度-(-150)
      let config={
        uri:"testability/pages/rect/radiusHeightSpecial",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusHeight", value: -150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_084', 0, async function (done){
      // Rect-宽高为300，圆角宽度为20，圆角高度不设置
      let config={
        uri:"testability/pages/rect/noRadiusHeight",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_085', 0, async function (done){
      // Rect-宽高为100，圆角宽度为60，圆角高度为70
      let config={
        uri:"testability/pages/rect/radiusWidthAndHeight",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "radiusWidth", value: 60
      })
      globalThis.value.message.notify({
        name: "radiusHeight", value: 70
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_086', 0, async function (done){
      // 属性-fill(value?:ResourceColor)-Color.Blue
      let config={
        uri:"testability/pages/rect/fillColor",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "fill", value: Color.Blue
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_087', 0, async function (done){
      // 属性-fill(value?:ResourceColor)-Color.Transparent
      let config={
        uri:"testability/pages/rect/fillColor",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "fill", value: Color.Transparent
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_088', 0, async function (done){
      // 属性-fill(value:ResourceColor)-number-0xff0000
      let config={
        uri:"testability/pages/rect/fillColor",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "fill", value: 0xff0000
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_089', 0, async function (done){
      // 属性-fill(value:ResourceColor)-string-'#ff0000'
      let config={
        uri:"testability/pages/rect/fillColor",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "fill", value: '#ff0000'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_090', 0, async function (done){
      // 属性-fill(value:ResourceColor)-string-'abcd'
      let config={
        uri:"testability/pages/rect/fillColor",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "fill", value: 'abcd'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_091', 0, async function (done){
      // 属性-fill(value:ResourceColor)-string-'rgb(255, 0, 0)'
      let config={
        uri:"testability/pages/rect/fillColor",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "fill", value: 'rgb(255, 0, 0)'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_092', 0, async function (done){
      // 属性-fill(value:ResourceColor)-Resource
      let config={
        uri:"testability/pages/rect/fillColor",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "fill", value: $r('app.color.Yellow')
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_093', 0, async function (done){
      // 属性-fill(value:ResourceColor)-不设置
      let config={
        uri:"testability/pages/rect/noFillColor",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_094', 0, async function (done){
      // 属性-fillOpacity(value:number)-number-0.5
      let config={
        uri:"testability/pages/rect/fillOpacity",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "fillOpacity", value: 0.5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_095', 0, async function (done){
      // 属性-fillOpacity(value:number)-number-（-0.5）
      let config={
        uri:"testability/pages/rect/fillOpacity",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "fillOpacity", value: -0.5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_096', 0, async function (done){
      // 属性-stroke(value:ResourceColor)-color
      let config={
        uri:"testability/pages/rect/strokeColor",
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

    it('rectTest_097', 0, async function (done){
      // 属性-stroke(value:ResourceColor)-number
      let config={
        uri:"testability/pages/rect/strokeColor",
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

    it('rectTest_098', 0, async function (done){
      // 属性-stroke(value:ResourceColor)-string-'#ffff00'
      let config={
        uri:"testability/pages/rect/strokeColor",
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

    it('rectTest_099', 0, async function (done){
      // 属性-stroke(value:ResourceColor)-string-'abcd'
      let config={
        uri:"testability/pages/rect/strokeColor",
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

    it('rectTest_100', 0, async function (done){
      // 属性-stroke(value:ResourceColor)-string-'rgb(255, 0, 0)'
      let config={
        uri:"testability/pages/rect/strokeColor",
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

    it('rectTest_101', 0, async function (done){
      // 属性-stroke(value:ResourceColor)-string-'rgb(0, 0, 0)'
      let config={
        uri:"testability/pages/rect/strokeColor",
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

    it('rectTest_102', 0, async function (done){
      // 属性-stroke(value:ResourceColor)-string-Rescoure
      let config={
        uri:"testability/pages/rect/strokeColor",
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

    it('rectTest_103', 0, async function (done){
      // 属性-stroke(value:ResourceColor)-string-Rescoure
      let config={
        uri:"testability/pages/rect/noStrokeColor",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_104', 0, async function (done){
      // 属性-strokeDashArray(Array<any>)-['abc']
      let config={
        uri:"testability/pages/rect/strokeDashArray",
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

    it('rectTest_105', 0, async function (done){
      // 属性-strokeDashArray(Array<any>)-['5aa']
      let config={
        uri:"testability/pages/rect/strokeDashArray",
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

    it('rectTest_106', 0, async function (done){
      // 属性-strokeDashArray(Array<any>)-[5]
      let config={
        uri:"testability/pages/rect/strokeDashArray",
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

    it('rectTest_107', 0, async function (done){
      // 属性-strokeDashArray(Array<any>)-[-5]
      let config={
        uri:"testability/pages/rect/strokeDashArray",
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

    it('rectTest_108', 0, async function (done){
      // 属性-strokeDashArray(Array<any>)-['5vp','2px','12fp']
      let config={
        uri:"testability/pages/rect/strokeDashArray",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeDashArray", value: ['5vp','2px','12fp']
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_109', 0, async function (done){
      // 属性-strokeDashArray(Array<any>)-[2,1,6]
      let config={
        uri:"testability/pages/rect/strokeDashArray",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeDashArray", value: [2,1,6]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_110', 0, async function (done){
      // 属性-strokeDashArray(Array<any>)-[2,-2,10]
      let config={
        uri:"testability/pages/rect/strokeDashArray",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeDashArray", value: [2,-2,10]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_111', 0, async function (done){
      // 属性-strokeDashArray(Array<any>)-默认值
      let config={
        uri:"testability/pages/rect/noStrokeDashArray",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_112', 0, async function (done){
      // 属性-strokeDashOffset(number)-10
      let config={
        uri:"testability/pages/rect/strokeDashOffset",
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

    it('rectTest_113', 0, async function (done){
      // 属性-strokeDashOffset(number)-0
      let config={
        uri:"testability/pages/rect/strokeDashOffset",
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

    it('rectTest_114', 0, async function (done){
      // 属性-strokeDashOffset(number)-(-10)
      let config={
        uri:"testability/pages/rect/strokeDashOffset",
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

    it('rectTest_115', 0, async function (done){
      // 属性-strokeDashOffset(number)-不设置
      let config={
        uri:"testability/pages/rect/noStrokeDashOffset",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_116', 0, async function (done){
      // 属性-strokeLineCap(LineCapStyle)-LineCapStyle.Butt
      let config={
        uri:"testability/pages/rect/strokeLineCap",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "LineCapStyle", value: LineCapStyle.Butt
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_117', 0, async function (done){
      // 属性-strokeLineCap(LineCapStyle)-LineCapStyle.Round
      let config={
        uri:"testability/pages/rect/strokeLineCap",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "LineCapStyle", value: LineCapStyle.Round
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_118', 0, async function (done){
      // 属性-strokeLineCap(LineCapStyle)-LineCapStyle.Square
      let config={
        uri:"testability/pages/rect/strokeLineCap",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name: "LineCapStyle", value: LineCapStyle.Square
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_119', 0, async function (done){
      // 属性-strokeLineCap(LineCapStyle)-不设置
      let config={
        uri:"testability/pages/rect/noStrokeLineCap",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_120', 0, async function (done){
      // 属性-strokeLineJoin(LineJoinStyle)-LineJoinStyle.Miter
      let config={
        uri:"testability/pages/rect/strokeLineJoin",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "LineJoinStyle", value: LineJoinStyle.Miter
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_121', 0, async function (done){
      // 属性-strokeLineJoin(LineJoinStyle)-LineJoinStyle.Round
      let config={
        uri:"testability/pages/rect/strokeLineJoin",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "LineJoinStyle", value: LineJoinStyle.Round
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_122', 0, async function (done){
      // 属性-strokeLineJoin(LineJoinStyle)-LineJoinStyle.Bevel
      let config={
        uri:"testability/pages/rect/strokeLineJoin",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "LineJoinStyle", value: LineJoinStyle.Bevel
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_123', 0, async function (done){
      // 属性-strokeLineJoin(LineJoinStyle)-不设置
      let config={
        uri:"testability/pages/rect/noStrokeLineJoin",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_124', 0, async function (done){
      // 属性-strokeMiterLimit(number)-(-3)
      let config={
        uri:"testability/pages/rect/strokeMiterLimit",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeMiterLimit", value: -3
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_125', 0, async function (done){
      // 属性-strokeMiterLimit(number)-0
      let config={
        uri:"testability/pages/rect/strokeMiterLimit",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeMiterLimit", value: 0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_126', 0, async function (done){
      // 属性-strokeMiterLimit(number)-1
      let config={
        uri:"testability/pages/rect/strokeMiterLimit",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeMiterLimit", value: -3
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_127', 0, async function (done){
      // 属性-strokeMiterLimit(number)-10
      let config={
        uri:"testability/pages/rect/strokeMiterLimit",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "strokeMiterLimit", value: -10
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_128', 0, async function (done){
      // 属性-strokeMiterLimit(number)-不设置
      let config={
        uri:"testability/pages/rect/noStrokeMiterLimit",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_129', 0, async function (done){
      // 属性-strokeOpacity(number)-0
      let config={
        uri:"testability/pages/rect/strokeOpacity",
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

    it('rectTest_130', 0, async function (done){
      // 属性-strokeOpacity(number)-0.5
      let config={
        uri:"testability/pages/rect/strokeOpacity",
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

    it('rectTest_131', 0, async function (done){
      // 属性-strokeOpacity(number)-(-0.5)
      let config={
        uri:"testability/pages/rect/strokeOpacity",
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

    it('rectTest_132', 0, async function (done){
      // 属性-strokeOpacity(number)-不设置
      let config={
        uri:"testability/pages/rect/noStrokeOpacity",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_133', 0, async function (done){
      // 属性-strokeWidth(number)-5
      let config={
        uri:"testability/pages/rect/strokeWidth",
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

    it('rectTest_134', 0, async function (done){
      // 属性-strokeWidth(number)-0
      let config={
        uri:"testability/pages/rect/strokeWidth",
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

    it('rectTest_135', 0, async function (done){
      // 属性-strokeWidth(number)-(-5)
      let config={
        uri:"testability/pages/rect/strokeWidth",
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

    it('rectTest_136', 0, async function (done){
      // 属性-strokeWidth(number)-不设置
      let config={
        uri:"testability/pages/rect/noStrokeWidth",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_137', 0, async function (done){
      // 属性-antiAlias(boolean)-true
      let config={
        uri:"testability/pages/rect/antiAlias",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "antiAlias", value: true
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_138', 0, async function (done){
      // 属性-antiAlias(boolean)-true
      let config={
        uri:"testability/pages/rect/antiAlias",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      globalThis.value.message.notify({
        name: "antiAlias", value: false
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_139', 0, async function (done){
      // 属性-antiAlias(boolean)-true
      let config={
        uri:"testability/pages/rect/noAntiAlias",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_140', 0, async function (done){
      // 场景分析用例-各组件正常显示
      let config={
        uri:"testability/pages/rect/threeRect",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_141', 0, async function (done){
      // 场景分析用例-组件显示的尺寸、位置等被设定在显示区域之外
      let config={
        uri:"testability/pages/rect/outsideTheScreen",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_142', 0, async function (done){
      // 场景分析用例-组件也支持通用属性的圆角半径
      let config={
        uri:"testability/pages/rect/filletRadiusConflict",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_143', 0, async function (done){
      // 场景分析用例-组件也支持通用属性的颜色
      let config={
        uri:"testability/pages/rect/colorConflict",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('rectTest_144', 0, async function (done){
      // 性能场景分析-图形页面展开所需时间
      // 性能场景分析-图形页面滑动响应时间
      // 稳定性分析-频繁打开关闭
      // 稳定性分析-频繁滑动
      // 其他异常场景-hap意外关闭
      // 其他异常场景-设备意外关闭
      let config={
        uri:"testability/pages/rect/threeRect",
      }
      Settings.createWindow(config.uri, {
        dpi: 200
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })
  })
}
