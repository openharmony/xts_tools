/**
 * Copyright (c) 2022 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
import router from '@ohos.router';

@Entry
@Component
struct VisibilityExample {
  @State _generalAttr: 	Visibility = 	Visibility.Visible; //通用属性初始值
  @State targetView: string = router.getParams() ? router.getParams()['view']['targetView'] : "" //当前测试的组件
  @State Number: String[] = ['0', '1', '2', '3', '4']
  private arr: number[] = [0, 1, 2, 3, 4]

  @Styles commonStyle(){
    .width(200)
    .height(150)
    .border({width:2})
  }

  onPageShow() {
    console.info('VisibilityExample onPageShow');
    AttrsManager.registerDataChange(value => this._generalAttr = value)
  }

  build() {
    Column() {
      if (this.targetView == 'Column') {
        Column() {
          Text("Visibility Column")
            .fontSize(18)
            .width(150)
            .height(80)
        }.width('90%')
        .border({ width: 1 })
        .commonStyle()
      } else if (this.targetView == 'Grid') {
        Grid() {
          ForEach(this.Number, (day: string) => {
            ForEach(this.Number, (day: string) => {
              GridItem() {
                Text(day)
                  .fontSize(16)
                  .backgroundColor(0xF9CF93)
                  .width('100%')
                  .height('100%')
                  .textAlign(TextAlign.Center)
              }
            }, day => day)
          }, day => day)
        }
        .columnsTemplate('1fr 1fr 1fr 1fr 1fr')
        .rowsTemplate('1fr 1fr 1fr 1fr 1fr')
        .columnsGap(10)
        .rowsGap(10)
        .width('90%')
        .backgroundColor(0xFAEEE0)
        .height(300)
      }else if (this.targetView == 'List') {
        List({ space: 20, initialIndex: 0 }) {
          ForEach(this.arr, (item) => {
            ListItem() {
              Text('' + item)
                .width('100%').height(100).fontSize(16)
                .textAlign(TextAlign.Center).borderRadius(10).backgroundColor(0xFFFFFF)
            }
          }, item => item)
        }
        .listDirection(Axis.Vertical) // 排列方向
        .divider({ strokeWidth: 2, color: 0xFFFFFF, startMargin: 20, endMargin: 20 }) // 每行之间的分界线
        .edgeEffect(EdgeEffect.Spring) // 滑动到边缘无效果
        .onScrollIndex((firstIndex: number, lastIndex: number) => {
          console.info('first' + firstIndex)
          console.info('last' + lastIndex)
        })
        .width('90%')
        .height(200)
      }
    }.width('100%').margin({ top: 5 })
  }
}