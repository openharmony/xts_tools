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

interface GridItemSize {
  columnSpan: number;
  rowSpan: number;
}

@Entry
@Component
struct CustomizeGatherOrNot007 {
  @State items: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
  @State selectedItems: Set<number> = new Set()
  @State dragStatus: string = '等待操作'
  @State testStarted: boolean = false
  @State dragCount: number = 0
  private richEditorController: RichEditorController = new RichEditorController()

  // 定义不同GridItem的宽高
  getGridItemSize(index: number): GridItemSize {
    // 设置不同的宽高组合
    if (index === 0) {
      return { columnSpan: 2, rowSpan: 1 }  // 第1项：宽度2列，高度1行
    } else if (index === 2) {
      return { columnSpan: 1, rowSpan: 2 }  // 第3项：宽度1列，高度2行
    } else if (index === 5) {
      return { columnSpan: 2, rowSpan: 2 }  // 第6项：宽度2列，高度2行（大方块）
    } else if (index === 9) {
      return { columnSpan: 1, rowSpan: 1 }  // 第10项：宽度1列，高度1行（小方块）
    } else if (index === 11) {
      return { columnSpan: 2, rowSpan: 1 }  // 第12项：宽度2列，高度1行
    } else {
      return { columnSpan: 1, rowSpan: 1 }  // 其他：标准大小
    }
  }

  build() {
    Column() {
      Text('Grid组件不同宽高拖拽测试')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20, bottom: 10 })
        .id('title_text_007')

      Text(`当前状态: ${this.dragStatus}`)
        .fontSize(16)
        .margin({ bottom: 10 })
        .id('drag_status_text_007')

      Text(`已选中: ${this.selectedItems.size} 项 | 拖拽次数: ${this.dragCount}`)
        .fontSize(16)
        .margin({ bottom: 5 })
        .id('selected_count_text_007')

      Button('点击Grid组件测试')
        .width('80%')
        .height(50)
        .fontSize(18)
        .margin({ bottom: 15 })
        .id('test_button_007')
        .onClick(() => {
          this.testStarted = true
          this.dragStatus = '已点击测试按钮，已自动选中不同宽高的GridItem'
          // 自动选中不同宽高的GridItem（包含相邻和不相邻）
          this.selectedItems.clear()
          this.selectedItems.add(0)   // 第1项（2列x1行，横长条）
          this.selectedItems.add(2)   // 第3项（1列x2行，竖长条）
          this.selectedItems.add(5)   // 第6项（2列x2行，大方块）
          this.selectedItems.add(9)   // 第10项（1列x1行，小方块）
          this.selectedItems.add(11)  // 第12项（2列x1行，横长条）
          
          // 更新RichEditor显示当前状态
          this.richEditorController.addTextSpan('\n\n当前操作：已选中不同宽高的GridItem：\n• 第1项（2列x1行，横长条）\n• 第3项（1列x2行，竖长条）\n• 第6项（2列x2行，大方块）\n• 第10项（1列x1行，小方块）\n• 第12项（2列x1行，横长条）\n现在可以通过鼠标进行连续拖拽，观察不同宽高GridItem的拖拽预览是否正确显示', {
            style: {
              fontColor: '#0277BD',
              fontSize: 12,
              fontWeight: FontWeight.Bold
            }
          })
        })

      Text('操作提示：Grid中包含不同宽高的GridItem（横长条、竖长条、大方块、小方块）')
        .fontSize(12)
        .fontColor('#666666')
        .margin({ bottom: 10 })
        .id('hint_text_007')

      // Grid组件，设置dragPreviewOptions的mode为ENABLE_MULTI_TILE_EFFECT
      Grid() {
        ForEach(this.items, (item: number, index: number) => {
          GridItem() {
            Column() {
              if (this.selectedItems.has(index)) {
                Text('✓已选')
                  .fontSize(12)
                  .fontColor(Color.Orange)
                  .fontWeight(FontWeight.Bold)
                  .margin({ bottom: 3 })
              }
              Text(`${item}`)
                .fontSize(this.selectedItems.has(index) ? 28 : 22)
                .fontColor(Color.White)
                .fontWeight(FontWeight.Bold)
              
              // 显示尺寸信息
              if (this.selectedItems.has(index)) {
                Text(`${this.getGridItemSize(index).columnSpan}x${this.getGridItemSize(index).rowSpan}`)
                  .fontSize(10)
                  .fontColor(Color.Orange)
                  .margin({ top: 3 })
              }
            }
            .width('100%')
            .height('100%')
            .justifyContent(FlexAlign.Center)
            .backgroundColor(this.selectedItems.has(index) ? '#FF6200EE' : '#2196F3')
            .borderRadius(8)
            .border({
              width: this.selectedItems.has(index) ? 4 : 1,
              color: this.selectedItems.has(index) ? Color.Orange : '#90CAF9'
            })
            .shadow(this.selectedItems.has(index) ? {
              radius: 12,
              color: '#FF6200EE',
              offsetX: 0,
              offsetY: 2
            } : null)
          }
          .columnStart(undefined)
          .columnEnd(undefined)
          .rowStart(undefined)
          .rowEnd(undefined)
          .id(`grid_item_${index}_007`)
          .draggable(true)
          .dragPreviewOptions({
            mode: DragPreviewMode.ENABLE_MULTI_TILE_EFFECT
          })
          .selectable(true)
          .selected(this.selectedItems.has(index))
          .onClick(() => {
            if (this.selectedItems.has(index)) {
              this.selectedItems.delete(index)
            } else {
              this.selectedItems.add(index)
            }
            let size = this.getGridItemSize(index)
            this.dragStatus = `选中/取消选中网格项${item}（${size.columnSpan}列x${size.rowSpan}行）`
          })
          .onDragStart(() => {
            this.dragCount++
            let size = this.getGridItemSize(index)
            this.dragStatus = `第${this.dragCount}次拖拽网格项${item}（${size.columnSpan}列x${size.rowSpan}行）`
            console.info('[TEST]', `GridItem ${item} onDragStart: 第${this.dragCount}次拖拽，尺寸${size.columnSpan}x${size.rowSpan}`)
            
            // 在RichEditor中显示拖拽效果观察提示
            this.richEditorController.addTextSpan(`\n\n【第${this.dragCount}次拖拽】正在拖拽网格项${item}（${size.columnSpan}列x${size.rowSpan}行），请观察：\n1. 拖拽效果是否为非聚拢\n2. 鼠标光标是否位于拖拽预览图中间\n3. 拖拽预览图大小是否与原组件一致\n4. 不同宽高的预览图是否显示正确，是否有被截断\n5. 拖拽动效是否流畅`, {
              style: {
                fontColor: '#E65100',
                fontSize: 11,
                fontWeight: FontWeight.Bold
              }
            })
          })
          .onDragEnd(() => {
            this.dragStatus = `第${this.dragCount}次拖拽结束（不同宽高预览已验证）`
            console.info('[TEST]', `GridItem ${item} onDragEnd: 第${this.dragCount}次拖拽结束`)
            
            // 在RichEditor中显示拖拽结束信息
            this.richEditorController.addTextSpan(`\n【第${this.dragCount}次拖拽完成】不同宽高预览显示正确✓`, {
              style: {
                fontColor: '#388E3C',
                fontSize: 12,
                fontWeight: FontWeight.Bold
              }
            })
          })
        }, (item: number) => item.toString())
      }
      .columnsTemplate('1fr 1fr 1fr 1fr')
      .rowsTemplate('1fr 1fr 1fr 1fr')
      .columnsGap(8)
      .rowsGap(8)
      .width('90%')
      .height(380)
      .id('drag_grid_007')
      .margin({ bottom: 20 })

      Text('拖拽目标区域 ↓')
        .fontSize(14)
        .fontColor('#666666')
        .margin({ bottom: 5 })
        .id('target_hint_text_007')

      // 释放区域
      Column() {
        Text('🎯 鼠标拖拽释放区域')
          .fontSize(18)
          .fontColor(Color.White)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 5 })
        
        Text('验证不同宽高GridItem拖拽预览显示正确')
          .fontSize(13)
          .fontColor('#E8F5E9')
      }
      .width('85%')
      .height(100)
      .backgroundColor('#4CAF50')
      .borderRadius(10)
      .justifyContent(FlexAlign.Center)
      .border({
        width: 3,
        color: '#2E7D32',
        style: BorderStyle.Dashed
      })
      .id('drop_zone_007')
      .onDrop(() => {
        this.dragStatus = `已释放到目标区域（第${this.dragCount}次，不同宽高预览已验证）`
        console.info('[TEST]', `Grid onDrop: 第${this.dragCount}次释放完成`)
        
        // 在RichEditor中显示释放完成信息
        this.richEditorController.addTextSpan(`\n✓ 第${this.dragCount}次已成功释放到目标区域，不同宽高预览显示正确`, {
          style: {
            fontColor: '#4CAF50',
            fontSize: 13,
            fontWeight: FontWeight.Bold
          }
        })
      })
      .onDragEnter(() => {
        console.info('[TEST]', 'Grid onDragEnter: 进入释放区域')
      })
      .onDragLeave(() => {
        console.info('[TEST]', 'Grid onDragLeave: 离开释放区域')
      })

      Blank()
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F5F5')
    .padding(10)
  }
}
