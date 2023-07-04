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
struct ClipPage002 {
  @State _generalAttr: any = false; //通用属性初始值
  @State targetView: string = router.getParams() ? router.getParams()['view']['targetView'] : "" //当前测试的组件
  @State componentKey: string = router.getParams() ? router.getParams()['view']['componentKey'] : "" //组件唯一标识

  onPageShow() {
    console.info('FocusPage onPageShow');
    AttrsManager.registerDataChange(value => this._generalAttr = value)
  }

  build() {
    Column() {
      Text('clip').width('90%').fontColor(0xCCCCCC).padding(15).fontSize(30)
      Image($r("app.media.icon"))
        .clip(this._generalAttr)
        .width(400)
        .height(400)
        .backgroundColor(0xAFEEEE)
    }.width('100%').margin({ top: 5 })
  }
}