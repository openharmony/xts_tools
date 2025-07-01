/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
 
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON,Component ,MouseButton } from '@ohos.UiTest'
/*
 * SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0010:设置文本颜色
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

export default function UiComponentCanvasOffscreenCanvasGpuDraw() {

  describe('UiComponentCanvasOffscreenCanvasGpuDraw', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return
      }

      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      })
      await Utils.sleep(1000);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1960
       * @tc.name    Call the beginPath() interface of the canvas component
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1960', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1960 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw01")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1960 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1740
       * @tc.name    Set the drawing component interface fillRect to fillRect(0,0,100,100)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1740', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1740 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw02")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1740 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1130
       * @tc.name    Set the strokeStyle attribute of the stroke color property to: Not set fillStyle = "rgb(255, 0, 0)"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1130', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1130 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw03")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1130 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1290
       * @tc.name    Set radial gradient: createRadialGradient(200,200,100,200,200,0)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1290', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1290 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw04")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1290 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2630
       * @tc.name    Set fillText("Hello World!", 50, 100)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2630', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2630 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw05")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2630 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0270
       * @tc.name    Set the save of the canvas component: Pushes the current state into the state stack and removes the top state from the state stack
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0270', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0270 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw06")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0270 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1770
       * @tc.name    Set fillRect(100,100,-100,100)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1770', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1770 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw07")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1770 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0280
       * @tc.name    Set the save of the canvas component: press the current state into the state stack, remove the top state from the state stack, and transform the matrix also takes effect
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0280', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0280 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw08")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0280 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2660
       * @tc.name    To set the font style in text drawing: font = "50px abc"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2660', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2660 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw09")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2660 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1150
       * @tc.name    Set the strokeStyle of the stroke color property to:string： "abcd" fillStyle = "rgba(0,0,0,0)"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1150', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1150 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw10")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1150 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3000
       * @tc.name    Set the parameters of the drawImage interface as follows: this.context.drawImage( this.img,-20,-20)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3000', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3000 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw11")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3000 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2720
       * @tc.name    To set the font style in text drawing: font = "normal 200 50px sans-serif"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2720', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2720 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw12")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2720 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2390
       * @tc.name    Set the current path to clipping path: The parameter of the clip interface is not set
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2390', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2390 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw13")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2390 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2020
       * @tc.name    Set the fill parameter to Leave the fill parameter to None
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2020', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2020 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw14")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2020 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1870
       * @tc.name    Set the draw component interface strokeRect to strokeRect(100,100,-100,-100)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1870', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1870 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw15")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1870 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2080
       * @tc.name    Verify that the square path is drawn using lineTo (x, y).
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2080', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2080 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw16")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2080 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1810
       * @tc.name    Set the draw component interface strokeRect to strokeRect(100,100,100,100)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1810', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1810 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw17")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1810 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2100
       * @tc.name    Verify that lineTo (x, y) is used to draw the connected closed-loop triangle
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2100', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2100 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw18")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2100 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3070
       * @tc.name    Set the image mapping property imageSmoothingEnabled to false
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3070', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3070 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw19")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3070 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3060
       * @tc.name    Set the image mapping property imageSmoothingEnabled to true
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3060', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3060 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw20")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3060 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2040
       * @tc.name    Set the fill parameter to "nonzero"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2040', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2040 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw21")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2040 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0130
       * @tc.name    Set the type of the canvas object API toDataURL to image/png
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0130', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0130 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw22")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0130 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2890
       * @tc.name    Set the width value of the specified text to: measureText("Hello World!").fontBoundingBoxAscent
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2890', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2890 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw23")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2890 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2840
       * @tc.name    Set the width value of the specified text to: measureText("Hello World!").actualBoundingBoxLeft
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2840', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2840 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw24")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2840 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2880
       * @tc.name    Set the width value of the specified text to: measureText("Hello World!").emHeightDescent
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2880', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2880 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw25")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2880 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2810
       * @tc.name    Set the width value of the specified text to: measureText("Hello World!").width
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2810', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2810 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw26")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2810 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2830
       * @tc.name    Set the width value of the specified text to: measureText("Hello World!").actualBoundingBoxDescent
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2830', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2830 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw27")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2830 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2850
       * @tc.name    Set the width value of the specified text to: measureText("Hello World!").actualBoundingBoxRight
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2850', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2850 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw28")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2850 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2800
       * @tc.name    Set the width value of the specified text to: measureText("Hello World!").height
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2800', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2800 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw29")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2800 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2910
       * @tc.name    Set the width value of the specified text to: measureText("Hello World!").hangingBaseline
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2910', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2910 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw30")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2910 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2820
       * @tc.name    Set the width value of the specified text to: measureText("Hello World!").actualBoundingBoxAscent
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2820', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2820 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw31")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2820 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2870
       * @tc.name    Set the width value of the specified text to: measureText("Hello World!").emHeightAscent
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
      it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2870', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2870 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw32")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2870 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2900
       * @tc.name    Set the width value of the specified text to: measureText("Hello World!").fontBoundingBoxDescent
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2900', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2900 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw33")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2900 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2860
       * @tc.name    Set the width value of the specified text to: measureText("Hello World!").alphabeticBaseline
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2860', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2860 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw34")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2860 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2920
       * @tc.name    Set the width value of the specified text to: measureText("Hello World!").ideographicBaseline
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2920', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2920 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw35")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2920 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0970
       * @tc.name    Set the transparency property of the draw component: globalAlpha is 1.0
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0970', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0970 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw36")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0970 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0960
       * @tc.name    Set the transparency property of the draw component: globalAlpha is 5
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0960', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0960 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw37")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0960 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0940
       * @tc.name    Set the transparency property of the draw component: globalAlpha is -0.5
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0940', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0940 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw38")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0940 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0950
       * @tc.name    Set the transparency property of the draw component: globalAlpha is 0.5
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0950', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0950 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw39")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0950 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0980
       * @tc.name    Set the transparency property of the draw component: globalAlpha is 0.0
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0980', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0980 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw40")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0980 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2070
       * @tc.name    Verify that the figure-eight path is drawn using lineTo (x, y).
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2070', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2070 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw41")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2070 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2090
       * @tc.name    Verify that a line is connected using lineTo (x, y).
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2090', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2090 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw42")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2090 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2060
       * @tc.name    Verify that the triangle is drawn using lineTo (x, y).
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2060', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2060 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw43")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2060 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2200
       * @tc.name    Verify the path of the quadratic Bézier curve
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2200', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2200 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw44")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2200 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2730
       * @tc.name    To set the font style in text drawing:font = "italic bold -50px sans-serif"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2730', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2730 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw45")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2730 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1280
       * @tc.name    Set radial gradient: createRadialGradient(200,200,100,200,200,50)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1280', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1280 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw46")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1280 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2400
       * @tc.name    Set the current path to clipping path: The parameter of the clip interface is "nonzero".
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2400', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2400 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw47")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2400 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2440
       * @tc.name    Set the horizontal alignment of the text: textAlign = "start"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2440', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2440 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw48")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2440 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2470
       * @tc.name    Set the horizontal alignment of the text: textAlign = "center"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2470', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2470 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw49")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2470 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2460
       * @tc.name    Set the horizontal alignment of the text: textAlign = "left"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2460', Level.LEVEL2, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2460 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw50")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2460 finish.`);
      done()
    })

  })
}
