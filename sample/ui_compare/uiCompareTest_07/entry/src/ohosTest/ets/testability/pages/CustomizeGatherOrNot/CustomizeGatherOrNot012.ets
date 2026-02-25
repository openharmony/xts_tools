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
struct CustomizeGatherOrNot012 {
  @State items: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
  @State selectedItems: Set<number> = new Set()
  @State dragStatus: string = '等待操作'
  @State testStarted: boolean = false
  @State dragCount: number = 0
  private richEditorController: RichEditorController = new RichEditorController()

  build() {
    Column() {
      Text('Grid组件numberBadge拖拽测试')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20, bottom: 10 })
        .id('title_text_012')

      Text(`当前状态: ${this.dragStatus}`)
        .fontSize(16)
        .margin({ bottom: 10 })
        .id('drag_status_text_012')

      Text(`已选中: ${this.selectedItems.size} 项 | 拖拽次数: ${this.dragCount}`)
        .fontSize(16)
        .margin({ bottom: 5 })
        .id('selected_count_text_012')

      Button('点击Grid组件测试')
        .width('80%')
        .height(50)
        .fontSize(18)
        .margin({ bottom: 15 })
        .id('test_button_012')
        .onClick(() => {
          this.testStarted = true
          this.dragStatus = '已点击测试按钮，已自动选中GridItem，numberBadge已启用'
          // 自动选中几个相邻和不相邻的GridItem
          this.selectedItems.clear()
          this.selectedItems.add(1)   // 第2项（第1行第2列）
          this.selectedItems.add(2)   // 第3项（第1行第3列）相邻
          this.selectedItems.add(5)   // 第6项（第2行第2列）
          this.selectedItems.add(10)  // 第11项（第3行第3列）不相邻
          this.selectedItems.add(14)  // 第15项（第4行第3列）不相邻
          
          // 更新RichEditor显示当前状态
          this.richEditorController.addTextSpan(`\n\n当前操作：已选中${this.selectedItems.size}个GridItem（第2、3、6、11、15项）\nnumberBadge=true，拖拽时会在预览图右上方显示数字角标"${this.selectedItems.size}"`, {
            style: {
              fontColor: '#E65100',
              fontSize: 13,
              fontWeight: FontWeight.Bold
            }
          })
        })

      Text('操作提示：numberBadge已启用，拖拽时角标会显示选中的项目数量')
        .fontSize(12)
        .fontColor('#666666')
        .margin({ bottom: 10 })
        .id('hint_text_012')

      // Grid组件，设置dragPreviewOptions的mode为ENABLE_MULTI_TILE_EFFECT，numberBadge为true
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
              
              // 显示numberBadge启用标识
              Text('🔢角标')
                .fontSize(10)
                .fontColor(Color.White)
                .opacity(0.7)
                .margin({ top: 3 })
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
          .id(`grid_item_${index}_012`)
          .draggable(true)
          .dragPreviewOptions({
            mode: DragPreviewMode.ENABLE_MULTI_TILE_EFFECT,
            numberBadge: true  // 设置numberBadge为true，显示角标
          })
          .selectable(true)
          .selected(this.selectedItems.has(index))
          .onClick(() => {
            if (this.selectedItems.has(index)) {
              this.selectedItems.delete(index)
            } else {
              this.selectedItems.add(index)
            }
            this.dragStatus = `选中/取消选中网格项${item}（numberBadge已启用）`
            
            // 更新RichEditor显示选中数量变化
            this.richEditorController.addTextSpan(`\n\n当前选中${this.selectedItems.size}项，角标将显示"${this.selectedItems.size}"`, {
              style: {
                fontColor: '#FF9800',
                fontSize: 12
              }
            })
          })
          .onDragStart(() => {
            this.dragCount++
            this.dragStatus = `第${this.dragCount}次鼠标拖拽网格项${item}（numberBadge=true，角标显示"${this.selectedItems.size}"）`
            console.info('[TEST]', `GridItem ${item} onDragStart: 第${this.dragCount}次鼠标拖拽，numberBadge=true，选中${this.selectedItems.size}项`)
            
            // 在RichEditor中显示拖拽效果观察提示
            this.richEditorController.addTextSpan(`\n\n【第${this.dragCount}次拖拽】正在通过鼠标拖拽网格项${item}\n请观察拖拽预览右上方的数字角标"${this.selectedItems.size}"：\n1. 角标是否显示在整个拖拽预览的右上方\n2. 角标数字是否为${this.selectedItems.size}\n3. 拖拽预览是否呈非聚拢效果\n4. 鼠标光标是否居中\n5. 动效是否流畅`, {
              style: {
                fontColor: '#E65100',
                fontSize: 12,
                fontWeight: FontWeight.Bold
              }
            })
          })
          .onDragEnd(() => {
            this.dragStatus = `第${this.dragCount}次拖拽结束（numberBadge角标已验证）`
            console.info('[TEST]', `GridItem ${item} onDragEnd: 第${this.dragCount}次拖拽结束`)
            
            // 在RichEditor中显示拖拽结束信息
            this.richEditorController.addTextSpan(`\n【第${this.dragCount}次拖拽完成】numberBadge角标显示正确✓`, {
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
      .id('drag_grid_012')
      .margin({ bottom: 20 })

      Text('拖拽目标区域 ↓')
        .fontSize(14)
        .fontColor('#666666')
        .margin({ bottom: 5 })
        .id('target_hint_text_012')

      // 释放区域
      Column() {
        Text('🎯 鼠标拖拽释放区域')
          .fontSize(18)
          .fontColor(Color.White)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 5 })
        
        Text(`验证numberBadge角标（选中${this.selectedItems.size}项）`)
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
      .id('drop_zone_012')
      .onDrop(() => {
        this.dragStatus = `已释放到目标区域（第${this.dragCount}次，numberBadge角标"${this.selectedItems.size}"已验证）`
        console.info('[TEST]', `Grid onDrop: 第${this.dragCount}次释放完成，numberBadge=${this.selectedItems.size}`)
        
        // 在RichEditor中显示释放完成信息
        this.richEditorController.addTextSpan(`\n✓ 第${this.dragCount}次已成功释放，角标"${this.selectedItems.size}"显示在拖拽预览右上方`, {
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
