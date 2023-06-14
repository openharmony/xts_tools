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

          await Utils.sleep(1000);

          //跳转页面并传递参数
          await router.pushUrl({
            url: pageConfig.pageUrl,
            params: {
              view: pageConfig
            }
          })

          //在此处可以获取页面中的组件进行一些操作，例如获取组件并点击
          // await Utils.clickComponentByKey(targetView)

          await Utils.sleep(1000);

          //更改属性值
          AttrsManager.change(caseTag, testValue.setValue);

          //截图
          await Utils.sleep(1000);
          windowSnap.snapShot(globalThis.context, caseTag)
          await Utils.sleep(1000);

          done()
        });
      })
    });

  }
}