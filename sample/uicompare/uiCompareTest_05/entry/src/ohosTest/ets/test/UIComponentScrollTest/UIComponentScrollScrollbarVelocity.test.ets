
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, Component, ON } from '@kit.TestKit'
import { window } from '@kit.ArkUI'

export default function UIComponentScrollScrollbarVelocity() {

  describe('UIComponentScrollScrollbarVelocity', () => {
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

    // waterflow
    /**
     * @tc.number     : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0110
     * @tc.name       : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0110
     * @tc.desc       : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0110
     * @tc.level      : Level 3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0110 start.`);
      Settings.createWindow('testability/pages/UIComponentScroll/UIComponentScrollScrollbarVelocity001')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('ScrollbarVelocity001'))
      await component.click();
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0110 finish.`);
      done()
    })


    // /**
    //  * @tc.number     : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0150
    //  * @tc.name       : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0150
    //  * @tc.desc       : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0150
    //  * @tc.level      : Level 3
    //  */
    // it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0150', 0, async (done: Function) => {
    //   Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0150 start.`);
    //   Settings.createWindow('testability/pages/UIComponentScroll/UIComponentScrollScrollbarVelocity002')
    //   await Utils.sleep(3000)
    //   let driver: Driver = Driver.create()
    //   let component: Component = await driver.findComponent(ON.id('ScrollbarVelocity002'))
    //   // 闪退
    //   await component.click();
    //   windowSnap.snapShot()
    //   await Utils.sleep(3000)
    //   Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0150 finish.`);
    //   done()
    // })

    /**
     * @tc.number     : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0130
     * @tc.name       : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0130
     * @tc.desc       : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0130
     * @tc.level      : Level 3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0130 start.`);
      Settings.createWindow('testability/pages/UIComponentScroll/UIComponentScrollScrollbarVelocity003')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('ScrollbarVelocity003'))
      await component.click();
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0130 finish.`);
      done()
    })


    // /**
    //  * @tc.number     : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0160
    //  * @tc.name       : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0160
    //  * @tc.desc       : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0160
    //  * @tc.level      : Level 3
    //  */
    // it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0160', 0, async (done: Function) => {
    //   Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0160 start.`);
    //   Settings.createWindow('testability/pages/UIComponentScroll/UIComponentScrollScrollbarVelocity004')
    //   await Utils.sleep(3000)
    //   let driver: Driver = Driver.create()
    //   let component: Component = await driver.findComponent(ON.id('ScrollbarVelocity004'))
    //   // 闪退
    //   await component.click();
    //   windowSnap.snapShot()
    //   await Utils.sleep(3000)
    //   Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0160 finish.`);
    //   done()
    // })


    /**
     * @tc.number     : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0120
     * @tc.name       : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0120
     * @tc.desc       : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0120
     * @tc.level      : Level 3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0120 start.`);
      Settings.createWindow('testability/pages/UIComponentScroll/UIComponentScrollScrollbarVelocity005')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('ScrollbarVelocity005'))
      await component.click();
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0120 finish.`);
      done()
    })


    /**
     * @tc.number     : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0140
     * @tc.name       : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0140
     * @tc.desc       : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0140
     * @tc.level      : Level 3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0140 start.`);
      Settings.createWindow('testability/pages/UIComponentScroll/UIComponentScrollScrollbarVelocity006')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('ScrollbarVelocity006'))
      await component.click();
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0140 finish.`);
      done()
    })


    /**
     * @tc.number     : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0200
     * @tc.name       : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0200
     * @tc.desc       : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0200
     * @tc.level      : Level 3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0200 start.`);
      Settings.createWindow('testability/pages/UIComponentScroll/UIComponentScrollScrollbarVelocity007')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('ScrollbarVelocity007'))
      await component.click();
      // await Utils.sleep(3000)
      windowSnap.snapShot()
      Settings.changeWindow('testability/pages/UIComponentScroll/UIComponentScrollScrollbarVelocity007', 100, 100)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0200 finish.`);
      done()
    })


    /**
     * @tc.number     : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0190
     * @tc.name       : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0190
     * @tc.desc       : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0190
     * @tc.level      : Level 3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0190 start.`);
      Settings.createWindow('testability/pages/UIComponentScroll/UIComponentScrollScrollbarVelocity008')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('ScrollbarVelocity008'))
      await component.click();
      windowSnap.snapShot()
      // await Utils.sleep(1000)
      // 打断动画
      let component2: Component = await driver.findComponent(ON.id('InterruptAnimation'))
      await component2.click();
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0190 finish.`);
      done()
    })

    /**
     * @tc.number     : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0180
     * @tc.name       : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0180
     * @tc.desc       : SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0180
     * @tc.level      : Level 3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0180 start.`);
      Settings.createWindow('testability/pages/UIComponentScroll/UIComponentScrollScrollbarVelocity010')
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let component: Component = await driver.findComponent(ON.id('ScrollbarVelocity010'))
      await component.click();
      windowSnap.snapShot()
      // 横竖屏切换
      Settings.changeWindowOrientation('testability/pages/UIComponentScroll/UIComponentScrollScrollbarVelocity010',
        window.Orientation.PORTRAIT);
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SCROLLBAR_VELOCITY_0180 finish.`);
      done()
    })

  })
}

