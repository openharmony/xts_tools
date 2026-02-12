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
import { Driver, ON, Component } from '@kit.TestKit';
import { BusinessError } from '@kit.BasicServicesKit'

export default function ListItemGroupMirrorTest() {
  describe('ListItemGroupMirrorTest', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return
      }

      Settings.windowClass.destroyWindow((err: BusinessError) => {
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
     * @tc.number : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0010
     * @tc.name   : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0010
     * @tc.desc   : 切换屏幕为横向->竖向，观察组件布局
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0010', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0010 start.`);
      Settings.createWindow("testability/pages/listAndGrid/listItemGroupMirror01")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 切换到横屏
      await Settings.changeWindowOrientation('landScape');
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0010_landscape')
      await Utils.sleep(1000)

      // 切换到竖屏
      await Settings.changeWindowOrientation('portrait');
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0010_portrait')
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0010 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0020
     * @tc.name   : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0020
     * @tc.desc   : 切换屏幕为横向->竖向，观察组件布局
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0020', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0020 start.`);
      Settings.createWindow("testability/pages/listAndGrid/listItemGroupMirror02")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 切换到横屏
      await Settings.changeWindowOrientation('landScape');
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0020_landscape')
      await Utils.sleep(1000)

      // 切换到竖屏
      await Settings.changeWindowOrientation('portrait');
      await driver.waitForIdle(500, 2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0020_portrait')
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0020 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0030
     * @tc.name   : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0030
     * @tc.desc   : 设置组件的头部组件为button，观察组件镜像后布局显示
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0030', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0030 start.`);
      Settings.createWindow("testability/pages/listAndGrid/listItemGroupMirror03")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0030')
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0030 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0040
     * @tc.name   : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0040
     * @tc.desc   : 设置组件的尾部组件为Text，观察组件镜像后布局显示
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0040', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0040 start.`);
      Settings.createWindow("testability/pages/listAndGrid/listItemGroupMirror04")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0040')
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0040 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0050
     * @tc.name   : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0050
     * @tc.desc   : 设置组件的space为number：20，观察组件镜像后的列表项间距
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0050', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0050 start.`);
      Settings.createWindow("testability/pages/listAndGrid/listItemGroupMirror05")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0050')
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0050 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0060
     * @tc.name   : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0060
     * @tc.desc   : 设置组件的space为number：'40'，观察组件镜像后的列表项间距
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0060', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0060 start.`);
      Settings.createWindow("testability/pages/listAndGrid/listItemGroupMirror06")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0060')
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0060 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0080
     * @tc.name   : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0080
     * @tc.desc   : 设置组件的style为CARD，观察组件镜像后的卡片样式
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0080', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0080 start.`);
      Settings.createWindow("testability/pages/listAndGrid/listItemGroupMirror08")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0080')
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0080 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0090
     * @tc.name   : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0090
     * @tc.desc   : 设置组件的divider颜色为yellow，观察组件镜像后的分割线样式
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0090', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0090 start.`);
      Settings.createWindow("testability/pages/listAndGrid/listItemGroupMirror09")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0090')
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0090 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0120
     * @tc.name   : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0120
     * @tc.desc   : 设置组件的childrenMainSize属性的update为(2,500)，观察组件镜像后的高度
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0120', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0120 start.`);
      Settings.createWindow("testability/pages/listAndGrid/listItemGroupMirror12")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 点击update按钮
      let updateButton: Component = await driver.waitForComponent(ON.id('update_button_12'), 1000);
      await updateButton.click();
      await driver.waitForIdle(500, 2000);

      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0120')
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0120 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0130
     * @tc.name   : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0130
     * @tc.desc   : 设置组件的childrenMainSize属性的splice为(0)，观察组件镜像后的高度
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0130', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0130 start.`);
      Settings.createWindow("testability/pages/listAndGrid/listItemGroupMirror13")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      // 点击splice按钮
      let spliceButton: Component = await driver.waitForComponent(ON.id('splice_button_13'), 1000);
      await spliceButton.click();
      await driver.waitForIdle(500, 2000);

      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0130')
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0130 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0140
     * @tc.name   : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0140
     * @tc.desc   : 设置组件的通用属性align为TopEnd，观察组件镜像后的子元素的对齐方式
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0140', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0140 start.`);
      Settings.createWindow("testability/pages/listAndGrid/listItemGroupMirror14")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0140')
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0140 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0150
     * @tc.name   : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0150
     * @tc.desc   : 设置组件的通用属性direction为Ltr，观察组件镜像后的组件排列方式
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0150', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0150 start.`);
      Settings.createWindow("testability/pages/listAndGrid/listItemGroupMirror15")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0150')
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0150 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0160
     * @tc.name   : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0160
     * @tc.desc   : 设置组件的通用属性direction为Auto，观察组件镜像后的组件排列方式
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0160', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0160 start.`);
      Settings.createWindow("testability/pages/listAndGrid/listItemGroupMirror16")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0160')
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0160 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0170
     * @tc.name   : SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0170
     * @tc.desc   : 设置组件的通用属性direction为rtl，观察组件镜像后的组件排列方式
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0170', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0170 start.`);
      Settings.createWindow("testability/pages/listAndGrid/listItemGroupMirror17")
      let driver: Driver = Driver.create();
      await driver.waitForIdle(1000, 2000);

      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0170')
      await Utils.sleep(1000)

      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LISTANDGRID_LISTITEMGROUP_MIRROR_0170 finish.`);
      done()
    })
  })
}

