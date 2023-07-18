// @ts-nocheck
/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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
import { AttrsManager } from '../model/AttrsManager';
import Utils from '../model/Utils'
import { it, afterEach } from '@ohos/hypium';
import windowSnap from '../model/snapShot';
import Settings from '../model/Settings';
import Logger from '../model/Logger'
import router from '@ohos.router';

export default class CommonTest {
  static initTest(pageConfig, supportView, testValues) {

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
      await Utils.sleep(1000);
      done()
    })

    //根据要测试的组件和属性值循环创建case
    supportView.forEach(targetView => {
      testValues.forEach(testValue => {
        let caseTag = pageConfig.testName + "_" + targetView + "_" + testValue.describe
        //create cases
        it(caseTag, 0, async (done) => {
          pageConfig['targetView'] = targetView;
          pageConfig['componentKey'] = targetView;

          //创建窗口，设置窗口页面
          Settings.createWindow(pageConfig.pageUrl)
          console.info('FocusTest Settings.createWindow success');

          await Utils.sleep(1000);

          //跳转页面并传递参数
          await router.pushUrl({
            url: pageConfig.pageUrl,
            params: {
              view: pageConfig
            }
          })
          console.info('FocusTest router.pushUrl success');
          //在此处可以获取页面中的组件进行一些操作，例如获取组件并点击
          // await Utils.clickComponentByKey(targetView)

          await Utils.sleep(1000);
          console.info('FocusTest AttrsManager.change begin');
          //更改属性值
          AttrsManager.change(caseTag, testValue.setValue);

          //截图
          await Utils.sleep(1000);
          console.info('FocusTest windowSnap.snapShot begin');
          await windowSnap.snapShot(globalThis.context, caseTag)
          console.info('FocusTest windowSnap.snapShot success');
          await Utils.sleep(1000);

          done()
        });
      })
    });
  }

  static initTest_matrix(pageConfig, supportView, testValues, id) {

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
      await Utils.sleep(1000);
      done()
    })

    //根据要测试的组件和属性值循环创建case
    supportView.forEach(targetView => {
      testValues.forEach(testValue => {
        let caseTag = pageConfig.testName + "_" + targetView + "_" + testValue.describe
        //create cases
        it(caseTag, 0, async (done) => {
          pageConfig['targetView'] = targetView;
          pageConfig['componentKey'] = targetView;

          //创建窗口，设置窗口页面
          Settings.createWindow(pageConfig.pageUrl)
          console.info('FocusTest Settings.createWindow success');

          await Utils.sleep(1000);

          //跳转页面并传递参数
          await router.pushUrl({
            url: pageConfig.pageUrl,
            params: {
              view: pageConfig
            }
          })
          console.info('FocusTest router.pushUrl success');
          //在此处可以获取页面中的组件进行一些操作，例如获取组件并点击
          // await Utils.clickComponentByKey(targetView)

          await Utils.sleep(1000);
          console.info('FocusTest AttrsManager.change begin');
          //更改属性值
          AttrsManager.change(caseTag, testValue.setValue);
          sendEventByKey(id,10,'');
          //截图
          await Utils.sleep(1000);
          console.info('FocusTest windowSnap.snapShot begin');
          await windowSnap.snapShot(globalThis.context, caseTag)
          console.info('FocusTest windowSnap.snapShot success');
          await Utils.sleep(1000);
          done()
        });
      })
    });
  }

  // sendTouchEvent
  static initTest_touchEvent1(pageConfig, supportView, testValues) {

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
      await Utils.sleep(1000);
      done()
    })

    //根据要测试的组件和属性值循环创建case
    supportView.forEach(targetView => {
      testValues.forEach(testValue => {
        let caseTag = pageConfig.testName + "_" + targetView + "_" + testValue.describe
        //create cases
        it(caseTag, 0, async (done) => {
          pageConfig['targetView'] = targetView;
          pageConfig['componentKey'] = targetView;

          //创建窗口，设置窗口页面
          Settings.createWindow(pageConfig.pageUrl)
          console.info('FocusTest Settings.createWindow success');

          await Utils.sleep(1000);

          //跳转页面并传递参数
          await router.pushUrl({
            url: pageConfig.pageUrl,
            params: {
              view: pageConfig
            }
          })
          console.info('router.pushUrl success');
          //在此处可以获取页面中的组件进行一些操作，例如获取组件并点击
          // await Utils.clickComponentByKey(targetView)
          await Utils.sleep(1000);
          console.info('AttrsManager.change begin');
          //更改属性值
          AttrsManager.change(caseTag, testValue.setValue);
          console.info('AttrsManager.change end');

          console.info('getComponentRect begin');
          let rect = Utils.getComponentRect('onTouchEvent') // 获取id为"onTouch"组件的矩形区域坐标
          console.info('getComponentRect end');
          let touchPoint = {
            id: 1,
            x: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
            y: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
            type: TouchType.Down,
            screenX: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
            screenY: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
          }
          console.info('sendTouchEvent begin');
          sendTouchEvent(touchPoint) // 发送触摸事件
          console.info('sendTouchEvent end');
          //截图
          await Utils.sleep(1000);
          console.info('FocusTest windowSnap.snapShot begin');
          await windowSnap.snapShot(globalThis.context, caseTag)
          console.info('FocusTest windowSnap.snapShot success');
          await Utils.sleep(1000);
          done()
        });
      })
    });
  }

  // id = 1,2
  static initTest_touchEvent2(pageConfig, supportView, testValues) {

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
      await Utils.sleep(1000);
      done()
    })

    //根据要测试的组件和属性值循环创建case
    supportView.forEach(targetView => {
      testValues.forEach(testValue => {
        let caseTag = pageConfig.testName + "_" + targetView + "_" + testValue.describe
        //create cases
        it(caseTag, 0, async (done) => {
          pageConfig['targetView'] = targetView;
          pageConfig['componentKey'] = targetView;

          //创建窗口，设置窗口页面
          Settings.createWindow(pageConfig.pageUrl)
          console.info('FocusTest Settings.createWindow success');

          await Utils.sleep(1000);

          //跳转页面并传递参数
          await router.pushUrl({
            url: pageConfig.pageUrl,
            params: {
              view: pageConfig
            }
          })
          console.info('FocusTest router.pushUrl success');
          //在此处可以获取页面中的组件进行一些操作，例如获取组件并点击
          // await Utils.clickComponentByKey(targetView)
          await Utils.sleep(1000);
          console.info('FocusTest AttrsManager.change begin');
          let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
          let touchPoint: TouchObject = {
            id: testValue.setValue,
            x: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
            y: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
            type: TouchType.Down,
            screenX: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
            screenY: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
          }
          sendTouchEvent(touchPoint) // 发送触摸事件

          //截图
          await Utils.sleep(1000);
          console.info('FocusTest windowSnap.snapShot begin');
          await windowSnap.snapShot(globalThis.context, caseTag)
          console.info('FocusTest windowSnap.snapShot success');
          await Utils.sleep(1000);
          done()
        });
      })
    });
  }

  // screenX
  static initTest_touchEvent3(pageConfig, supportView, testValues) {

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
      await Utils.sleep(1000);
      done()
    })

    //根据要测试的组件和属性值循环创建case
    supportView.forEach(targetView => {
      testValues.forEach(testValue => {
        let caseTag = pageConfig.testName + "_" + targetView + "_" + testValue.describe
        //create cases
        it(caseTag, 0, async (done) => {
          pageConfig['targetView'] = targetView;
          pageConfig['componentKey'] = targetView;

          //创建窗口，设置窗口页面
          Settings.createWindow(pageConfig.pageUrl)
          console.info('FocusTest Settings.createWindow success');

          await Utils.sleep(1000);

          //跳转页面并传递参数
          await router.pushUrl({
            url: pageConfig.pageUrl,
            params: {
              view: pageConfig
            }
          })
          console.info('FocusTest router.pushUrl success');
          //在此处可以获取页面中的组件进行一些操作，例如获取组件并点击
          // await Utils.clickComponentByKey(targetView)
          await Utils.sleep(1000);
          console.info('FocusTest AttrsManager.change begin');
          let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
          let touchPoint: TouchObject = {
            id: 1,
            x: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
            y: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
            type: TouchType.Down,
            screenX: rect.left + testValue.setValue, // 组件中心点x坐标
            screenY: rect.top + (rect.bottom - rect.top) / 2 , // 组件中心点y坐标
          }
          sendTouchEvent(touchPoint) // 发送触摸事件
          //截图
          await Utils.sleep(1000);
          console.info('FocusTest windowSnap.snapShot begin');
          await windowSnap.snapShot(globalThis.context, caseTag)
          console.info('FocusTest windowSnap.snapShot success');
          await Utils.sleep(1000);
          done()
        });
      })
    });
  }

  // screenY
  static initTest_touchEvent4(pageConfig, supportView, testValues) {

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
      await Utils.sleep(1000);
      done()
    })

    //根据要测试的组件和属性值循环创建case
    supportView.forEach(targetView => {
      testValues.forEach(testValue => {
        let caseTag = pageConfig.testName + "_" + targetView + "_" + testValue.describe
        //create cases
        it(caseTag, 0, async (done) => {
          pageConfig['targetView'] = targetView;
          pageConfig['componentKey'] = targetView;

          //创建窗口，设置窗口页面
          Settings.createWindow(pageConfig.pageUrl)
          console.info('FocusTest Settings.createWindow success');

          await Utils.sleep(1000);

          //跳转页面并传递参数
          await router.pushUrl({
            url: pageConfig.pageUrl,
            params: {
              view: pageConfig
            }
          })
          console.info('FocusTest router.pushUrl success');
          //在此处可以获取页面中的组件进行一些操作，例如获取组件并点击
          // await Utils.clickComponentByKey(targetView)
          await Utils.sleep(1000);
          console.info('FocusTest AttrsManager.change begin');
          let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
          let touchPoint: TouchObject = {
            id: 1,
            x: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
            y: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
            type: TouchType.Down,
            screenX: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
            screenY: rect.top + testValue.setValue, // 组件中心点y坐标
          }
          sendTouchEvent(touchPoint) // 发送触摸事件
          //截图
          await Utils.sleep(1000);
          console.info('FocusTest windowSnap.snapShot begin');
          await windowSnap.snapShot(globalThis.context, caseTag)
          console.info('FocusTest windowSnap.snapShot success');
          await Utils.sleep(1000);
          done()
        });
      })
    });
  }

  // x
  static initTest_touchEvent5(pageConfig, supportView, testValues) {

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
      await Utils.sleep(1000);
      done()
    })

    //根据要测试的组件和属性值循环创建case
    supportView.forEach(targetView => {
      testValues.forEach(testValue => {
        let caseTag = pageConfig.testName + "_" + targetView + "_" + testValue.describe
        //create cases
        it(caseTag, 0, async (done) => {
          pageConfig['targetView'] = targetView;
          pageConfig['componentKey'] = targetView;

          //创建窗口，设置窗口页面
          Settings.createWindow(pageConfig.pageUrl)
          console.info('FocusTest Settings.createWindow success');

          await Utils.sleep(1000);

          //跳转页面并传递参数
          await router.pushUrl({
            url: pageConfig.pageUrl,
            params: {
              view: pageConfig
            }
          })
          console.info('FocusTest router.pushUrl success');
          //在此处可以获取页面中的组件进行一些操作，例如获取组件并点击
          // await Utils.clickComponentByKey(targetView)
          await Utils.sleep(1000);
          console.info('FocusTest AttrsManager.change begin');
          let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
          let touchPoint: TouchObject = {
            id: 1,
            x: rect.left + testValue.setValue, // 组件中心点x坐标
            y: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
            type: TouchType.Down,
            screenX: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
            screenY: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
          }
          sendTouchEvent(touchPoint) // 发送触摸事件
          //截图
          await Utils.sleep(1000);
          console.info('FocusTest windowSnap.snapShot begin');
          await windowSnap.snapShot(globalThis.context, caseTag)
          console.info('FocusTest windowSnap.snapShot success');
          await Utils.sleep(1000);
          done()
        });
      })
    });
  }

  // y
  static initTest_touchEvent6(pageConfig, supportView, testValues) {

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
      await Utils.sleep(1000);
      done()
    })

    //根据要测试的组件和属性值循环创建case
    supportView.forEach(targetView => {
      testValues.forEach(testValue => {
        let caseTag = pageConfig.testName + "_" + targetView + "_" + testValue.describe
        //create cases
        it(caseTag, 0, async (done) => {
          pageConfig['targetView'] = targetView;
          pageConfig['componentKey'] = targetView;

          //创建窗口，设置窗口页面
          Settings.createWindow(pageConfig.pageUrl)
          console.info('FocusTest Settings.createWindow success');

          await Utils.sleep(1000);

          //跳转页面并传递参数
          await router.pushUrl({
            url: pageConfig.pageUrl,
            params: {
              view: pageConfig
            }
          })
          console.info('FocusTest router.pushUrl success');
          //在此处可以获取页面中的组件进行一些操作，例如获取组件并点击
          // await Utils.clickComponentByKey(targetView)
          await Utils.sleep(1000);
          console.info('FocusTest AttrsManager.change begin');
          let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标
          let touchPoint: TouchObject = {
            id: 1,
            x: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
            y: rect.top + testValue.setValue, // 组件中心点y坐标
            type: TouchType.Down,
            screenX: rect.left + (rect.right - rect.left) / 2, // 组件中心点x坐标
            screenY: rect.top + (rect.bottom - rect.top) / 2, // 组件中心点y坐标
          }
          sendTouchEvent(touchPoint) // 发送触摸事件
          //截图
          await Utils.sleep(1000);
          console.info('FocusTest windowSnap.snapShot begin');
          await windowSnap.snapShot(globalThis.context, caseTag)
          console.info('FocusTest windowSnap.snapShot success');
          await Utils.sleep(1000);
          done()
        });
      })
    });
  }
}