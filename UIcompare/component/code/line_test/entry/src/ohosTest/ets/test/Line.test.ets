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
 * lineTest_001:line高度设定不变为'150'，更改宽度为'150px'
 * lineTest_002:line高度设定不变为'150'，更改宽度为'150vp'
 * lineTest_003:line高度设定不变为'150'，更改宽度为'150fp'
 * lineTest_004:line高度设定不变为'150'，更改宽度为'150aaaa'
 * lineTest_005:line高度设定不变为'150'，更改宽度为'150'
 * lineTest_006:line高度设定不变为'150'，更改宽度为'0'
 * lineTest_007:line高度设定不变为'150'，更改宽度为'-100'
 * lineTest_008:line高度设定不变为150，更改宽度为0
 * lineTest_009:line高度设定不变为150，更改宽度为(-100)
 * lineTest_010:line高度设定不变为150，更改宽度为150
 *
 * lineTest_011:line宽度设定不变为’150‘，更改高度度为'150px'
 * lineTest_012:line宽度设定不变为’150‘，更改高度度为'150vp'
 * lineTest_013:line宽度设定不变为’150‘，更改高度度为'150fp'
 * lineTest_014:line宽度设定不变为’150‘，更改高度度为'150aaaa'
 * lineTest_015:line宽度设定不变为’150‘，更改高度度为'150'
 * lineTest_016:line宽度设定不变为’150‘，更改高度度为'0'
 * lineTest_017:line宽度设定不变为’150‘，更改高度度为'-100'
 * lineTest_018:line宽度设定不变为150，更改高度度为0
 * lineTest_019:line宽度设定不变为150，更改高度度为(-100)
 * lineTest_020:line宽度设定不变为150，更改高度度为150
 *
 * lineTest_021:添加line，设置stroke为Color.Blue
 * lineTest_022:添加line，设置stroke为0xff0000
 * lineTest_023:添加line，设置stroke为'#ffff00'
 * lineTest_024:添加line，设置stroke为'abcd'
 * lineTest_025:添加line，设置stroke为'rgb(255, 0, 0)'
 * lineTest_026:添加line，设置stroke为'rgb(0, 0, 0)'
 * lineTest_027:添加line，resources/element文件下color.json中增加"name": "Yellow"
 * lineTest_028:添加line，不设置stroke
 * lineTest_029:添加line，strokeWidth(8)，strokeDashArray设为['abc']
 * lineTest_030:添加line，strokeWidth(8)，strokeDashArray设为['5aa']
 *
 * lineTest_031:添加line，strokeWidth(8)，strokeDashArray设为[5]
 * lineTest_032:添加line，strokeWidth(8)，strokeDashArray设为[-5]
 * lineTest_033:添加line，strokeWidth(8)，strokeDashArray设为['5vp','2px','12fp']
 * lineTest_034:添加line，strokeWidth(8)，strokeDashArray设为[2,1,6]
 * lineTest_035:添加line，strokeWidth(8)，strokeDashArray设为[2,-2,10]
 * lineTest_036:添加line，strokeWidth(8)，strokeDashArray不设置
 * lineTest_037:添加line，width(200).height(150).stroke(Color.Black).strokeWidth(4).strokeDashArray([20]).strokeDashOffset设为10
 * lineTest_038:添加line，width(200).height(150).stroke(Color.Black).strokeWidth(4).strokeDashArray([20]).strokeDashOffset设为0
 * lineTest_039:添加line，width(200).height(150).stroke(Color.Black).strokeWidth(4).strokeDashArray([20]).strokeDashOffset设为-10
 * lineTest_040:添加line，width(200).height(150).stroke(Color.Black).strokeWidth(4).strokeDashArray([20]).strokeDashOffset不设置
 *
 * lineTest_041:添加line，绘制一条直线.strokeWidth(8)更改线条端点类型.strokeLineCap设为LineCapStyle.Butt
 * lineTest_042:添加line，绘制一条直线.strokeWidth(8)更改线条端点类型.strokeLineCap设为LineCapStyle.Round
 * lineTest_043:添加line，绘制一条直线.strokeWidth(8)更改线条端点类型.strokeLineCap设为LineCapStyle.Square
 * lineTest_044:添加line，绘制一条直线.strokeWidth(8)更改线条端点类型.strokeLineCap不设置
 * lineTest_045:添加line，width(300).height(50).fill(Color.Pink).stroke(Color.Black).strokeWidth(4).strokeOpacity设为0
 * lineTest_046:添加line，width(300).height(50).fill(Color.Pink).stroke(Color.Black).strokeWidth(4).strokeOpacity设为0.5
 * lineTest_047:添加line，width(300).height(50).fill(Color.Pink).stroke(Color.Black).strokeWidth(4).strokeOpacity设为-0.5
 * lineTest_048:添加line，width(300).height(50).fill(Color.Pink).stroke(Color.Black).strokeWidth(4).strokeOpacity不设置
 * lineTest_049:添加line，width(300).height(50).strokeWidth设为5
 * lineTest_050:添加line，width(300).height(50).strokeWidth设为0
 *
 * lineTest_051:添加line，width(300).height(50).strokeWidth设为-5
 * lineTest_052:添加line，width(300).height(50).strokeWidth不设置
 * lineTest_053:添加line，绘制一条直线.strokeWidth(8).antiAlias设为true
 * lineTest_054:添加line，绘制一条直线.strokeWidth(8).antiAlias设为false
 * lineTest_055:添加line，绘制一条直线.strokeWidth(8).antiAlias不设置
 * lineTest_056:添加line，绘制一条直线，通过通用属性设置使组件的尺寸、位置等被设定在显示区域之外.组件依旧可以正常显示
 * lineTest_057:添加line，绘制一条直线，通用属性边框颜色设定为红色.组件属性stoke设定为蓝色
 * lineTest_058:添加line，设定多个图形，各属性悉数设定
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


export default function lineTest() {

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  describe('lineTest', function () {

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

    it('lineTest_001',0,async function (done){
      //line高度设定不变为150，更改宽度为150px
      let config={
        uri:"testability/pages/line/lineIndex1-20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"width", widthValue:'150px'
      })
      globalThis.value.message.notify({
        name:"height", heightValue:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_002',0,async function (done){
      //line高度设定不变为150，更改宽度为150vp
      let config={
        uri:"testability/pages/line/lineIndex1-20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"width", widthValue:'150vp'
      })
      globalThis.value.message.notify({
        name:"height", heightValue:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_003',0,async function (done){
      //line高度设定不变为150，更改宽度为150fp
      let config={
        uri:"testability/pages/line/lineIndex1-20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"width", widthValue:'150fp'
      })
      globalThis.value.message.notify({
        name:"height", heightValue:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_004',0,async function (done){
      //line高度设定不变为150，更改宽度为150aaaa
      let config={
        uri:"testability/pages/line/lineIndex1-20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"width", widthValue:'150aaaa'
      })
      globalThis.value.message.notify({
        name:"height", heightValue:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_005',0,async function (done){
      //line高度设定不变为150，更改宽度为150
      let config={
        uri:"testability/pages/line/lineIndex1-20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"width", widthValue:'150'
      })
      globalThis.value.message.notify({
        name:"height", heightValue:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_006',0,async function (done){
      //line高度设定不变为150，更改宽度为0
      let config={
        uri:"testability/pages/line/lineIndex1-20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"width", widthValue:'0'
      })
      globalThis.value.message.notify({
        name:"height", heightValue:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_007',0,async function (done){
      //line高度设定不变为150，更改宽度为-100
      let config={
        uri:"testability/pages/line/lineIndex1-20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"width", widthValue:'-100'
      })
      globalThis.value.message.notify({
        name:"height", heightValue:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_008',0,async function (done){
      //line高度设定不变为150，更改宽度为-0
      let config={
        uri:"testability/pages/line/lineIndex1-20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"width", widthValue:0
      })
      globalThis.value.message.notify({
        name:"height", heightValue:150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_009',0,async function (done){
      //line高度设定不变为150，更改宽度为(-100)
      let config={
        uri:"testability/pages/line/lineIndex1-20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"width", widthValue:(-100)
      })
      globalThis.value.message.notify({
        name:"height", heightValue:150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_010',0,async function (done){
      //line高度设定不变为150，更改宽度为-(-100)
      let config={
        uri:"testability/pages/line/lineIndex1-20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"width", widthValue:150
      })
      globalThis.value.message.notify({
        name:"height", heightValue:150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_011',0,async function (done){
      //line宽度设定不变为’150‘，更改高度度为'150px'
      let config={
        uri:"testability/pages/line/lineIndex1-20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"width", widthValue:'150'
      })
      globalThis.value.message.notify({
        name:"height", heightValue:'150px'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_012',0,async function (done){
      //line宽度设定不变为’150‘，更改高度度为'150vp'
      let config={
        uri:"testability/pages/line/lineIndex1-20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"width", widthValue:'150'
      })
      globalThis.value.message.notify({
        name:"height", heightValue:'150vp'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_013',0,async function (done){
      //line宽度设定不变为’150‘，更改高度度为'150vp'
      let config={
        uri:"testability/pages/line/lineIndex1-20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"width", widthValue:'150'
      })
      globalThis.value.message.notify({
        name:"height", heightValue:'150fp'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_014',0,async function (done){
      //line宽度设定不变为’150‘，更改高度度为'150aaaa'
      let config={
        uri:"testability/pages/line/lineIndex1-20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"width", widthValue:'150'
      })
      globalThis.value.message.notify({
        name:"height", heightValue:'150aaaa'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_015',0,async function (done){
      //line宽度设定不变为’150‘，更改高度度为'150'
      let config={
        uri:"testability/pages/line/lineIndex1-20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"width", widthValue:'150'
      })
      globalThis.value.message.notify({
        name:"height", heightValue:'150'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_016',0,async function (done){
      //line宽度设定不变为’150‘，更改高度度为'0'
      let config={
        uri:"testability/pages/line/lineIndex1-20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"width", widthValue:'150'
      })
      globalThis.value.message.notify({
        name:"height", heightValue:'0'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_017',0,async function (done){
      //line宽度设定不变为’150‘，更改高度度为'-100'
      let config={
        uri:"testability/pages/line/lineIndex1-20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"width", widthValue:'150'
      })
      globalThis.value.message.notify({
        name:"height", heightValue:'-100'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_018',0,async function (done){
      //line宽度设定不变为150，更改高度度为0
      let config={
        uri:"testability/pages/line/lineIndex1-20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"width", widthValue:150
      })
      globalThis.value.message.notify({
        name:"height", heightValue:0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_019',0,async function (done){
      //line宽度设定不变为150，更改高度度为-100
      let config={
        uri:"testability/pages/line/lineIndex1-20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"width", widthValue:150
      })
      globalThis.value.message.notify({
        name:"height", heightValue:(-100)
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_020',0,async function (done){
      //line宽度设定不变为150，更改高度度为150
      let config={
        uri:"testability/pages/line/lineIndex1-20",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"width", widthValue:150
      })
      globalThis.value.message.notify({
        name:"height", heightValue:150
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_021',0,async function (done){
      // 添加line，设置stroke为color.Blue
      let config={
        uri:"testability/pages/line/lineIndex21-28",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"color", stroke:Color.Blue
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_022',0,async function (done){
      //添加line，设置stroke为0xff0000
      let config={
        uri:"testability/pages/line/lineIndex21-28",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"color", stroke:0xff0000
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_023',0,async function (done){
      //添加line，设置stroke为'#ffff00'
      let config={
        uri:"testability/pages/line/lineIndex21-28",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"color", stroke:'#ffff00'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_024',0,async function (done){
      //添加line，设置stroke为'abcd'
      let config={
        uri:"testability/pages/line/lineIndex21-28",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"color", stroke:'abcd'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_025',0,async function (done){
      //添加line，设置stroke为'rgb(255, 0, 0)'
      let config={
        uri:"testability/pages/line/lineIndex21-28",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"color", stroke:'rgb(255, 0, 0)'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_026',0,async function (done){
      //添加line，设置stroke为'rgb(0, 0, 0)'
      let config={
        uri:"testability/pages/line/lineIndex21-28",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"color", stroke:'rgb(0, 0, 0)'
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_027',0,async function (done){
      //添加line，resources/element文件下color.json中增加
      // "name": "Yellow",
      // "value": "#ffff00"
      let config={
        uri:"testability/pages/line/lineIndex21-28",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"color", stroke:$r('app.color.Yellow')
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_028',0,async function (done){
      //添加line，不设置stroke
      let config={
        uri:"testability/pages/line/lineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_029',0,async function (done){
      //添加line，strokeWidth(8)，strokeDashArray设为['abc']
      let config={
        uri:"testability/pages/line/lineIndex29-36",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeWidth", strokeWidth:8
      })
      globalThis.value.message.notify({
        name:"strokeDashArray", strokeDashArray:['abc']
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_030',0,async function (done){
      //添加line，strokeWidth(8)，strokeDashArray设为['5aa']
      let config={
        uri:"testability/pages/line/lineIndex29-36",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeWidth", strokeWidth:8
      })
      globalThis.value.message.notify({
        name:"strokeDashArray", strokeDashArray:['5aa']
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_031',0,async function (done){
      //添加line，strokeWidth(8)，strokeDashArray设为[5]
      let config={
        uri:"testability/pages/line/lineIndex29-36",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeWidth", strokeWidth:8
      })
      globalThis.value.message.notify({
        name:"strokeDashArray", strokeDashArray:[5]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_032',0,async function (done){
      //添加line，strokeWidth(8)，strokeDashArray设为[-5]
      let config={
        uri:"testability/pages/line/lineIndex29-36",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeWidth", strokeWidth:8
      })
      globalThis.value.message.notify({
        name:"strokeDashArray", strokeDashArray:[-5]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_033',0,async function (done){
      //添加line，strokeWidth(8)，strokeDashArray设为['5vp','2px','12fp']
      let config={
        uri:"testability/pages/line/lineIndex29-36",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeWidth", strokeWidth:8
      })
      globalThis.value.message.notify({
        name:"strokeDashArray", strokeDashArray:['5vp','2px','12fp']
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_034',0,async function (done){
      //添加line，strokeWidth(8)，strokeDashArray设为[2,1,6]
      let config={
        uri:"testability/pages/line/lineIndex29-36",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeWidth", strokeWidth:8
      })
      globalThis.value.message.notify({
        name:"strokeDashArray", strokeDashArray:[2,1,6]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_035',0,async function (done){
      //添加line，strokeWidth(8)，strokeDashArray设为[2,-2,10]
      let config={
        uri:"testability/pages/line/lineIndex29-36",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeWidth", strokeWidth:8
      })
      globalThis.value.message.notify({
        name:"strokeDashArray", strokeDashArray:[2,-2,10]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_036',0,async function (done){
      //添加line，strokeWidth(8)，strokeDashArray不设置
      let config={
        uri:"testability/pages/line/lineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeWidth", strokeWidth:8
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_037',0,async function (done){
      //添加line，width(200).height(150).stroke(Color.Black).strokeWidth(4).strokeDashArray([20]).strokeDashOffset设为10
      let config={
        uri:"testability/pages/line/lineIndex37-40",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeDashOffset", strokeDashOffset:10
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_038',0,async function (done){
      //添加line，width(200).height(150).stroke(Color.Black).strokeWidth(4).strokeDashArray([20]).strokeDashOffset设为0
      let config={
        uri:"testability/pages/line/lineIndex37-40",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeDashOffset", strokeDashOffset:0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_039',0,async function (done){
      //添加line，width(200).height(150).stroke(Color.Black).strokeWidth(4).strokeDashArray([20]).strokeDashOffset设为0
      let config={
        uri:"testability/pages/line/lineIndex37-40",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeDashOffset", strokeDashOffset:-10
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_040',0,async function (done){
      //添加line，width(200).height(150).stroke(Color.Black).strokeWidth(4).strokeDashArray([20]).strokeDashOffset不设置
      let config={
        uri:"testability/pages/line/lineIndex29-36",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeWidth", strokeWidth:4
      })
      globalThis.value.message.notify({
        name:"strokeDashArray", strokeDashArray:[20]
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_041',0,async function (done){
      //添加line，strokeWidth(8).更改线条端点类型strokeLineCap设为LineCapStyle.Butt
      let config={
        uri:"testability/pages/line/lineIndex41-44",
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

    it('lineTest_042',0,async function (done){
      //添加line，strokeWidth(8).更改线条端点类型strokeLineCap设为LineCapStyle.Round
      let config={
        uri:"testability/pages/line/lineIndex41-44",
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

    it('lineTest_043',0,async function (done){
      //添加line，strokeWidth(8).更改线条端点类型strokeLineCap设为LineCapStyle.Square
      let config={
        uri:"testability/pages/line/lineIndex41-44",
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

    it('lineTest_044',0,async function (done){
      //添加line，strokeWidth(8).更改线条端点类型strokeLineCap不设置
      let config={
        uri:"testability/pages/line/lineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeWidth", strokeWidth:8
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_045',0,async function (done){
      //添加line，width(300).height(50).fill(Color.Pink).stroke(Color.Black).strokeWidth(4).strokeOpacity设为0
      let config={
        uri:"testability/pages/line/lineIndex45-48",
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

    it('lineTest_046',0,async function (done){
      //添加line，width(300).height(50).fill(Color.Pink).stroke(Color.Black).strokeWidth(4).strokeOpacity设为0.5
      let config={
        uri:"testability/pages/line/lineIndex45-48",
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

    it('lineTest_047',0,async function (done){
      //添加line，width(300).height(50).fill(Color.Pink).stroke(Color.Black).strokeWidth(4).strokeOpacity设为-0.5
      let config={
        uri:"testability/pages/line/lineIndex45-48",
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

    it('lineTest_048',0,async function (done){
      //添加line，width(300).height(50).fill(Color.Pink).stroke(Color.Black).strokeWidth(4).strokeOpacity不设置
      let config={
        uri:"testability/pages/line/lineIndex45-48",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_049',0,async function (done){
      //添加line，width(300).height(50).strokeWidth设为5
      let config={
        uri:"testability/pages/line/lineIndex49-52",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeWidth", strokeWidth:5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_050',0,async function (done){
      //添加line，width(300).height(50).strokeWidth设为0
      let config={
        uri:"testability/pages/line/lineIndex49-52",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeWidth", strokeWidth:0
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_051',0,async function (done){
      //添加line，width(300).height(50).strokeWidth设为-5
      let config={
        uri:"testability/pages/line/lineIndex49-52",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"strokeWidth", strokeWidth:-5
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_052',0,async function (done){
      //添加line，width(300).height(50).strokeWidth不设置
      let config={
        uri:"testability/pages/line/lineIndex49-52",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_053',0,async function (done){
      //添加line，绘制一条直线.strokeWidth(8).antiAlias设为true
      let config={
        uri:"testability/pages/line/lineIndex53-55",
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

    it('lineTest_054',0,async function (done){
      //添加line，绘制一条直线.strokeWidth(8).antiAlias设为false
      let config={
        uri:"testability/pages/line/lineIndex53-55",
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

    it('lineTest_055',0,async function (done){
      //添加line，绘制一条直线.strokeWidth(8).antiAlias不设置
      let config={
        uri:"testability/pages/line/lineIndex",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      globalThis.value.message.notify({
        name:"width", widthValue:150
      })
      globalThis.value.message.notify({
        name:"height", heightValue:150
      })
      globalThis.value.message.notify({
        name:"strokeWidth", strokeWidth:8
      })
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_056',0,async function (done){
      //添加line，绘制一条直线，通过通用属性设置使组件的尺寸、位置等被设定在显示区域之外
      let config={
        uri:"testability/pages/line/lineIndex56",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_057',0,async function (done){
      //添加line，绘制一条直线，通用属性边框颜色设定为红色.组件属性stoke设定为蓝色
      let config={
        uri:"testability/pages/line/lineIndex57",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })

    it('lineTest_058',0,async function (done){
      //添加line，设定多个图形，各属性悉数设定
      let config={
        uri:"testability/pages/line/lineIndex58",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      windowSnap.snapShot(globalThis.context)
      await sleep(1000)
      done()
    })
  })
}
