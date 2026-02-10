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

/**
 * 交互框架测试用例_20241025 Sheet2 - 鼠标样式/备忘录栏位显示（MOUSE_REFESHBYVSYNC_0010~0140）
 * 占位页：模拟第一栏、第二栏、第三栏及 sideBar 区域，用于验证默认/修改鼠标样式
 */
@Entry
@Component
struct MouseRefeshByVsync {
  @State tip: string = '输入: (点击各区域后显示)\n检查结果: (当前区域与预期样式)';

  build() {
    Column() {
      Text(this.tip).fontSize(14).fontColor(Color.Red).margin(8)
      Row() {
        Text('第一栏').id('zone1').width(80).height(40).backgroundColor(Color.Gray).margin(4)
          .onClick(() => { this.tip = '输入: 点击【第一栏】\n检查结果: 当前区域-第一栏 预期:默认样式'; })
        Column().id('sidebar1').width(4).height(40).backgroundColor(Color.Black).margin(4)
          .onClick(() => { this.tip = '输入: 点击【第一二栏间sideBar】\n检查结果: 当前区域-第一二栏间sideBar 预期:分栏样式'; })
        Text('第二栏').id('zone2').width(80).height(40).backgroundColor(Color.Gray).margin(4)
          .onClick(() => { this.tip = '输入: 点击【第二栏】\n检查结果: 当前区域-第二栏 预期:默认样式'; })
        Column().id('sidebar2').width(4).height(40).backgroundColor(Color.Black).margin(4)
          .onClick(() => { this.tip = '输入: 点击【第二三栏间sideBar】\n检查结果: 当前区域-第二三栏间sideBar 预期:分栏样式'; })
        TextInput({ placeholder: '第三栏输入' }).id('input1').width(120).height(40).margin(4)
          .onClick(() => { this.tip = '输入: 点击【第三栏输入框】\n检查结果: 当前区域-第三栏输入框 预期:默认样式'; })
      }
      .width('100%')
      .margin(8)
    }
    .width('100%')
    .height('100%')
  }
}
