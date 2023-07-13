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

  static rect_left;
  static rect_top;
  static rect_right;
  static rect_bottom;
  static rect_value;

  //获取组件所占矩形区域坐标
  static getComponentRect(key) {
    let strJson = getInspectorByKey(key);
    let obj = JSON.parse(strJson);
    console.info("[getInspectorByKey] current component obj is: " + JSON.stringify(obj));
    let rectInfo = JSON.parse('[' + obj.$rect + ']')
    console.info("[getInspectorByKey] rectInfo is: " + rectInfo);
    this.rect_left = JSON.parse('[' + rectInfo[0] + ']')[0]
    this.rect_top = JSON.parse('[' + rectInfo[0] + ']')[1]
    this.rect_right = JSON.parse('[' + rectInfo[1] + ']')[0]
    this.rect_bottom = JSON.parse('[' + rectInfo[1] + ']')[1]
    return this.rect_value = {
      "left": this.rect_left, "top": this.rect_top, "right": this.rect_right, "bottom": this.rect_bottom
    }
  }

}