/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

// 1、创建button组件和menu组件
// 2、button组件绑定menu组件
// 3、bindMenu设置MenuElement、backgroundBlurStyleOptions（  scale：1）
// 4、点击“bindMenu”按钮	1、scale状态选择为“scale：1”状态
// 2、点击“BlurStyleOptions1”按钮
// 1、创建button组件和menu组件
// 2、button组件绑定menu组件
// 3、bindMenu设置MenuElement、backgroundBlurStyleOptions（  scale：0）
// 4、点击“bindMenu”按钮	1、scale状态选择为“scale：0”状态
// 2、点击“BlurStyleOptions1”按钮
//   -1、创建button组件和menu组件
// 2、button组件绑定menu组件
// 3、bindMenu设置MenuElement、backgroundBlurStyleOptions（  scale：-1）
// 4、点击“bindMenu”按钮	1、scale状态选择为“scale：-1”状态
// 2、点击“BlurStyleOptions1”按钮
// 1、创建button组件和menu组件
// 2、button组件绑定menu组件
// 3、bindMenu设置MenuElement、backgroundBlurStyleOptions（  scale：50）
// 4、点击“bindMenu”按钮	1、scale状态选择为“scale：50”状态
// 2、点击“BlurStyleOptions1”按钮
// undefined、创建button组件和menu组件
// 2、button组件绑定menu组件
// 3、bindMenu设置MenuElement、backgroundBlurStyleOptions（  scale： undefined）
// 4、点击“bindMenu”按钮	1、scale状态选择为“scale： undefined”状态
// 2、点击“BlurStyleOptions1”按钮

@Entry
@Component
struct Index {

  build() {
    Row() {
      Column() {
        Button('click for Menu')
          .id('bindMenu')
          .bindMenu([
            {
              value: 'Menu1',
              action: () => {
                console.info('handle Menu1 select');
              }
            },
            {
              value: 'Menu2',
              action: () => {
                console.info('handle Menu2 select');
              }
            },
          ], {
              backgroundBlurStyleOptions: {
                colorMode: undefined
              }
            })
      }.width('100%')
    }.height('100%')
  }
}
