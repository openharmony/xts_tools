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

// 测试用例：SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_INTERFACE_0770
// 测试步骤：1、创建单个listltem组件 2、创建listltem设置 ListItemStyle.CARD 3、创建listlemGroup设置ListItemGroupStyle.CARD 4、编译hap包
// 预期效果及校验点：显示默认卡片样式效果

@Entry
@Component
struct ListCardStyle0770 {
  @State message: string = 'List Card Style Test - Default Card Style'
  @State styleInfo: string = '默认CARD样式效果'

  private testData: ListCardStyle0770Data[] = [
    {
      title: '默认卡片样式测试组',
      items: ['默认卡片样式1', '默认卡片样式2', '默认卡片样式3']
    }
  ]

  build() {
    Column() {
      Text(this.message)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 20 })

      Text('测试说明：ListItem和ListItemGroup设置为CARD样式，验证默认卡片样式效果')
        .fontSize(16)
        .fontColor('#666666')
        .margin({ bottom: 20 })

      Text(`样式信息：${this.styleInfo}`)
        .fontSize(14)
        .fontColor('#9C27B0')
        .margin({ bottom: 20 })

      List({ space: 20 }) {
        ForEach(this.testData, (item: ListCardStyle0770Data) => {
          ListItemGroup({ header: this.itemHeader(item.title), style: ListItemGroupStyle.CARD }) {
            ForEach(item.items, (testItem: string) => {
              ListItem({ style: ListItemStyle.CARD }) {
                Row() {
                  Text('🎴')
                    .fontSize(24)
                    .margin({ right: 15 })
                  Column() {
                    Text(testItem)
                      .fontSize(16)
                      .fontWeight(FontWeight.Bold)
                    Text('ListItemStyle.CARD默认效果')
                      .fontSize(12)
                      .fontColor('#666666')
                  }
                  .alignItems(HorizontalAlign.Start)
                }
                .width("100%")
                .height(80)
                .padding(15)
              }
              .onClick(() => {
                this.styleInfo = `${testItem}被点击`
                console.info(`${testItem} clicked`)
              })
            }, (item: string) => item)
          }
          .onClick(() => {
            this.styleInfo = '默认卡片组样式被点击'
            console.info('Default card group style clicked')
          })
        })
      }
      .id('list_0770')
      .width("90%")
      .height(400)
      .padding(10)

      Button('重置样式信息')
        .onClick(() => {
          this.styleInfo = '默认CARD样式效果'
        })
        .margin({ top: 20 })
    }
    .width("100%")
    .height("100%")
    .padding(20)
    .backgroundColor(0xF5F5F5)
  }

  @Builder
  itemHeader(title: string) {
    Text(title)
      .fontSize(18)
      .fontWeight(FontWeight.Bold)
      .width("100%")
      .height(50)
      .textAlign(TextAlign.Center)
      .backgroundColor(0xE0E0E0)
  }
}

interface ListCardStyle0770Data {
  title: string;
  items: string[];
}