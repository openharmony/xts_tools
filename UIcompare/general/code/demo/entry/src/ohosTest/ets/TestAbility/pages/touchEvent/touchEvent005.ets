/**
 * Copyright (c) 2023 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
import AttrsManager from '../../../test/model/AttrsManager'

class Utils {
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

let rect = Utils.getComponentRect('onTouch') // 获取id为"onTouch"组件的矩形区域坐标

@Entry
@Component
struct TouchExample {
  @State _generalAttr: number = 10; //通用属性初始值
  @State text: string = ''
  @State eventType: string = ''
  @State startTime: number = 0
  @State endTime: number = 0
  @State sumTime: number = 0
  @State execution: number = 0
  @State times:number = 0

  onPageShow() {
    console.info('FocusPage onPageShow');
    AttrsManager.registerDataChange(value => this._generalAttr = value)
  }

  build() {
    Column() {
      Button('Touch').height(50).width(200).margin(20)
        .onTouch((event: TouchEvent) => {
          if (event.type === TouchType.Down) {
            this.eventType = 'Down'
          }
          if (event.type === TouchType.Up) {
            this.eventType = 'Up'
          }
          if (event.type === TouchType.Move) {
            this.eventType = 'Move'
          }
          this.endTime = Date.now()
          this.times ++
          this.execution = this.endTime - this.startTime
          this.sumTime = this.sumTime + this.execution
          if(this.times == 5){
            let avg = this.sumTime/5
            console.info(`onTouch avg time is :${avg}`)
            this.times = 0
            this.sumTime = 0
          }
          this.text = 'TouchType:' + this.eventType + '\nDistance between touch point and touch element:\nx: '
          + event.touches[0].x + '\n' + 'y: ' + event.touches[0].y + '\nComponent globalPos:('
          + event.target.area.globalPosition.x + ',' + event.target.area.globalPosition.y + ')\nwidth:'
          + event.target.area.width + '\nheight:' + event.target.area.height
        })
        .id("onTouch")
      Text(this.text)

      Button("sendTouchEvent")
        .width(200)
        .height(100)
        .id("onClick")
        .onClick(() => {
          let touchEvent =  {
            id:1,
            x: rect.left + (rect.right - rect.left) / 2 ,
            y: rect.top + (rect.bottom - rect.top) / 2,
            type: TouchType.Down,
            screenX: rect.left + (rect.right - rect.left) / 2,
            screenY: rect.top + (rect.bottom - rect.top) / 2,
          }
          this.startTime = Date.now();
          console.info(`touchEvent start time is : ${this.startTime}`)
          sendTouchEvent(touchEvent) // 发送触摸事件
        })
    }.width('100%').padding(30)
  }
}