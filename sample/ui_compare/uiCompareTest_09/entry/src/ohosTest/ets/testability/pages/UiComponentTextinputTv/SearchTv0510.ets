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

@Entry
@ComponentV2
export struct SearchTv0510 {
  @Local testStatus: string = '待测试';

  build() {
    Scroll() {
      Column({ space: 20 }) {
        Text('SUB_ACE_UI_COMPONENT_SEARCH_TV_0510')
          .fontSize(18)
          .fontWeight(FontWeight.Bold)

        Text(`测试描述：搜索框输入法避让测试`)
          .fontSize(14)
          .fontColor(Color.Gray)

        Divider()

        Text(`预置条件：存在搜索框在页面底部`)
          .fontSize(13)
          .fontColor(Color.Orange)
          .alignSelf(ItemAlign.Start)

        Divider()

        // 填充内容
        Column() {
          Text('填充内容区域')
            .fontSize(14)
            .fontColor(Color.Gray)
        }
        .height(300)
        .width('100%')
        .backgroundColor('#F0F0F0')
        .borderRadius(10)

        Column({ space: 15 }) {
          Text(`测试状态：${this.testStatus}`)
            .fontSize(14)
            .fontColor(Color.Blue)

          Search({ placeholder: '位于页面底部的搜索框' })
            .id('bottomSearch')
            .width('80%')
            .height(50)
            .onFocus(() => {
              this.testStatus = '✅ 搜索框获得焦点，应避让输入法';
            })
            .onBlur(() => {
              this.testStatus = '⬅️ 搜索框失去焦点';
            })

          Button(`点击搜索框`)
            .id('btn')
            .onClick(() => {
              this.testStatus = '📝 提示：点击搜索框弹出输入法';
            })
        }
        .width('100%')
        .padding(15)
        .backgroundColor('#E8F5E9')
        .borderRadius(10)

        Divider()

        Text(`预期结果：搜索框避让输入法，输入法和搜索框中的光标在屏幕中同时显示`)
          .fontSize(13)
          .fontColor(Color.Green)
          .alignSelf(ItemAlign.Start)
      }
      .width('100%')
      .padding(20)
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)
  }
}

