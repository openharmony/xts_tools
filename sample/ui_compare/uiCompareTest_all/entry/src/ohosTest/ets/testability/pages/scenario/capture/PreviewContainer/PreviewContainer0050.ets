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
@Component
struct PreviewContainer0050 {
  @State numbers: string[] = ["0", "1", "2", "3", "4", "5", "6", "7", "8"];
  @State selectedIndex: number = -1;

  build() {
    Column({ space: 16 }) {
      // 标题区域
      Text('GridItem 属性示例')
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .fontColor(0x333333)
        .textAlign(TextAlign.Center)
        .width('100%')
        .padding(16)
        .backgroundColor(0xF0F0F0)
        .borderRadius(8)

      // 主要网格布局
      Grid() {
        // 特殊 GridItem - 跨行跨列示例
        GridItem({
          style: GridItemStyle.PLAIN
        }) {
          Column({ space: 4 }) {
            Text('跨行跨列')
              .fontSize(14)
              .fontWeight(FontWeight.Bold)
              .fontColor(Color.White)
            Text('Header')
              .fontSize(12)
              .fontColor(Color.White)
          }
          .width('100%')
          .height('100%')
          .justifyContent(FlexAlign.Center)
          .alignItems(HorizontalAlign.Center)
        }
        // 根据官方文档设置 GridItem 属性
        .backgroundColor(0x007DFF)
        .borderRadius(8)
        .rowStart(0)
        .rowEnd(1)      // 跨越2行 (0-1)
        .columnStart(0)
        .columnEnd(1)   // 跨越2列 (0-1)
        .selectable(true)
        .selected(this.selectedIndex === -1)
        .onClick(() => {
          this.selectedIndex = this.selectedIndex === -1 ? -2 : -1;
        })

        // 普通 GridItem 列表
        ForEach(this.numbers, (item: string, index: number) => {
          GridItem({
            style: GridItemStyle.NONE
          }) {
            Column({ space: 2 }) {
              Text(item)
                .fontSize(18)
                .fontWeight(FontWeight.Bold)
                .fontColor(this.selectedIndex === index ? Color.White : 0x333333)
              Text(`Item`)
                .fontSize(10)
                .fontColor(this.selectedIndex === index ? Color.White : 0x666666)
            }
            .width('100%')
            .height('100%')
            .justifyContent(FlexAlign.Center)
            .alignItems(HorizontalAlign.Center)
          }
          // 根据官方文档设置完整的 GridItem 属性
          .backgroundColor(this.selectedIndex === index ? 0xFF6B6B : 0xF9CF93)
          .borderRadius(6)
          .shadow({
            radius: this.selectedIndex === index ? 6 : 2,
            color: this.selectedIndex === index ? 0x40FF6B6B : 0x20000000,
            offsetX: 0,
            offsetY: 2
          })
          .scale({
            x: this.selectedIndex === index ? 1.05 : 1.0,
            y: this.selectedIndex === index ? 1.05 : 1.0
          })
          .animation({
            duration: 200,
            curve: Curve.EaseInOut
          })
          // 设置选择属性
          .selectable(true)
          .selected(this.selectedIndex === index)
          // 交互事件
          .onClick(() => {
            this.selectedIndex = this.selectedIndex === index ? -1 : index;
          })
          .onHover((isHover: boolean) => {
            // 悬停效果 - 使用 item 参数记录日志
            console.log(`GridItem ${item} hover state: ${isHover}`);
          })
          // 焦点管理
          .focusable(true)
          .onFocus(() => {
            // 焦点获得时的处理 - 使用 item 参数
            console.log(`GridItem ${item} focused`);
          })
          .onBlur(() => {
            // 焦点失去时的处理 - 使用 item 参数
            console.log(`GridItem ${item} blurred`);
          })
        }, (item: string, index: number) => `grid-item-${item}-${index}`)

        // 底部跨列 GridItem 示例
        GridItem({
          style: GridItemStyle.PLAIN
        }) {
          Row({ space: 8 }) {
            Text('🎯')
              .fontSize(16)
            Text('跨列底部项')
              .fontSize(14)
              .fontWeight(FontWeight.Medium)
              .fontColor(Color.White)
          }
          .width('100%')
          .height('100%')
          .justifyContent(FlexAlign.Center)
          .alignItems(VerticalAlign.Center)
        }
        .backgroundColor(0x4CAF50)
        .borderRadius(8)
        .columnStart(2)
        .columnEnd(4)     // 跨越3列 (2-4)
        .selectable(true)
        .selected(this.selectedIndex === -3)
        .onClick(() => {
          this.selectedIndex = this.selectedIndex === -3 ? -1 : -3;
        })
      }
      // Grid 容器属性
      .columnsTemplate('1fr 1fr 1fr 1fr 1fr')
      .rowsTemplate('1fr 1fr 1fr 1fr')
      .columnsGap(8)
      .rowsGap(8)
      .width('95%')
      .height(320)
      .backgroundColor(0xFAEEE0)
      .borderRadius(12)
      .padding(12)

      // 属性说明区域
      Column({ space: 8 }) {
        Text('GridItem 核心属性')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .fontColor(0x333333)

        Column({ space: 4 }) {
          Text('• style: GridItemStyle.NONE | PLAIN - 设置样式风格')
            .fontSize(12)
            .fontColor(0x666666)
          Text('• rowStart/rowEnd: 设置行起始和结束位置')
            .fontSize(12)
            .fontColor(0x666666)
          Text('• columnStart/columnEnd: 设置列起始和结束位置')
            .fontSize(12)
            .fontColor(0x666666)
          Text('• selectable: boolean - 设置是否可选择')
            .fontSize(12)
            .fontColor(0x666666)
          Text('• selected: boolean - 设置选中状态')
            .fontSize(12)
            .fontColor(0x666666)
          Text('• 支持完整的焦点管理和交互事件')
            .fontSize(12)
            .fontColor(0x666666)
        }
        .alignItems(HorizontalAlign.Start)
      }
      .width('95%')
      .padding(16)
      .backgroundColor(Color.White)
      .borderRadius(12)
      .shadow({ radius: 4, color: 0x10000000, offsetX: 0, offsetY: 2 })

    }
    .width('100%')
    .height('100%')
    .padding(16)
    .backgroundColor(0xF5F5F5)
  }
}
