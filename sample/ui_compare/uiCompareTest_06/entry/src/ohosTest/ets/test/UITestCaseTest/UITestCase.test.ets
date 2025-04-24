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

import { describe, afterEach, it, TestType, Size, Level } from '@ohos/hypium'
import { Driver, ON, Component } from '@ohos.UiTest';
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'

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

export default function uiComponentListItem01Test() {

  describe('UITestCaseTest', () => {
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

    /**
     * @tc.number: TestCase_b432e9ae240546ebb549bdc8bae4a59f
     * @tc.name: TestCase_b432e9ae240546ebb549bdc8bae4a59f
     * @tc.desc: setPolyToPoly Interface testing.
     * @tc.level 0
     * @tc.type: Function
     * @tc.size: SmallTest
     */
    it('TestCase_b432e9ae240546ebb549bdc8bae4a59f', TestType.FUNCTION | Size.SMALLTEST | Level.LEVEL0,
      async (done: Function) => {
      Logger.info('TEST', `TestCase_b432e9ae240546ebb549bdc8bae4a59f start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase001");
      await Utils.sleep(1000);
      windowSnap.snapShot('TestCase_b432e9ae240546ebb549bdc8bae4a59f_1');
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('PointCount_0'));
      await button.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('TestCase_b432e9ae240546ebb549bdc8bae4a59f_2');
      await Utils.sleep(1000);
      Logger.info('TEST', `TestCase_b432e9ae240546ebb549bdc8bae4a59f finish.`);
      done();
    })

    /**
     * @tc.number: TestCase_9cfc7cedadd74a23a79da3354e66b37d
     * @tc.name: TestCase_9cfc7cedadd74a23a79da3354e66b37d
     * @tc.desc: setPolyToPoly Interface testing.
     * @tc.level 0
     * @tc.type: Function
     * @tc.size: SmallTest
     */
    it('TestCase_9cfc7cedadd74a23a79da3354e66b37d', TestType.FUNCTION | Size.SMALLTEST | Level.LEVEL0,
      async (done: Function) => {
      Logger.info('TEST', `TestCase_9cfc7cedadd74a23a79da3354e66b37d start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase002");
      await Utils.sleep(1000);
      windowSnap.snapShot('TestCase_9cfc7cedadd74a23a79da3354e66b37d_1');
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('SrcLong'));
      await button.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('TestCase_9cfc7cedadd74a23a79da3354e66b37d_2');
      await Utils.sleep(1000)
      Logger.info('TEST', `TestCase_9cfc7cedadd74a23a79da3354e66b37d finish.`);
      done();
    })

    /**
     * @tc.number: TestCase_e46cc7e3bd574bc690a444582e9e2c90
     * @tc.name: TestCase_e46cc7e3bd574bc690a444582e9e2c90
     * @tc.desc: setPolyToPoly Interface testing.
     * @tc.level 0
     * @tc.type: Function
     * @tc.size: SmallTest
     */
    it('TestCase_e46cc7e3bd574bc690a444582e9e2c90', TestType.FUNCTION | Size.SMALLTEST | Level.LEVEL0,
      async (done: Function) => {
      Logger.info('TEST', `TestCase_e46cc7e3bd574bc690a444582e9e2c90 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase003");
      await Utils.sleep(1000);
      windowSnap.snapShot('TestCase_e46cc7e3bd574bc690a444582e9e2c90_1');
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('SrcIndex_2'));
      await button.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('TestCase_e46cc7e3bd574bc690a444582e9e2c90_2');
      await Utils.sleep(1000);
      Logger.info('TEST', `TestCase_e46cc7e3bd574bc690a444582e9e2c90 finish.`);
      done();
    })

    /**
     * @tc.number: TestCase_cff2b61539c243549f8dad818495723b
     * @tc.name: TestCase_cff2b61539c243549f8dad818495723b
     * @tc.desc: setPolyToPoly Interface testing.
     * @tc.level 0
     * @tc.type: Function
     * @tc.size: SmallTest
     */
    it('TestCase_cff2b61539c243549f8dad818495723b', TestType.FUNCTION | Size.SMALLTEST | Level.LEVEL0,
      async (done: Function) => {
      Logger.info('TEST', `TestCase_cff2b61539c243549f8dad818495723b start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase004");
      await Utils.sleep(1000);
      windowSnap.snapShot('TestCase_cff2b61539c243549f8dad818495723b_1');
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('SrcArray_005'));
      await button.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('TestCase_cff2b61539c243549f8dad818495723b_1');
      await Utils.sleep(1000);
      Logger.info('TEST', `TestCase_cff2b61539c243549f8dad818495723b finish.`);
      done();
    })

    /**
     * @tc.number: TestCase_05001a102d82401b93ee0d4892918b63
     * @tc.name: TestCase_05001a102d82401b93ee0d4892918b63
     * @tc.desc: setPolyToPoly Interface testing.
     * @tc.level 0
     * @tc.type: Function
     * @tc.size: SmallTest
     */
    it('TestCase_05001a102d82401b93ee0d4892918b63', TestType.FUNCTION | Size.SMALLTEST | Level.LEVEL0,
      async (done: Function) => {
      Logger.info('TEST', `TestCase_05001a102d82401b93ee0d4892918b63 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase005");
      await Utils.sleep(1000);
      windowSnap.snapShot('TestCase_05001a102d82401b93ee0d4892918b63_1');
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('SrcIndex'));
      await button.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('TestCase_05001a102d82401b93ee0d4892918b63_2');
      await Utils.sleep(1000);
      Logger.info('TEST', `TestCase_05001a102d82401b93ee0d4892918b63 finish.`);
      done();
    })

    /**
     * @tc.number: TestCase_1b7576d595994c2ba4fd829fd0d719a3
     * @tc.name: TestCase_1b7576d595994c2ba4fd829fd0d719a3
     * @tc.desc: setPolyToPoly Interface testing.
     * @tc.level 0
     * @tc.type: Function
     * @tc.size: SmallTest
     */
    it('TestCase_1b7576d595994c2ba4fd829fd0d719a3', TestType.FUNCTION | Size.SMALLTEST | Level.LEVEL0,
      async (done: Function) => {
      Logger.info('TEST', `TestCase_1b7576d595994c2ba4fd829fd0d719a3 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase006");
      await Utils.sleep(1000);
      windowSnap.snapShot('TestCase_1b7576d595994c2ba4fd829fd0d719a3_1');
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('DstArray_001'));
      await button.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('TestCase_1b7576d595994c2ba4fd829fd0d719a3_2');
      await Utils.sleep(1000);
      Logger.info('TEST', `TestCase_1b7576d595994c2ba4fd829fd0d719a3 finish.`);
      done()
    })

    /**
     * @tc.number: TestCase_0a25d966ded045208cbc2de5f9dfa6dc
     * @tc.name: TestCase_0a25d966ded045208cbc2de5f9dfa6dc
     * @tc.desc: setPolyToPoly Interface testing.
     * @tc.level 0
     * @tc.type: Function
     * @tc.size: SmallTest
     */
    it('TestCase_0a25d966ded045208cbc2de5f9dfa6dc', TestType.FUNCTION | Size.SMALLTEST | Level.LEVEL0,
      async (done: Function) => {
      Logger.info('TEST', `TestCase_0a25d966ded045208cbc2de5f9dfa6dc start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase007");
      await Utils.sleep(1000)
      windowSnap.snapShot('TestCase_0a25d966ded045208cbc2de5f9dfa6dc_1');
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('PointCount_Negative1'));
      await button.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('TestCase_0a25d966ded045208cbc2de5f9dfa6dc_2');
      await Utils.sleep(1000);
      Logger.info('TEST', `TestCase_0a25d966ded045208cbc2de5f9dfa6dc finish.`);
      done();
    })

    /**
     * @tc.number: TestCase_e97f20ec53104277982bdc0662262d3d
     * @tc.name: TestCase_e97f20ec53104277982bdc0662262d3d
     * @tc.desc: setPolyToPoly Interface testing.
     * @tc.level 0
     * @tc.type: Function
     * @tc.size: SmallTest
     */
    it('TestCase_e97f20ec53104277982bdc0662262d3d', TestType.FUNCTION | Size.SMALLTEST | Level.LEVEL0,
      async (done: Function) => {
      Logger.info('TEST', `TestCase_e97f20ec53104277982bdc0662262d3d start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase008");
      await Utils.sleep(1000);
      windowSnap.snapShot('TestCase_e97f20ec53104277982bdc0662262d3d_1');
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('SrcArray_006'));
      await button.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('TestCase_e97f20ec53104277982bdc0662262d3d_2');
      await Utils.sleep(1000);
      Logger.info('TEST', `TestCase_e97f20ec53104277982bdc0662262d3d finish.`);
      done();
    })

    /**
     * @tc.number: TestCase_7d767a1bbea940c2ad12a4338a45d619
     * @tc.name: TestCase_7d767a1bbea940c2ad12a4338a45d619
     * @tc.desc: setPolyToPoly Interface testing.
     * @tc.level 0
     * @tc.type: Function
     * @tc.size: SmallTest
     */
    it('TestCase_7d767a1bbea940c2ad12a4338a45d619', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_7d767a1bbea940c2ad12a4338a45d619 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase009");
      await Utils.sleep(1000);
      windowSnap.snapShot('TestCase_7d767a1bbea940c2ad12a4338a45d619_1');
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('DstIndex'));
      await button.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('TestCase_7d767a1bbea940c2ad12a4338a45d619_2');
      await Utils.sleep(1000);
      Logger.info('TEST', `TestCase_7d767a1bbea940c2ad12a4338a45d619 finish.`);
      done();
    })

    /**
     * @tc.number: TestCase_2a0c3f87f2fd4340b4316ad73730635b
     * @tc.name: TestCase_2a0c3f87f2fd4340b4316ad73730635b
     * @tc.desc: setPolyToPoly Interface testing.
     * @tc.level 0
     * @tc.type: Function
     * @tc.size: SmallTest
     */
    it('TestCase_2a0c3f87f2fd4340b4316ad73730635b', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_2a0c3f87f2fd4340b4316ad73730635b start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase010");
      await Utils.sleep(1000);
      windowSnap.snapShot('TestCase_2a0c3f87f2fd4340b4316ad73730635b_1');
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('SrcArray_002'));
      await button.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('TestCase_2a0c3f87f2fd4340b4316ad73730635b_2');
      await Utils.sleep(1000);
      Logger.info('TEST', `TestCase_2a0c3f87f2fd4340b4316ad73730635b finish.`);
      done();
    })

    /**
     * @tc.number: TestCase_1e4e47c29a804b8ab617bd2a5ea68d72
     * @tc.name: TestCase_1e4e47c29a804b8ab617bd2a5ea68d72
     * @tc.desc: setPolyToPoly Interface testing.
     * @tc.level 0
     * @tc.type: Function
     * @tc.size: SmallTest
     */
    it('TestCase_1e4e47c29a804b8ab617bd2a5ea68d72', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_1e4e47c29a804b8ab617bd2a5ea68d72 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase011");
      await Utils.sleep(1000);
      windowSnap.snapShot('TestCase_1e4e47c29a804b8ab617bd2a5ea68d72_1');
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('SrcArray_001'));
      await button.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('TestCase_1e4e47c29a804b8ab617bd2a5ea68d72_2');
      await Utils.sleep(1000);
      Logger.info('TEST', `TestCase_1e4e47c29a804b8ab617bd2a5ea68d72 finish.`);
      done();
    })

    /**
     * @tc.number: TestCase_3c6597b8f40c404f8dbbb2a1ed14d147
     * @tc.name: TestCase_3c6597b8f40c404f8dbbb2a1ed14d147
     * @tc.desc: setPolyToPoly Interface testing.
     * @tc.level 0
     * @tc.type: Function
     * @tc.size: SmallTest
     */
    it('TestCase_3c6597b8f40c404f8dbbb2a1ed14d147', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_3c6597b8f40c404f8dbbb2a1ed14d147 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase012");
      await Utils.sleep(1000);
      windowSnap.snapShot('TestCase_3c6597b8f40c404f8dbbb2a1ed14d147_1');
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('DstIndex_2'));
      await button.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('TestCase_3c6597b8f40c404f8dbbb2a1ed14d147_2');
      await Utils.sleep(1000);
      Logger.info('TEST', `TestCase_3c6597b8f40c404f8dbbb2a1ed14d147 finish.`);
      done();
    })

    /**
     * @tc.number: TestCase_cfacee40d12b4b0b8ced93d0cfc47b7f
     * @tc.name: TestCase_cfacee40d12b4b0b8ced93d0cfc47b7f
     * @tc.desc: setPolyToPoly Interface testing.
     * @tc.level 0
     * @tc.type: Function
     * @tc.size: SmallTest
     */
    it('TestCase_cfacee40d12b4b0b8ced93d0cfc47b7f', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_cfacee40d12b4b0b8ced93d0cfc47b7f start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase013");
      await Utils.sleep(1000);
      windowSnap.snapShot('TestCase_cfacee40d12b4b0b8ced93d0cfc47b7f_1');
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('PointCount_none'));
      await button.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('TestCase_cfacee40d12b4b0b8ced93d0cfc47b7f_2');
      await Utils.sleep(1000);
      Logger.info('TEST', `TestCase_cfacee40d12b4b0b8ced93d0cfc47b7f finish.`);
      done();
    })

    /**
     * @tc.number: TestCase_67e24c4a75324d8aaf8d0015b640a0e4
     * @tc.name: TestCase_67e24c4a75324d8aaf8d0015b640a0e4
     * @tc.desc: setPolyToPoly Interface testing.
     * @tc.level 0
     * @tc.type: Function
     * @tc.size: SmallTest
     */
    it('TestCase_67e24c4a75324d8aaf8d0015b640a0e4', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_67e24c4a75324d8aaf8d0015b640a0e4 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase014");
      await Utils.sleep(1000);
      windowSnap.snapShot('TestCase_67e24c4a75324d8aaf8d0015b640a0e4_1');
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('PointCount_1'));
      await button.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('TestCase_67e24c4a75324d8aaf8d0015b640a0e4_2');
      await Utils.sleep(1000);
      Logger.info('TEST', `TestCase_67e24c4a75324d8aaf8d0015b640a0e4 finish.`);
      done();
    })

    /**
     * @tc.number: TestCase_8b73668cabf546b498bcc17b79cda1c5
     * @tc.name: TestCase_8b73668cabf546b498bcc17b79cda1c5
     * @tc.desc: setPolyToPoly Interface testing.
     * @tc.level 0
     * @tc.type: Function
     * @tc.size: SmallTest
     */
    it('TestCase_8b73668cabf546b498bcc17b79cda1c5', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_8b73668cabf546b498bcc17b79cda1c5 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase015");
      await Utils.sleep(1000);
      windowSnap.snapShot('TestCase_8b73668cabf546b498bcc17b79cda1c5_1');
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('DstLong'));
      await button.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('TestCase_8b73668cabf546b498bcc17b79cda1c5_2');
      await Utils.sleep(1000);
      Logger.info('TEST', `TestCase_8b73668cabf546b498bcc17b79cda1c5 finish.`);
      done();
    })

    /**
     * @tc.number: TestCase_85bc2bdae4ee4c17bbdcbb8476b083e8
     * @tc.name: TestCase_85bc2bdae4ee4c17bbdcbb8476b083e8
     * @tc.desc: setPolyToPoly Interface testing.
     * @tc.level 0
     * @tc.type: Function
     * @tc.size: SmallTest
     */
    it('TestCase_85bc2bdae4ee4c17bbdcbb8476b083e8', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_85bc2bdae4ee4c17bbdcbb8476b083e8 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase016");
      windowSnap.snapShot('TestCase_85bc2bdae4ee4c17bbdcbb8476b083e8_1');
      await Utils.sleep(1000);
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('SrcArray_004'));
      await button.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('TestCase_85bc2bdae4ee4c17bbdcbb8476b083e8_2');
      await Utils.sleep(1000);
      Logger.info('TEST', `TestCase_85bc2bdae4ee4c17bbdcbb8476b083e8 finish.`);
      done();
    })

    /**
     * @tc.number: TestCase_fda8cf0350df40debb6f7bb5f6eb3353
     * @tc.name: TestCase_fda8cf0350df40debb6f7bb5f6eb3353
     * @tc.desc: setPolyToPoly Interface testing.
     * @tc.level 0
     * @tc.type: Function
     * @tc.size: SmallTest
     */
    it('TestCase_fda8cf0350df40debb6f7bb5f6eb3353', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_fda8cf0350df40debb6f7bb5f6eb3353 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase017");
      await Utils.sleep(1000);
      windowSnap.snapShot('TestCase_fda8cf0350df40debb6f7bb5f6eb3353_1');
      let driver:Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('SrcArray_003'));
      await button.click();
      await Utils.sleep(2000);
      windowSnap.snapShot('TestCase_fda8cf0350df40debb6f7bb5f6eb3353_2');
      await Utils.sleep(1000);
      Logger.info('TEST', `TestCase_fda8cf0350df40debb6f7bb5f6eb3353 finish.`);
      done();
    })
  })
}
