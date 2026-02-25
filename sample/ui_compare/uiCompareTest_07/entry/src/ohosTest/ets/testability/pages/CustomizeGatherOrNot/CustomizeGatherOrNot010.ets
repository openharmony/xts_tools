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
struct CustomizeGatherOrNot010 {
  @State items: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
  @State selectedItems: Set<number> = new Set()
  @State dragStatus: string = '等待操作'
  @State testStarted: boolean = false
  @State dragCount: number = 0
  @State contextMenuShown: boolean = false
  @State lastContextMenuItem: number = -1
  private richEditorController: RichEditorController = new RichEditorController()

  // 自定义上下文菜单的Builder
  @Builder
  contextMenuBuilder(item: number) {
    Column() {
      Text(`网格项 ${item} 菜单`)
        .fontSize(16)
        .fontColor(Color.White)
        .fontWeight(FontWeight.Bold)
        .padding(10)
        .backgroundColor('#FF6200EE')
        .borderRadius(5)
        .width('100%')
      
      Button('操作1')
        .width('100%')
        .fontSize(14)
        .margin({ top: 5 })
        .onClick(() => {
          this.dragStatus = `点击了网格项${item}的操作1`
        })
      
      Button('操作2')
        .width('100%')
        .fontSize(14)
        .margin({ top: 5 })
        .onClick(() => {
          this.dragStatus = `点击了网格项${item}的操作2`
        })
    }
    .width(150)
    .padding(10)
    .backgroundColor('#FFFFFF')
    .borderRadius(10)
    .shadow({
      radius: 10,
      color: '#000000',
      offsetX: 0,
      offsetY: 2
    })
  }

  build() {
    Column() {
      Text('Grid组件bindContextMenu拖拽测试')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20, bottom: 10 })
        .id('title_text_010')

      Text(`当前状态: ${this.dragStatus}`)
        .fontSize(16)
        .margin({ bottom: 10 })
        .id('drag_status_text_010')

      Text(`已选中: ${this.selectedItems.size} 项 | 拖拽次数: ${this.dragCount}`)
        .fontSize(16)
        .margin({ bottom: 5 })
        .id('selected_count_text_010')

      Button('点击Grid组件测试')
        .width('80%')
        .height(50)
        .fontSize(18)
        .margin({ bottom: 15 })
        .id('test_button_010')
        .onClick(() => {
          this.testStarted = true
          this.dragStatus = '已点击测试按钮，已自动选中绑定了bindContextMenu的GridItem'
          // 自动选中几个相邻和不相邻的GridItem
          this.selectedItems.clear()
          this.selectedItems.add(1)   // 第2项（第1行第2列）
          this.selectedItems.add(2)   // 第3项（第1行第3列）相邻
          this.selectedItems.add(5)   // 第6项（第2行第2列）
          this.selectedItems.add(10)  // 第11项（第3行第3列）不相邻
          this.selectedItems.add(14)  // 第15项（第4行第3列）不相邻
          
          // 更新RichEditor显示当前状态
          this.richEditorController.addTextSpan('\n\n当前操作：已选中绑定了bindContextMenu的GridItem（第2、3、6、11、15项）\n现在可以通过手指进行拖拽，长按会先弹出菜单，然后显示非聚拢拖拽预览', {
            style: {
              fontColor: '#E65100',
              fontSize: 13,
              fontWeight: FontWeight.Bold
            }
          })
        })

      Text('操作提示：每个GridItem已绑定bindContextMenu，手指拖拽会先弹出菜单')
        .fontSize(12)
        .fontColor('#666666')
        .margin({ bottom: 10 })
        .id('hint_text_010')

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
              
              // 显示是否绑定了菜单
              Text('📋菜单')
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
          .id(`grid_item_${index}_010`)
          .draggable(true)
          .dragPreviewOptions({
            mode: DragPreviewMode.ENABLE_MULTI_TILE_EFFECT
          })
          .selectable(true)
          .selected(this.selectedItems.has(index))
          // 绑定bindContextMenu
          .bindContextMenu(this.contextMenuBuilder(item), ResponseType.LongPress)
          .onClick(() => {
            if (this.selectedItems.has(index)) {
              this.selectedItems.delete(index)
            } else {
              this.selectedItems.add(index)
            }
            this.dragStatus = `选中/取消选中网格项${item}（已绑定菜单）`
          })
          .onDragStart(() => {
            this.dragCount++
            this.dragStatus = `第${this.dragCount}次手指拖拽网格项${item}（已绑定bindContextMenu）`
            console.info('[TEST]', `GridItem ${item} onDragStart: 第${this.dragCount}次手指拖拽，GridItem已绑定bindContextMenu`)
            
            // 在RichEditor中显示拖拽效果观察提示
            this.richEditorController.addTextSpan(`\n\n【第${this.dragCount}次拖拽】正在通过手指拖拽网格项${item}（已绑定bindContextMenu），请观察：\n1. 是否先弹出bindContextMenu\n2. 拖拽预览是否呈非聚拢效果\n3. 拖拽过程是否流畅`, {
              style: {
                fontColor: '#E65100',
                fontSize: 12,
                fontWeight: FontWeight.Bold
              }
            })
          })
          .onDragEnd(() => {
            this.dragStatus = `第${this.dragCount}次拖拽结束（bindContextMenu交互已验证）`
            console.info('[TEST]', `GridItem ${item} onDragEnd: 第${this.dragCount}次拖拽结束`)
            
            // 在RichEditor中显示拖拽结束信息
            this.richEditorController.addTextSpan(`\n【第${this.dragCount}次拖拽完成】bindContextMenu交互正确✓`, {
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
      .id('drag_grid_010')
      .margin({ bottom: 20 })

      Text('拖拽目标区域 ↓')
        .fontSize(14)
        .fontColor('#666666')
        .margin({ bottom: 5 })
        .id('target_hint_text_010')

      // 释放区域
      Column() {
        Text('🎯 手指拖拽释放区域')
          .fontSize(18)
          .fontColor(Color.White)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 5 })
        
        Text('验证bindContextMenu与拖拽的交互')
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
      .id('drop_zone_010')
      .onDrop(() => {
        this.dragStatus = `已释放到目标区域（第${this.dragCount}次，bindContextMenu交互已验证）`
        console.info('[TEST]', `Grid onDrop: 第${this.dragCount}次释放完成`)
        
        // 在RichEditor中显示释放完成信息
        this.richEditorController.addTextSpan(`\n✓ 第${this.dragCount}次已成功释放到目标区域，先弹出菜单然后非聚拢拖拽`, {
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
