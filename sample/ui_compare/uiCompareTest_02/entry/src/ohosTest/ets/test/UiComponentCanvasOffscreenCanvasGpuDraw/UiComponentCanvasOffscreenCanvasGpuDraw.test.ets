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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1960', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1740', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1130', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1290', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2630', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0270', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1770', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0280', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2660', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1150', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3000', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2720', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2390', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2020', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1870', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2080', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1810', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2100', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3070', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3060', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2040', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0130', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2890', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2840', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2880', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2810', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2830', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2850', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2800', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2910', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2820', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2870', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2900', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2860', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2920', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0970', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0960', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0940', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0950', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0980', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2070', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2090', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2060', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2200', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2730', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1280', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2400', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2440', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2470', Level.LEVEL3, async (done: Function) => {
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
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2460', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2460 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw50")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2460 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2450
       * @tc.name    Set the horizontal alignment of the text: textAlign = "end"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2450', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2450 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw51")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2450 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2480
       * @tc.name    Set the horizontal alignment of the text: textAlign = "right"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2480', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2480 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw52")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2480 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2710
       * @tc.name    To set the font style in text drawing: font = "normal bolder 50px sans-serif"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2710', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2710 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw53")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2710 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2740
       * @tc.name    To set the font style in text drawing: font = "italic 50px sans-serif"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2740', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2740 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw54")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2740 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2750
       * @tc.name    To set the font style in text drawing: font = "xxxx italic bold 50px sans-serif"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2750', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2750 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw55")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2750 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2700
       * @tc.name    To set the font style in text drawing: font = "normal normal 50px sans-serif"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2700', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2700 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw56")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2700 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2680
       * @tc.name    To set the font style in text drawing: font = "normal bold 50px sans-serif"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2680', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2680 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw57")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2680 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2490
       * @tc.name    Set the horizontal alignment of the text: textAlign is not set
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2490', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2490 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw58")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2490 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2550
       * @tc.name    To set the horizontal alignment in text drawing: textBaseline = "bottom"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2550', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2550 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw59")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2550 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2500
       * @tc.name    To set the horizontal alignment in text drawing: textBaseline = "alphabetic"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2500', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2500 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw60")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2500 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2530
       * @tc.name    To set the horizontal alignment in text drawing: textBaseline = "middle"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2530', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2530 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw61")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2530 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2510
       * @tc.name    To set the horizontal alignment in text drawing: textBaseline = "top"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2510', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2510 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw62")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2510 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2540
       * @tc.name    To set the horizontal alignment in text drawing: textBaseline = "ideographic"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2540', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2540 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw63")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2540 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2110
       * @tc.name    Verify that the moveTo(x,y) call does not create a line to a new point
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2110', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2110 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw64")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2110 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1200
       * @tc.name    Set the color to a gradient: fillStyle = "rgb(255, 0, 0)"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1200', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1200 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw65")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1200 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1210
       * @tc.name    Set the color to a gradient: fillStyle = "abcd"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1210', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1210 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw66")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1210 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1230
       * @tc.name    Set the color to a gradient: fillStyle = "#ffff00"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1230', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1230 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw67")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1230 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3020
       * @tc.name    Set the parameters of the drawImage interface as follows:this.context.drawImage( this.img,0,0,-200,-200)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3020 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw68")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3020 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3040
       * @tc.name    Set the parameters of the drawImage interface as follows:this.context.drawImage( this.img,-20,-20,100,100,0,0,300,300)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3040', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3040 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw69")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3040 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2990
       * @tc.name    Set the parameters of the drawImage interface as follows:this.context.drawImage( this.img,0,0)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2990', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2990 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw70")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2990 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3030
       * @tc.name    Set the parameters of the drawImage interface as follows:this.context.drawImage( this.img,0,0,100,100,0,0,300,300)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3030 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw71")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3030 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3010
       * @tc.name    Set the parameters of the drawImage interface as follows:this.context.drawImage( this.img,0,0,200,200)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3010 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw72")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3010 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2570
       * @tc.name    Set to draw fill text: fillText("Hello World!", 50, 100)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2570', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2570 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw73")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2570 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2580
       * @tc.name    Set to draw fill text: fillText("Hello World!", -50, 100)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2580', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2580 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw74")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2580 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1170
       * @tc.name    set the strokeStyle of the stroke color property to:string： "#ffff00"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1170', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1170 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw75")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1170 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1850
       * @tc.name    Set the draw component interface strokeRect to strokeRect(100,100,-100,100)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1850', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1850 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw76")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1850 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1320
       * @tc.name    Set radial gradient: createRadialGradient(200,200,100,200,200,50)grad.addColorStop(0,"white" )grad.addColorStop(0, "red")
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1320', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1320 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw77")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1320 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1300
       * @tc.name    Set radial gradient: createRadialGradient(200,200,100,200,200,-50)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1300', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1300 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw78")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1300 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1310
       * @tc.name    Set radial gradient: createRadialGradient(200,200,100,200,200,50)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1310', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1310 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw79")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1310 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2760
       * @tc.name    To set the font style in text drawing:font = "sans-serif bold italic 50px "
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2760', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2760 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw80")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2760 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2950
       * @tc.name    Set the miterLimit property to miterLimit = -1
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2950', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2950 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw81")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2950 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2970
       * @tc.name    Set the miterLimit property to miterLimit = 1
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2970', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2970 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw82")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2970 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2980
       * @tc.name    Set the miterLimit property to miterLimit = 10 more than lineWidth
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2980', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2980 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw83")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2980 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2960
       * @tc.name    Set the miterLimit property to miterLimit = 0
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2960', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2960 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw84")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2960 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0990
       * @tc.name    Set the transparency property of the draw component: Assign the value multiple times
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0990', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0990 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw85")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0990 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1370
       * @tc.name    Set the lineCap property of the drawn line to "round"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1370', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1370 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw86")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1370 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1380
       * @tc.name    Set the lineCap property of the drawn line to "butt"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1380', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1380 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw87")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1380 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1410
       * @tc.name    Set the lineCap property of the drawn line to Not set
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1410', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1410 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw88")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1410 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1390
       * @tc.name    Set the lineCap property of the drawn line to square
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1390', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1390 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw89")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1390 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1440
       * @tc.name    Set the lineJoin property to "round" for drawing two intersecting lines
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1440', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1440 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw90")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1440 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1420
       * @tc.name    Set the lineJoin property to "bevel" for drawing two intersecting lines
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1420', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1420 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw91")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1420 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1430
       * @tc.name    Set the lineJoin property to "miter" for drawing two intersecting lines
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1430', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1430 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw92")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1430 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1460
       * @tc.name    Set the lineJoin property to None for drawing two intersecting lines
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1460', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1460 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw93")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1460 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2010
       * @tc.name    Verify that the closePath() interface is not called to generate a closed graph
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2010 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw94")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2010 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3700
       * @tc.name    Verify that the ImageData parameter of the image pixel apid getImageData is used to obtain the data
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3700', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3700 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw95")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3700 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1980
       * @tc.name    Call the stroke interface for border drawing
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1980', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1980 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw96")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1980 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2430
       * @tc.name    Set the current path to clipping path: The parameter of the clip interface is not setThe color-filled area contains a partially cropped area
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2430', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2430 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw97")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2430 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2690
       * @tc.name    To set the font style in text drawing:font = "normal lighter 50px sans-serif"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2690', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2690 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw98")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2690 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2620
       * @tc.name    Set the font style in text drawing: font= "50px sans-serif"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2620', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2620 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw99")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2620 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1860
       * @tc.name    Set the draw component interface strokeRect to strokeRect(100,100,100,-100)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1860', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1860 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw100")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1860 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1820
       * @tc.name    Set the draw component interface strokeRect to strokeRect(0,0,100,100)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1820', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1820 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw101")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1820 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2610
       * @tc.name    Set the font style in text drawing: font is not set
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2610', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2610 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw102")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2610 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2520
       * @tc.name    To set the horizontal alignment in text drawing: textBaseline ="hanging"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2520', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2520 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw103")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2520 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2560
       * @tc.name    To set the horizontal alignment in text drawing: textBaseline ="alphabetic"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2560', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2560 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw104")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2560 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1780
       * @tc.name    Set the drawing component interface fillRect to fillRect(100,100,100,-100)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1780', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1780 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw105")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1780 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1840
       * @tc.name    Set the drawing component interface strokeRect to strokeRect(100,100,0,100)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1840', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1840 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw106")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1840 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1190
       * @tc.name    Set the strokeStyle of the stroke color property to:strokeStyle = "#ffff00" fillStyle = 0xf0000
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1190', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1190 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw107")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1190 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2670
       * @tc.name    To set the font style in text drawing: font = "italic bold 50px sans-serif"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2670', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2670 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw108")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2670 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2640
       * @tc.name    To set the font style in text drawing: font = "50px monospace"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2640', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2640 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw109")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2640 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2420
       * @tc.name    Set the current path to clipping path: The parameter of the clip interface is not set The color-filled area does not reach the cropping area
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2420', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2420 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw110")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2420 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2410
       * @tc.name    Set the current path to clipping path: The parameter of the clip interface is "evenodd".
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2410', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2410 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw111")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2410 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1270
       * @tc.name    Set createPattern to repeat.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1270', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1270 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw112")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1270 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1240
       * @tc.name    Set createPattern to np-repeat.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1240', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1240 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw113")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1240 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1260
       * @tc.name    Set createPattern to repeat-y.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1260', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1260 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw114")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1260 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1250
       * @tc.name    Set createPattern to repeat-x.
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1250', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1250 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw115")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1250 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0260
       * @tc.name    Set the saves of the canvas component: Pushes the current state into the state stack
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0260', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0260 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw116")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0260 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2030
       * @tc.name    Set the fill parameter to "evenodd"
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2030 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw117")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2030 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3840
       * @tc.name    Sets the dashed offset of the canvas to a negative value
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3840', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3840 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw118")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3840 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3820
       * @tc.name    Sets the dashed offset of the canvas to a positive value
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3820', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3820 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw119")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3820 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3830
       * @tc.name    Sets the dashed offset of the canvas to zero
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3830', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3830 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw120")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3830 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1790
       * @tc.name    Set the drawing component interface fillRect to fillRect(100,100,-100,-100)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1790', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1790 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw121")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1790 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1750
       * @tc.name    Set the drawing component interface fillRect to fillRect(-100,-100,200,200)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1750', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1750 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw122")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1750 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1760
       * @tc.name    Set the drawing component interface fillRect to fillRect(100,100,0,100)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1760', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1760 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw123")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1760 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2930
       * @tc.name    Set the property of the current text direction to rtl
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2930', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2930 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw124")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2930 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2940
       * @tc.name    Set the property of the current text direction to ltr
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2940', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2940 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw125")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_2940 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1730
       * @tc.name    Set fillRect to fillRect(100,100,100,100)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1730', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1730 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw126")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1730 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1830
       * @tc.name    Set the draw component interface strokeRect to strokeRect(-100,-100,200,200)
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1830', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1830 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw127")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_1830 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3080
       * @tc.name    Set the imageSmoothingQuality smoothness of the drawn image to low
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3080', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3080 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw128")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3080 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3090
       * @tc.name    Set the imageSmoothingQuality smoothness of the drawn image to medium
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3090', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3090 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw129")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3090 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3100
       * @tc.name    Set the imageSmoothingQuality smoothness of the drawn image to high
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3100', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3100 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw130")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3100 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3050
       * @tc.name    Set the Draw Image property imageSmoothingEnabled to Not set
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3050 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw131")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_3050 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0070
       * @tc.name    Set the height of the canvas object property to: number：0
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0070', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0070 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw132")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0070 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0020
       * @tc.name    Set the width of the canvas object property to: number：0
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0020 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw133")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0020 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0030
       * @tc.name    Set the width of the canvas object property to: number：300
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0030 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw134")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0030 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0080
       * @tc.name    Set the heihgt of the canvas object property to: number：150
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   3
       */
    it('SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0080', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0080 start.`);
      Settings.createWindow("testability/pages/UiComponentCanvasOffscreenCanvasGpuDraw/UiComponentCanvasOffscreenCanvasGpuDraw135")
      let driver:Driver=Driver.create();
      await driver.waitForIdle(500,2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CANVAS_OFFECREENCANVAS_GPU_DRAW_0080 finish.`);
      done()
    })
  })
}
