/**
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON, Component,} from '@kit.TestKit';


export default function RoutingNamedRoutesInterface() {

  describe('RoutingNamedRoutesInterface', () => {
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
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0010
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0010
       * @tc.desc    getParams接口和pushNamedRoute接口组合测试
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0010 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface10")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0010 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0020
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0020
       * @tc.desc    har包/hsp包/普通包相互之间路由跳转正常
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0020 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface20")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0020 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0030
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0030
       * @tc.desc    replaceNameRoute接口和getParams接口组合测试
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0030 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface30")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0030 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0040
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0040
       * @tc.desc    router.pushNamedRoute同步接口功能测试
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0040', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0040 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface40")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0040 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0050
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0050
       * @tc.desc    router.pushNamedRoute同步接口错误码测试
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0050 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface50")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0050 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0060
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0060
       * @tc.desc    router.pushNamedRoute含mode同步接口功能测试
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0060', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0060 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface60")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0060 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0070
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0070
       * @tc.desc    router.pushNamedRoute含mode同步接口错误码测试
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0070', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0070 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface70")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0070 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0080
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0080
       * @tc.desc    router.pushNamedRoute含mode异步接口功能测试
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0080', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0080 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface80")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0080 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0090
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0090
       * @tc.desc    router.pushNamedRoute含mode异步接口错误码测试
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0090', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0090 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface90")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0090 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0100
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0100
       * @tc.desc    router.pushNamedRoute异步接口功能测试
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0100', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0100 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface100")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0100 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0110
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0110
       * @tc.desc    router.pushNamedRoute异步接口错误码测试
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0110', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0110 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface110")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0110 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0120
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0120
       * @tc.desc    router.replaceNamedRoute同步接口功能测试
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0120', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0120 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface120")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0120 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0130
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0130
       * @tc.desc    router.replaceNamedRoute同步接口错误码测试
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0130', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0130 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface130")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0130 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0140
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0140
       * @tc.desc    router.replaceNamedRoute含mode同步接口功能测试
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0140', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0140 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface140")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0140 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0150
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0150
       * @tc.desc    router.replaceNamedRoute含mode同步接口错误码测试
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0150', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0150 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface150")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0150 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0160
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0160
       * @tc.desc    router.replaceNamedRoute含mode异步接口功能测试
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0160', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0160 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface160")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0160 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0170
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0170
       * @tc.desc    router.replaceNamedRoute含mode异步接口错误码测试
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0170', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0170 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface170")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0170 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0180
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0180
       * @tc.desc    router.replaceNamedRoute异步接口功能测试
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0180', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0180 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface180")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0180 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0190
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0190
       * @tc.desc    router.replaceNamedRoute异步接口错误码测试
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0190', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0190 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface190")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0190 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0200
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0200
       * @tc.desc    含命名路由的页面编译后能按照预定义的规则生成代码
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0200', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0200 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface200")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0200 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0210
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0210
       * @tc.desc    命名路由不为null时，且页面配置在mainPage.json中时，使用pushNamedRoute接口能够成功跳转对应页面
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0210', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0210 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface210")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0210 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0220
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0220
       * @tc.desc    命名路由的编译器、编译、预览功能正常
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0220', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0220 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface220")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0220 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0230
       * @tc.name    SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0230
       * @tc.desc    当命名路由不唯一时，使用pushNamedRoute接口能够成功跳转最后加载的页面
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   Level3
       */
    it('SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0230', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0230 start.`);
      Settings.createWindow("testability/pages/RoutingNamedRoutesInterface/RoutingNamedRoutesInterface230")
      let driver:Driver = Driver.create();
      let component = await driver.waitForComponent(ON.id('btn'), 1000);
      await component.click();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_Routing_NAMEDROUTES_INTERFACE_0230 finish.`);
      done();
    })
  })
}

