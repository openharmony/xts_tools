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
struct CustomizeGatherOrNot009 {
  @State items: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
  @State selectedItems: Set<number> = new Set()
  @State dragStatus: string = '等待操作'
  @State testStarted: boolean = false
  @State dragCount: number = 0
  @State itemOpacities: Map<number, number> = new Map()
  @State itemBackgroundColors: Map<number, string> = new Map()
  @State draggingItemIndex: number = -1
  private richEditorController: RichEditorController = new RichEditorController()

  aboutToAppear() {
    // 初始化所有GridItem的透明度和背景色
    this.items.forEach((item, index) => {
      this.itemOpacities.set(index, 1.0)
      this.itemBackgroundColors.set(index, '#2196F3')
    })
  }

  build() {
    Column() {
      Text('Grid组件onDragStart改变样式测试')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20, bottom: 10 })
        .id('title_text_009')

      Text(`当前状态: ${this.dragStatus}`)
        .fontSize(16)
        .margin({ bottom: 10 })
        .id('drag_status_text_009')

      Text(`已选中: ${this.selectedItems.size} 项 | 拖拽次数: ${this.dragCount}`)
        .fontSize(16)
        .margin({ bottom: 5 })
        .id('selected_count_text_009')

      Button('点击Grid组件测试')
        .width('80%')
        .height(50)
        .fontSize(18)
        .margin({ bottom: 15 })
        .id('test_button_009')
        .onClick(() => {
          this.testStarted = true
          this.dragStatus = '已点击测试按钮，已自动选中GridItem'
          // 自动选中几个相邻和不相邻的GridItem
          this.selectedItems.clear()
          this.selectedItems.add(1)   // 第2项（第1行第2列）
          this.selectedItems.add(2)   // 第3项（第1行第3列）相邻
          this.selectedItems.add(5)   // 第6项（第2行第2列）
          this.selectedItems.add(9)   // 第10项（第3行第2列）不相邻
          this.selectedItems.add(13)  // 第14项（第4行第2列）不相邻
          
          // 更新选中GridItem的背景色
          this.selectedItems.forEach(index => {
            this.itemBackgroundColors.set(index, '#FF6200EE')
          })
          
          // 更新RichEditor显示当前状态
          this.richEditorController.addTextSpan('\n\n当前操作：已选中GridItem（第2、3、6、10、14项，包含相邻和不相邻）\n现在可以通过鼠标进行连续拖拽，观察onDragStart中改变样式的效果', {
            style: {
              fontColor: '#7B1FA2',
              fontSize: 13,
              fontWeight: FontWeight.Bold
            }
          })
        })

      Text('操作提示：拖拽时原组件透明度将降低为0.4，背景色变为灰色')
        .fontSize(12)
        .fontColor('#666666')
        .margin({ bottom: 10 })
        .id('hint_text_009')

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
                .fontSize(this.selectedItems.has(index) ? 24 : 20)
                .fontColor(Color.White)
                .fontWeight(FontWeight.Bold)
              
              // 显示当前透明度
              if (this.draggingItemIndex === index) {
                Text(`透明度: ${this.itemOpacities.get(index)?.toFixed(1) || '1.0'}`)
                  .fontSize(10)
                  .fontColor(Color.Yellow)
                  .margin({ top: 3 })
              }
            }
            .width('100%')
            .height('100%')
            .justifyContent(FlexAlign.Center)
            .backgroundColor(this.itemBackgroundColors.get(index) || '#2196F3')
            .borderRadius(8)
            .border({
              width: this.selectedItems.has(index) ? 4 : 1,
              color: this.selectedItems.has(index) ? Color.Orange : '#90CAF9'
            })
            .opacity(this.itemOpacities.get(index) || 1.0)
            .shadow(this.selectedItems.has(index) ? {
              radius: 12,
              color: '#FF6200EE',
              offsetX: 0,
              offsetY: 2
            } : null)
          }
          .id(`grid_item_${index}_009`)
          .draggable(true)
          .dragPreviewOptions({
            mode: DragPreviewMode.ENABLE_MULTI_TILE_EFFECT
          })
          .selectable(true)
          .selected(this.selectedItems.has(index))
          .onClick(() => {
            if (this.selectedItems.has(index)) {
              this.selectedItems.delete(index)
              this.itemBackgroundColors.set(index, '#2196F3')
            } else {
              this.selectedItems.add(index)
              this.itemBackgroundColors.set(index, '#FF6200EE')
            }
            this.dragStatus = `选中/取消选中网格项${item}`
          })
          .onDragStart(() => {
            this.dragCount++
            this.draggingItemIndex = index
            
            // 在onDragStart中改变组件样式
            // 1. 降低透明度为0.4
            this.itemOpacities.set(index, 0.4)
            // 2. 改变背景色为灰色
            this.itemBackgroundColors.set(index, '#9E9E9E')
            
            this.dragStatus = `第${this.dragCount}次拖拽网格项${item}（透明度已改为0.4，背景色已改为灰色）`
            console.info('[TEST]', `GridItem ${item} onDragStart: 第${this.dragCount}次拖拽，透明度改为0.4，背景色改为灰色`)
            
            // 在RichEditor中显示拖拽效果观察提示
            this.richEditorController.addTextSpan(`\n\n【第${this.dragCount}次拖拽】正在拖拽网格项${item}，onDragStart已执行：\n• 透明度：1.0 → 0.4\n• 背景色：原色 → 灰色(#9E9E9E)\n请观察：\n1. 拖拽效果是否为非聚拢\n2. 鼠标光标是否位于拖拽预览图中间\n3. 拖拽预览图大小是否与原组件一致\n4. 拖拽动效是否流畅\n5. 原组件样式改变是否正确`, {
              style: {
                fontColor: '#E65100',
                fontSize: 11,
                fontWeight: FontWeight.Bold
              }
            })
          })
          .onDragEnd(() => {
            // 在onDragEnd中恢复组件样式
            this.itemOpacities.set(index, 1.0)
            if (this.selectedItems.has(index)) {
              this.itemBackgroundColors.set(index, '#FF6200EE')
            } else {
              this.itemBackgroundColors.set(index, '#2196F3')
            }
            this.draggingItemIndex = -1
            
            this.dragStatus = `第${this.dragCount}次拖拽结束（样式已恢复）`
            console.info('[TEST]', `GridItem ${item} onDragEnd: 第${this.dragCount}次拖拽结束，样式已恢复`)
            
            // 在RichEditor中显示拖拽结束信息
            this.richEditorController.addTextSpan(`\n【第${this.dragCount}次拖拽完成】样式已恢复，原组件样式改变正确✓`, {
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
      .id('drag_grid_009')
      .margin({ bottom: 20 })

      Text('拖拽目标区域 ↓')
        .fontSize(14)
        .fontColor('#666666')
        .margin({ bottom: 5 })
        .id('target_hint_text_009')

      // 释放区域
      Column() {
        Text('🎯 鼠标拖拽释放区域')
          .fontSize(18)
          .fontColor(Color.White)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 5 })
        
        Text('验证onDragStart中改变样式的效果')
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
      .id('drop_zone_009')
      .onDrop(() => {
        this.dragStatus = `已释放到目标区域（第${this.dragCount}次，样式改变已验证）`
        console.info('[TEST]', `Grid onDrop: 第${this.dragCount}次释放完成`)
        
        // 在RichEditor中显示释放完成信息
        this.richEditorController.addTextSpan(`\n✓ 第${this.dragCount}次已成功释放到目标区域，原组件样式改变正确`, {
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
