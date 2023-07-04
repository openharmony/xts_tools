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
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import { AttrsManager } from '../model/AttrsManager';

class Utils {
  static rect_left;
  static rect_top;
  static rect_right;
  static rect_bottom;
  static rect_value;

  //获取组件所占矩形区域坐标
  static getComponentRect(key) {
    let strJson = getInspectorByKey(key);
    let obj = JSON.parse(strJson);
    console.info("[getInspectorByKey] current component obj is: " + JSON.stringify(obj));
    let rectInfo = JSON.parse('[' + obj.$rect + ']')
    console.info("[getInspectorByKey] rectInfo is: " + rectInfo);
    this.rect_left = JSON.parse('[' + rectInfo[0] + ']')[0]
    this.rect_top = JSON.parse('[' + rectInfo[0] + ']')[1]
    this.rect_right = JSON.parse('[' + rectInfo[1] + ']')[0]
    this.rect_bottom = JSON.parse('[' + rectInfo[1] + ']')[1]
    return this.rect_value = {
      "left": this.rect_left, "top": this.rect_top, "right": this.rect_right, "bottom": this.rect_bottom
    }
  }
}

//测试通用事件-touch
export default function TouchTest001() {

  function sleep(time) {
    return new Promise((resolve) => setTimeout(resolve, time))
  }

  //  create test suite
  describe('TouchTest001', function () {

    beforeAll(async function () {
      console.info('beforeAll in1');
    })

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

    // create test cases by config.
    it('SUB_ACE_TS_TOUCHEVENT_001',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent001",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_001"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let touchPoint: TouchObject = {
        id: 1,
        x: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
        y: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
        type: TouchType.Down,
        screenX: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
        screenY: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
      }
      sendTouchEvent(touchPoint) // 发送触摸事件
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_001',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent001",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_001"
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_002',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent002",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_002"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let touchPoint: TouchObject = {
        id: 1,
        x: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
        y: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
        type: TouchType.Down,
        screenX: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
        screenY: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
      }
      sendTouchEvent(touchPoint) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_003',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent002",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_003"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let touchPoint: TouchObject = {
        id: 1,
        x: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
        y: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
        type: TouchType.Down,
        screenX: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
        screenY: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
      }
      sendTouchEvent(touchPoint) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_004',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent002",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_004"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let touchPoint: TouchObject = {
        id: 2,
        x: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
        y: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
        type: TouchType.Down,
        screenX: rect.left - 50, // 组件中心点x坐标
        screenY: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
      }
      sendTouchEvent(touchPoint) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_005',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent002",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_005"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let touchPoint: TouchObject = {
        id: 1,
        x: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
        y: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
        type: TouchType.Down,
        screenX: rect.left + 50, // 组件中心点x坐标
        screenY: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
      }
      sendTouchEvent(touchPoint) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_006',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent002",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_006"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let touchPoint: TouchObject = {
        id: 1,
        x: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
        y: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
        type: TouchType.Down,
        screenX: rect.left, // 组件中心点x坐标
        screenY: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
      }
      sendTouchEvent(touchPoint) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_007',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent002",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_007"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let touchPoint: TouchObject = {
        id: 1,
        x: rect.left + (rect.right - rect.left) / 2,
        y: rect.top + (rect.bottom - rect.top) / 2,
        type: TouchType.Down,
        screenX: rect.left + (rect.right - rect.left) / 2,
        screenY: rect.left ,
      }
      sendTouchEvent(touchPoint) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_008',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent002",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_008"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let touchPoint: TouchObject = {
        id: 1,
        x: rect.left + (rect.right - rect.left) / 2,
        y: rect.top + (rect.bottom - rect.top) / 2,
        type: TouchType.Down,
        screenX: rect.left + (rect.right - rect.left) / 2,
        screenY: rect.left - 60,
      }
      sendTouchEvent(touchPoint) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_009',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent002",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_009"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let touchPoint: TouchObject = {
        id: 1,
        x: rect.left + (rect.right - rect.left) / 2,
        y: rect.top + (rect.bottom - rect.top) / 2,
        type: TouchType.Down,
        screenX: rect.left + (rect.right - rect.left) / 2,
        screenY: rect.left + 60,
      }
      sendTouchEvent(touchPoint) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_010',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent002",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_010"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let touchPoint: TouchObject = {
        id: 1,
        x: rect.left ,
        y: rect.top + (rect.bottom - rect.top) / 2,
        type: TouchType.Down,
        screenX: rect.left + (rect.right - rect.left) / 2,
        screenY: rect.top + (rect.bottom - rect.top) / 2,
      }
      sendTouchEvent(touchPoint) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_011',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent002",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_011"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let touchPoint: TouchObject = {
        id: 1,
        x: rect.left + 40 ,
        y: rect.top + (rect.bottom - rect.top) / 2,
        type: TouchType.Down,
        screenX: rect.left + (rect.right - rect.left) / 2,
        screenY: rect.top + (rect.bottom - rect.top) / 2,
      }
      sendTouchEvent(touchPoint) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_012',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent002",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_012"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let touchPoint: TouchObject = {
        id: 1,
        x: rect.left - 40 ,
        y: rect.top + (rect.bottom - rect.top) / 2,
        type: TouchType.Down,
        screenX: rect.left + (rect.right - rect.left) / 2,
        screenY: rect.top + (rect.bottom - rect.top) / 2,
      }
      sendTouchEvent(touchPoint) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_013',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent002",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_013"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let touchPoint: TouchObject = {
        id: 1,
        x: rect.left + (rect.right - rect.left) / 2 ,
        y: rect.top ,
        type: TouchType.Down,
        screenX: rect.left + (rect.right - rect.left) / 2,
        screenY: rect.top + (rect.bottom - rect.top) / 2,
      }
      sendTouchEvent(touchPoint) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_014',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent002",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_014"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let touchPoint: TouchObject = {
        id: 1,
        x: rect.left + (rect.right - rect.left) / 2 ,
        y: rect.top - 20,
        type: TouchType.Down,
        screenX: rect.left + (rect.right - rect.left) / 2,
        screenY: rect.top + (rect.bottom - rect.top) / 2,
      }
      sendTouchEvent(touchPoint) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_015',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent002",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_015"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let touchPoint: TouchObject = {
        id: 1,
        x: rect.left + (rect.right - rect.left) / 2 ,
        y: rect.top + 20,
        type: TouchType.Down,
        screenX: rect.left + (rect.right - rect.left) / 2,
        screenY: rect.top + (rect.bottom - rect.top) / 2,
      }
      sendTouchEvent(touchPoint) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_016',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_016"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            timestamp:0,
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_017',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_017"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            timestamp:100,
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_018',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_018"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            timestamp:-100,
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_019',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_019"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            target:{
              area:{
                width:0,
                height:100,
                globalPosition:{
                  // x:20,
                  // y:30
                },
                position:{
                  // x:100,
                }
              }
            }
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_020',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_020"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            target:{
              area:{
                width:100,
                height:100,
                globalPosition:{
                  // x:20,
                  // y:30
                },
                position:{
                  // x:100,
                }
              }
            }
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_021',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_021"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            target:{
              area:{
                width:-100,
                height:100,
                globalPosition:{
                  // x:20,
                  // y:30
                },
                position:{
                  // x:100,
                }
              }
            }
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_022',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_022"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            target:{
              area:{
                width:100,
                height:150,
                globalPosition:{
                  // x:20,
                  // y:30
                },
                position:{
                  // x:100,
                }
              }
            }
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_023',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_023"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            target:{
              area:{
                width:100,
                height:0,
                globalPosition:{
                  // x:20,
                  // y:30
                },
                position:{
                  // x:100,
                }
              }
            }
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_024',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_024"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            target:{
              area:{
                width:100,
                height:100,
                globalPosition:{
                  // x:20,
                  // y:30
                },
                position:{
                  // x:100,
                }
              }
            }
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_025',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_025"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            target:{
              area:{
                width:100,
                height:-100,
                globalPosition:{
                  // x:20,
                  // y:30
                },
                position:{
                  // x:100,
                }
              }
            }
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_026',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_026"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            target:{
              area:{
                width:100,
                height:150,
                globalPosition:{
                  // x:20,
                  // y:30
                },
                position:{
                  // x:100,
                }
              }
            }
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_027',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_027"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            target:{
              area:{
                width:150,
                height:100,
                globalPosition:{
                  // x:20,
                  // y:30
                },
                position:{
                  x:0,
                  y:'100vp'
                }
              }
            }
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_028',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_028"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            target:{
              area:{
                width:150,
                height:100,
                globalPosition:{
                  // x:20,
                  // y:30
                },
                position:{
                  x:100,
                  y:'100vp'
                }
              }
            }
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_029',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_029"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            target:{
              area:{
                width:150,
                height:100,
                globalPosition:{
                  // x:20,
                  // y:30
                },
                position:{
                  x:-100,
                  y:'100vp'
                }
              }
            }
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_030',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_030"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            target:{
              area:{
                width:150,
                height:100,
                globalPosition:{
                  // x:20,
                  // y:30
                },
                position:{
                  x:"100vp",
                  y:0
                }
              }
            }
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_031',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_031"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            target:{
              area:{
                width:150,
                height:100,
                globalPosition:{
                  // x:20,
                  // y:30
                },
                position:{
                  x:"100vp",
                  y:100
                }
              }
            }
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_032',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_032"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            target:{
              area:{
                width:150,
                height:100,
                globalPosition:{
                  // x:20,
                  // y:30
                },
                position:{
                  x:"100vp",
                  y:-100
                }
              }
            }
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_033',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_033"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            target:{
              area:{
                width:150,
                height:100,
                globalPosition:{
                  x:0,
                  y:'100vp'
                },
                position:{
                  // x:"100vp",
                  // y:0
                }
              }
            }
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_034',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_034"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            target:{
              area:{
                width:150,
                height:100,
                globalPosition:{
                  x:100,
                  y:'100vp'
                },
                position:{
                  // x:"100vp",
                  // y:0
                }
              }
            }
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_035',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_035"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            target:{
              area:{
                width:150,
                height:100,
                globalPosition:{
                  x:-100,
                  y:'100vp'
                },
                position:{
                  // x:"100vp",
                  // y:0
                }
              }
            }
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_036',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_036"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            target:{
              area:{
                width:150,
                height:100,
                globalPosition:{
                  x:'100vp',
                  y:0
                },
                position:{
                  // x:"100vp",
                  // y:0
                }
              }
            }
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_037',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_037"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            target:{
              area:{
                width:150,
                height:100,
                globalPosition:{
                  x:'100vp',
                  y:100
                },
                position:{
                  // x:"100vp",
                  // y:0
                }
              }
            }
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_038',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent003",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_038"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let testValues = [
        {
          describe: picName, //截图命名的一部分
          setValue: {
            touches:{
              id:1,
              x: rect.left + (rect.right - rect.left) / 2 ,
              y: rect.top + (rect.bottom - rect.top) / 2,
              type: TouchType.Down,
              screenX: rect.left + (rect.right - rect.left) / 2,
              screenY: rect.top + (rect.bottom - rect.top) / 2,
            },
            target:{
              area:{
                width:150,
                height:100,
                globalPosition:{
                  x:'100vp',
                  y:-100
                },
                position:{
                  // x:"100vp",
                  // y:0
                }
              }
            }
          }, //要测试的属性值
        }
      ]
      AttrsManager.change(picName, testValues);
      await sleep(1000)
      sendTouchEvent(testValues[0].setValue.touches) // 发送触摸事件
      await sleep(1000)
      windowSnap.snapShot(globalThis.context, picName)
      await sleep(1000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_039',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent004",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_039"
      sendEventByKey("onClick", 10, "")
      await sleep(3000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_040',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent005",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_040"
      sendEventByKey("onClick", 10, "")
      await sleep(3000)
      done();
    })

    it('SUB_ACE_TS_TOUCHEVENT_041',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent002",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_041"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let touchPoint: TouchObject = {
        id: 1,
        x: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
        y: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
        type: TouchType.Down,
        screenX: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
        screenY: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
      }
      for(var i = 0;i <= 300;i++){
        sendTouchEvent(touchPoint) // 发送触摸事件
        if(i==300){
          await sleep(1000)
          done();
        }
      }
    })

    it('SUB_ACE_TS_TOUCHEVENT_042',0,async function (done){
      //更改page路由
      let config={
        uri:"TestAbility/pages/touchEvent/touchEvent002",
      }
      Settings.createWindow(config.uri)
      await sleep(1000)
      let picName = "SUB_ACE_TS_TOUCHEVENT_042"
      let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
      let xValue = rect.right - rect.left
      for(var i = 0;i <= (rect.right - rect.left);i++){
        let touchPoint: TouchObject = {
          id: 1,
          x: rect.left + i, // 组件中心点x坐标
          y: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
          type: TouchType.Down,
          screenX: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
          screenY: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
        }
        sendTouchEvent(touchPoint) // 发送触摸事件
        if(i==(rect.bottom - rect.top - 1)){
          await sleep(1000)
          done();
        }
      }
    })
  })
}

export function create() {
throw new Error('Function not implemented.');
}
