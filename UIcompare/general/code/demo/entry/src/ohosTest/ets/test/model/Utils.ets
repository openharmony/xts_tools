// @ts-nocheck
import { UiDriver, Driver, BY } from '@ohos.UiTest';

export default class Utils {
  static sleep(time) {
    return new Promise((resolve, reject) => {
      setTimeout(() => {
        resolve()
      }, time)
    })
  }

  static async clickComponentByKey(componentKey) {
    let driver = await UiDriver.create();
    let component = await driver.findComponent(BY.key(componentKey));
    await component.click();
  }
}