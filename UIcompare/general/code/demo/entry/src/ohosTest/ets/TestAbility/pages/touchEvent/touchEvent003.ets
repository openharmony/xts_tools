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
  @State _generalAttr: TouchEvent = {
    touches:{
      // @ts-ignore
      id:1,
      x: rect.left + (rect.right - rect.left) / 2 ,
      y: rect.top + (rect.bottom - rect.top) / 2,
      type: TouchType.Down,
      screenX: rect.left + (rect.right - rect.left) / 2,
      screenY: rect.top + (rect.bottom - rect.top) / 2,
    },
    timestamp:0,
    // changedTouches:[],
    // type:TouchType.Down,
    target:{
      area:{
        width:100,
        height:100,
        globalPosition:{
          // x:20,
          // y:30
        },
        position:{
          // x:100,
        }
      }
    }
  }; //通用属性初始值
  @State text: string = ''
  @State eventType: string = ''

  onPageShow() {
    console.info('FocusPage onPageShow');
    AttrsManager.registerDataChange(value => this._generalAttr = value)
  }

  build() {
    Column() {
      Button('Touch').height(50).width(200).margin(20)
        .onTouch((_generalAttr: TouchEvent) => {
          if (_generalAttr.type === TouchType.Down) {
            this.eventType = 'Down'

          }
          if (_generalAttr.type === TouchType.Up) {
            this.eventType = 'Up'
          }
          if (_generalAttr.type === TouchType.Move) {
            this.eventType = 'Move'
          }
          this.text = 'TouchType:' + this.eventType + '\nDistance between touch point and touch element:\nx: '
          + _generalAttr.touches[0].x + '\n' + 'y: ' + _generalAttr.touches[0].y + '\nComponent globalPos:('
          + _generalAttr.target.area.globalPosition.x + ',' + _generalAttr.target.area.globalPosition.y + ')\nwidth:'
          + _generalAttr.target.area.width + '\nheight:' + _generalAttr.target.area.height
        })
        .id("onTouch")
      Text(this.text)
    }.width('100%').padding(30)
  }
}