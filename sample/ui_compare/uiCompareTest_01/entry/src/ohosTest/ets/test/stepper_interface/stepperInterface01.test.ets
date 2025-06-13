import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON, Component } from '@kit.TestKit';

export default function stepperInterface01Test() {

  describe('stepperInterface01Test', () => {
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
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_STEPPER_INTERFACE_0160
     * @tc.name   : Set the display of the 'nextLabel' property in the step navigator to unavailable status.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_STEPPER_INTERFACE_0160', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_STEPPER_INTERFACE_0160 start.`);
      Settings.createWindow("testability/pages/stepper_interface/stepper01")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_STEPPER_INTERFACE_0160')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_ACTION_GESTURE_MONOPOLIZE_0020 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_STEPPER_INTERFACE_0100
     * @tc.name   : Set the 'precLabel' property in the single page.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_STEPPER_INTERFACE_0100', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_STEPPER_INTERFACE_0100 start.`);
      Settings.createWindow("testability/pages/stepper_interface/stepper02")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_STEPPER_INTERFACE_0100')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_STEPPER_INTERFACE_0100 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_NAV_STEPPER_INTERFACE_0190
     * @tc.name   : Set the display of the 'nextLabel' property in the step navigator to skipped status.
     * @tc.type   : Function
     * @tc.size   : MediumTest
     * @tc.level  : 3
     */
    it('SUB_ACE_UI_COMPONENT_NAV_STEPPER_INTERFACE_0190', Level.LEVEL3, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_STEPPER_INTERFACE_0190 start.`);
      Settings.createWindow("testability/pages/stepper_interface/stepper03")
      let driver:Driver = Driver.create();
      await driver.waitForIdle(500,2000);
      windowSnap.snapShot('SUB_ACE_UI_COMPONENT_NAV_STEPPER_INTERFACE_0190')
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_STEPPER_INTERFACE_0190 finish.`);
      done()
    })
  })
}
