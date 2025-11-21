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

// 测试用例：SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_UI_0590
// 测试步骤：1、创建单个listltem组件 2、创建listltem设置 ListItemStyle.CARD 3、创建listlemGroup设置ListItemGroupStyle.CARD 4、编译hap包
// 预期效果及校验点：鼠标悬浮有视觉效果

@Entry
@Component
struct ListCardStyle0590 {
  @State message: string = 'List Card Style Test - Mouse Hover Visual Effect'
  @State hoverInfo: string = '等待鼠标悬浮操作'

  private testData: ListCardStyle0590Data[] = [
    {
      title: '鼠标悬浮视觉效果测试组',
      items: ['悬浮测试项目1', '悬浮测试项目2', '悬浮测试项目3']
    }
  ]

  build() {
    Column() {
      Text(this.message)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 20 })

      Text('测试说明：ListItem和ListItemGroup设置为CARD样式，测试鼠标悬浮视觉效果')
        .fontSize(16)
        .fontColor('#666666')
        .margin({ bottom: 20 })

      Text(`悬浮信息：${this.hoverInfo}`)
        .fontSize(14)
        .fontColor('#E91E63')
        .margin({ bottom: 20 })

      List({ space: 20 }) {
        ForEach(this.testData, (item: ListCardStyle0590Data) => {
          ListItemGroup({ header: this.itemHeader(item.title), style: ListItemGroupStyle.CARD }) {
            ForEach(item.items, (testItem: string) => {
              ListItem({ style: ListItemStyle.CARD }) {
                Row() {
                  Text('🖱️')
                    .fontSize(24)
                    .margin({ right: 15 })
                  Column() {
                    Text(testItem)
                      .fontSize(16)
                      .fontWeight(FontWeight.Bold)
                    Text('鼠标悬浮查看视觉效果')
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
                this.hoverInfo = `${testItem}被点击`
                console.info(`${testItem} clicked`)
              })
              .onHover((isHover: boolean) => {
                this.hoverInfo = isHover ? `${testItem}悬浮中` : '等待鼠标悬浮操作'
                console.info(`${testItem} hover: ${isHover}`)
              })
            }, (item: string) => item)
          }
          .onClick(() => {
            this.hoverInfo = '悬浮测试组被点击'
            console.info('Hover test group clicked')
          })
          .onHover((isHover: boolean) => {
            this.hoverInfo = isHover ? '悬浮测试组悬浮中' : '等待鼠标悬浮操作'
            console.info(`Hover test group hover: ${isHover}`)
          })
        })
      }
      .id('list_0590')
      .width("90%")
      .height(400)
      .padding(10)

      Button('重置悬浮信息')
        .onClick(() => {
          this.hoverInfo = '等待鼠标悬浮操作'
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

interface ListCardStyle0590Data {
  title: string;
  items: string[];
}