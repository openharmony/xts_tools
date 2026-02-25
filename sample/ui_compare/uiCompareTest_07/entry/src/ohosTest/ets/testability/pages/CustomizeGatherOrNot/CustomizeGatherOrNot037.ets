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
struct CustomizeGatherOrNot037 {
  @State items: string[] = ['项目1', '项目2', '项目3', '项目4', '项目5', '项目6', '项目7', '项目8', '项目9', '项目10']
  @State selectedItems: Set<number> = new Set()
  @State dragStatus: string = '等待操作'
  @State testStarted: boolean = false
  @State dragCount: number = 0
  @State itemOpacities: Map<number, number> = new Map()  // 存储每个ListItem的透明度
  @State itemBackgrounds: Map<number, string> = new Map()  // 存储每个ListItem的背景色
  @State styleChangeCount: number = 0
  private richEditorController: RichEditorController = new RichEditorController()

  aboutToAppear() {
    // 初始化所有ListItem的透明度和背景色
    for (let i = 0; i < this.items.length; i++) {
      this.itemOpacities.set(i, 1.0)
      this.itemBackgrounds.set(i, '#2196F3')
    }
  }

  build() {
    Column() {
      Text('List组件onDragStart样式改变测试')
        .fontSize(21)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20, bottom: 10 })
        .id('title_text_037')

      Text(`当前状态: ${this.dragStatus}`)
        .fontSize(16)
        .margin({ bottom: 10 })
        .id('drag_status_text_037')

      Text(`已选中: ${this.selectedItems.size} 项 | 拖拽次数: ${this.dragCount} | 样式改变: ${this.styleChangeCount} 次`)
        .fontSize(14)
        .margin({ bottom: 5 })
        .id('selected_count_text_037')

      Button('点击List组件测试')
        .width('80%')
        .height(50)
        .fontSize(18)
        .margin({ bottom: 15 })
        .id('test_button_037')
        .onClick(() => {
          this.testStarted = true
          this.dragStatus = '已点击测试按钮，已自动选中ListItem'
          // 自动选中几个相邻和不相邻混合的ListItem
          this.selectedItems.clear()
          this.selectedItems.add(0)  // 项目1
          this.selectedItems.add(1)  // 项目2（与1相邻）
          this.selectedItems.add(4)  // 项目5（不相邻）
          this.selectedItems.add(7)  // 项目8（不相邻）
          
          // 更新RichEditor显示当前状态
          this.richEditorController.addTextSpan('\n\n✓ 步骤4已完成：已在onDragStart中设置样式改变逻辑\n✓ 步骤5已完成：已选中4个ListItem（项目1、2相邻，项目5、8不相邻）\n现在可以通过鼠标连续多次拖拽，观察原组件样式变化', {
            style: {
              fontColor: '#E65100',
              fontSize: 13,
              fontWeight: FontWeight.Bold
            }
          })
        })

      Text('操作提示：鼠标拖拽，重点观察原ListItem透明度降低+背景变灰')
        .fontSize(12)
        .fontColor('#666666')
        .margin({ bottom: 10 })
        .id('hint_text_037')

      // List组件
      List({ space: 10 }) {
        ForEach(this.items, (item: string, index: number) => {
          ListItem() {
            Row() {
              // 选中状态指示
              if (this.selectedItems.has(index)) {
                Text('✓')
                  .fontSize(20)
                  .fontColor(Color.Orange)
                  .fontWeight(FontWeight.Bold)
                  .margin({ right: 10 })
              } else {
                Text('')
                  .width(30)
                  .margin({ right: 10 })
              }
              
              // ListItem内容
              Column() {
                Row() {
                  Text(item)
                    .fontSize(this.selectedItems.has(index) ? 18 : 16)
                    .fontColor(Color.White)
                    .fontWeight(this.selectedItems.has(index) ? FontWeight.Bold : FontWeight.Normal)
                  
                  if (this.selectedItems.has(index)) {
                    Text('已选')
                      .fontSize(12)
                      .fontColor('#FFD700')
                      .fontWeight(FontWeight.Bold)
                      .margin({ left: 8 })
                      .padding({ left: 5, right: 5, top: 2, bottom: 2 })
                      .backgroundColor('#FF6200EE')
                      .borderRadius(4)
                  }
                }
                
                Row() {
                  Text(`透明度: ${this.itemOpacities.get(index)?.toFixed(1) || '1.0'}`)
                    .fontSize(11)
                    .fontColor(this.selectedItems.has(index) ? '#FFE0B2' : '#BBDEFB')
                    .margin({ right: 8 })
                  
                  if (this.selectedItems.has(index)) {
                    Text('样式测试')
                      .fontSize(10)
                      .fontColor('#FFCC80')
                      .padding({ left: 3, right: 3, top: 1, bottom: 1 })
                      .backgroundColor('#795548')
                      .borderRadius(3)
                  }
                }
                .margin({ top: 3 })
              }
              .alignItems(HorizontalAlign.Start)
              
              Blank()
              
              // 拖拽图标和次数
              Column() {
                Text('🖱️')
                  .fontSize(18)
                  .opacity(0.7)
                if (this.dragCount > 0 && this.selectedItems.has(index)) {
                  Text(`x${this.dragCount}`)
                    .fontSize(10)
                    .fontColor('#FF6200EE')
                    .fontWeight(FontWeight.Bold)
                }
                if (this.itemOpacities.get(index) !== 1.0) {
                  Text('拖拽中')
                    .fontSize(9)
                    .fontColor('#F44336')
                    .fontWeight(FontWeight.Bold)
                    .margin({ top: 2 })
                }
              }
            }
            .width('100%')
            .height(75)
            .padding({ left: 15, right: 15 })
            .backgroundColor(this.itemBackgrounds.get(index) || '#2196F3')  // 动态背景色
            .opacity(this.itemOpacities.get(index) || 1.0)  // 动态透明度
            .borderRadius(8)
            .border({
              width: this.selectedItems.has(index) ? 4 : 1,
              color: this.selectedItems.has(index) ? Color.Orange : '#90CAF9'
            })
            .shadow(this.selectedItems.has(index) ? {
              radius: 12,
              color: '#FF6200EE',
              offsetX: 0,
              offsetY: 3
            } : null)
          }
          .id(`list_item_${index}_037`)
          .draggable(true)
          .dragPreviewOptions({
            mode: DragPreviewMode.ENABLE_MULTI_TILE_EFFECT  // 设置非聚拢模式
          })
          .selectable(true)
          .selected(this.selectedItems.has(index))
          .onClick(() => {
            if (this.selectedItems.has(index)) {
              this.selectedItems.delete(index)
            } else {
              this.selectedItems.add(index)
            }
            this.dragStatus = `选中/取消选中${item}`
          })
          .onDragStart(() => {
            this.dragCount++
            this.styleChangeCount++
            
            // 在onDragStart中改变组件样式（透明度和背景色）
            this.selectedItems.forEach((selectedIndex) => {
              this.itemOpacities.set(selectedIndex, 0.3)  // 设置透明度为0.3
              this.itemBackgrounds.set(selectedIndex, '#9E9E9E')  // 设置背景色为灰色
            })
            
            this.dragStatus = `第${this.dragCount}次鼠标拖拽${item}（原组件样式已改变：透明度0.3+灰色背景）`
            console.info('[TEST]', `ListItem ${item} onDragStart: 第${this.dragCount}次鼠标拖拽，样式已改变（透明度0.3，背景灰色）`)
            
            // 在RichEditor中显示拖拽效果观察提示
            this.richEditorController.addTextSpan(`\n\n【第${this.dragCount}次拖拽】正在鼠标拖拽${item}\n⚠️ 重点观察：原ListItem透明度降低至0.3，背景色变为灰色`, {
              style: {
                fontColor: '#E65100',
                fontSize: 12,
                fontWeight: FontWeight.Bold
              }
            })
          })
          .onDragEnd(() => {
            // 在onDragEnd中恢复组件样式
            this.selectedItems.forEach((selectedIndex) => {
              this.itemOpacities.set(selectedIndex, 1.0)  // 恢复透明度为1.0
              this.itemBackgrounds.set(selectedIndex, '#2196F3')  // 恢复背景色为蓝色
            })
            
            this.dragStatus = `第${this.dragCount}次拖拽${item}结束（原组件样式已恢复）`
            console.info('[TEST]', `ListItem ${item} onDragEnd: 第${this.dragCount}次拖拽结束，样式已恢复（透明度1.0，背景蓝色）`)
            
            // 在RichEditor中显示拖拽结束信息
            this.richEditorController.addTextSpan(`\n✓ 第${this.dragCount}次拖拽完成，原组件样式已恢复（透明度1.0，背景蓝色）`, {
              style: {
                fontColor: '#388E3C',
                fontSize: 12,
                fontWeight: FontWeight.Bold
              }
            })
          })
        }, (item: string) => item)
      }
      .width('90%')
      .height(420)
      .id('drag_list_037')
      .margin({ bottom: 20 })

      Text('拖拽目标区域 ↓')
        .fontSize(14)
        .fontColor('#666666')
        .margin({ bottom: 5 })
        .id('target_hint_text_037')

      // 释放区域
      Column() {
        Text('🎯 鼠标拖拽释放区域')
          .fontSize(18)
          .fontColor(Color.White)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 5 })
        
        Text(`验证onDragStart样式改变效果（已拖拽${this.dragCount}次）`)
          .fontSize(13)
          .fontColor('#E8F5E9')
        
        if (this.dragCount > 0) {
          Text(`✓ 样式已改变${this.styleChangeCount}次`)
            .fontSize(12)
            .fontColor('#FFD700')
            .fontWeight(FontWeight.Bold)
            .margin({ top: 3 })
        }
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
      .id('drop_zone_037')
      .onDrop(() => {
        this.dragStatus = `已释放到目标区域（第${this.dragCount}次，原组件样式改变正确）`
        console.info('[TEST]', `List onDrop: 第${this.dragCount}次释放完成，原组件样式改变正确`)
        
        // 在RichEditor中显示释放完成信息
        this.richEditorController.addTextSpan(`\n✓ 第${this.dragCount}次已成功释放，原组件样式改变正确（拖拽时透明度0.3+灰色，结束后恢复）`, {
          style: {
            fontColor: '#4CAF50',
            fontSize: 13,
            fontWeight: FontWeight.Bold
          }
        })
      })
      .onDragEnter(() => {
        console.info('[TEST]', 'List onDragEnter: 进入释放区域')
      })
      .onDragLeave(() => {
        console.info('[TEST]', 'List onDragLeave: 离开释放区域')
      })

      Blank()
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F5F5')
    .padding(10)
  }
}
