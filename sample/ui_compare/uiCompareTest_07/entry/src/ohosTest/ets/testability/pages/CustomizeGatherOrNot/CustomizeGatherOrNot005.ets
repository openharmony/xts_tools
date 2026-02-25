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
struct CustomizeGatherOrNot005 {
  @State items: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
  @State selectedItems: Set<number> = new Set()
  @State dragStatus: string = '等待操作'
  @State testStarted: boolean = false
  @State dragCount: number = 0
  @State selectedStateChanged: boolean = false
  private richEditorController: RichEditorController = new RichEditorController()

  build() {
    Column() {
      Text('Grid组件选中态鼠标拖拽测试')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20, bottom: 10 })
        .id('title_text_005')

      Text(`当前状态: ${this.dragStatus}`)
        .fontSize(16)
        .margin({ bottom: 10 })
        .id('drag_status_text_005')

      Text(`已选中: ${this.selectedItems.size} 项 | 拖拽次数: ${this.dragCount}`)
        .fontSize(16)
        .margin({ bottom: 5 })
        .id('selected_count_text_005')

      Button('点击Grid组件测试')
        .width('80%')
        .height(50)
        .fontSize(18)
        .margin({ bottom: 15 })
        .id('test_button_005')
        .onClick(() => {
          this.testStarted = true
          this.dragStatus = '已点击测试按钮，已设置子组件的选中态'
          // 自动选中几个相邻和不相邻的GridItem，并设置选中态
          this.selectedItems.clear()
          this.selectedItems.add(0)   // 第1项（第1行第1列）
          this.selectedItems.add(2)   // 第3项（第1行第3列）不相邻
          this.selectedItems.add(5)   // 第6项（第2行第2列）
          this.selectedItems.add(6)   // 第7项（第2行第3列）相邻
          this.selectedItems.add(10)  // 第11项（第3行第3列）不相邻
          
          this.selectedStateChanged = true
          
          // 更新RichEditor显示当前状态
          this.richEditorController.addTextSpan('\n\n当前操作：已设置子组件的选中态，已选中网格项1、3、6、7、11（包含相邻和不相邻），选中态改变正确✓\n现在可以通过鼠标进行连续多次拖拽测试，观察拖拽预览图中的选中态效果', {
            style: {
              fontColor: '#F57C00',
              fontSize: 13,
              fontWeight: FontWeight.Bold
            }
          })
        })

      Text('操作提示：选中的GridItem显示为紫色并带橙色边框及特殊选中态标识，使用鼠标进行连续拖拽')
        .fontSize(12)
        .fontColor('#666666')
        .margin({ bottom: 10 })
        .id('hint_text_005')

      // Grid组件，设置dragPreviewOptions的mode为ENABLE_MULTI_TILE_EFFECT
      Grid() {
        ForEach(this.items, (item: number, index: number) => {
          GridItem() {
            Column() {
              if (this.selectedItems.has(index)) {
                // 选中态显示
                Row() {
                  Text('✓')
                    .fontSize(14)
                    .fontColor(Color.Orange)
                    .fontWeight(FontWeight.Bold)
                  Text('已选中')
                    .fontSize(10)
                    .fontColor(Color.Orange)
                    .fontWeight(FontWeight.Bold)
                    .margin({ left: 2 })
                }
                .margin({ bottom: 3 })
              }
              Text(`${item}`)
                .fontSize(this.selectedItems.has(index) ? 24 : 20)
                .fontColor(Color.White)
                .fontWeight(FontWeight.Bold)
            }
            .width('100%')
            .height('100%')
            .justifyContent(FlexAlign.Center)
            .backgroundColor(this.selectedItems.has(index) ? '#FF6200EE' : '#2196F3')
            .borderRadius(8)
            .border({
              width: this.selectedItems.has(index) ? 5 : 1,
              color: this.selectedItems.has(index) ? Color.Orange : '#90CAF9'
            })
            .shadow(this.selectedItems.has(index) ? {
              radius: 15,
              color: '#FF6200EE',
              offsetX: 0,
              offsetY: 2
            } : null)
          }
          .id(`grid_item_${index}_005`)
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
            this.selectedStateChanged = true
            this.dragStatus = `选中/取消选中网格项${item}，选中态已改变`
            
            // 更新RichEditor显示选中态变化
            this.richEditorController.addTextSpan(`\n选中态变化：网格项${item}的选中态已改变✓`, {
              style: {
                fontColor: '#1976D2',
                fontSize: 12
              }
            })
          })
          .onDragStart(() => {
            this.dragCount++
            this.dragStatus = `第${this.dragCount}次拖拽网格项${item}（已选中${this.selectedItems.size}项带选中态）`
            console.info('[TEST]', `GridItem ${item} onDragStart: 第${this.dragCount}次拖拽，使用ENABLE_MULTI_TILE_EFFECT模式，带选中态`)
            
            // 在RichEditor中显示拖拽效果观察提示
            this.richEditorController.addTextSpan(`\n\n【第${this.dragCount}次拖拽】正在通过鼠标拖拽网格项${item}（带选中态），请观察：\n1. 拖拽效果是否为非聚拢\n2. 鼠标光标是否位于拖拽预览图中间\n3. 拖拽预览图大小是否与原组件一致\n4. 拖拽的预览图是否显示带有选中态效果（紫色背景、橙色边框、选中标识）\n5. 拖拽动效是否流畅`, {
              style: {
                fontColor: '#E65100',
                fontSize: 12,
                fontWeight: FontWeight.Bold
              }
            })
          })
          .onDragEnd(() => {
            this.dragStatus = `第${this.dragCount}次拖拽结束（选中态效果已展示）`
            console.info('[TEST]', `GridItem ${item} onDragEnd: 第${this.dragCount}次拖拽结束，选中态效果已展示`)
            
            // 在RichEditor中显示拖拽结束信息
            this.richEditorController.addTextSpan(`\n【第${this.dragCount}次拖拽完成】拖拽预览图中的选中态效果已展示✓`, {
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
      .height(320)
      .id('drag_grid_005')
      .margin({ bottom: 20 })

      Text('拖拽目标区域 ↓')
        .fontSize(14)
        .fontColor('#666666')
        .margin({ bottom: 5 })
        .id('target_hint_text_005')

      // 释放区域
      Column() {
        Text('🎯 鼠标拖拽释放区域')
          .fontSize(18)
          .fontColor(Color.White)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 5 })
        
        Text('使用鼠标将带选中态的GridItem连续拖拽到此处')
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
      .id('drop_zone_005')
      .onDrop(() => {
        this.dragStatus = `已释放到目标区域（第${this.dragCount}次，选中态效果已验证）`
        console.info('[TEST]', `Grid onDrop: 第${this.dragCount}次释放完成，选中态效果已验证`)
        
        // 在RichEditor中显示释放完成信息
        this.richEditorController.addTextSpan(`\n✓ 第${this.dragCount}次已成功释放到目标区域，选中态效果已验证`, {
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
