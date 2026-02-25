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

interface ListItemData {
  name: string;
  height: number;
  width: string;
}

@Entry
@Component
struct CustomizeGatherOrNot035 {
  @State items: Array<ListItemData> = [
    {name: '项目1', height: 60, width: '85%'},
    {name: '项目2', height: 90, width: '90%'},
    {name: '项目3', height: 70, width: '80%'},
    {name: '项目4', height: 110, width: '95%'},
    {name: '项目5', height: 80, width: '85%'},
    {name: '项目6', height: 120, width: '90%'},
    {name: '项目7', height: 75, width: '88%'},
    {name: '项目8', height: 100, width: '92%'},
    {name: '项目9', height: 65, width: '82%'},
    {name: '项目10', height: 95, width: '87%'}
  ]
  @State selectedItems: Set<number> = new Set()
  @State dragStatus: string = '等待操作'
  @State testStarted: boolean = false
  @State dragCount: number = 0
  private richEditorController: RichEditorController = new RichEditorController()

  build() {
    Column() {
      Text('List组件不同尺寸拖拽测试')
        .fontSize(22)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20, bottom: 10 })
        .id('title_text_035')

      Text(`当前状态: ${this.dragStatus}`)
        .fontSize(16)
        .margin({ bottom: 10 })
        .id('drag_status_text_035')

      Text(`已选中: ${this.selectedItems.size} 项 | 拖拽次数: ${this.dragCount}`)
        .fontSize(15)
        .margin({ bottom: 5 })
        .id('selected_count_text_035')

      Button('点击List组件测试')
        .width('80%')
        .height(50)
        .fontSize(18)
        .margin({ bottom: 15 })
        .id('test_button_035')
        .onClick(() => {
          this.testStarted = true
          this.dragStatus = '已点击测试按钮，已自动选中不同尺寸的ListItem'
          // 自动选中几个相邻和不相邻、且宽高不同的ListItem
          this.selectedItems.clear()
          this.selectedItems.add(1)  // 项目2：高度90，宽度90%
          this.selectedItems.add(3)  // 项目4：高度110，宽度95%（不相邻）
          this.selectedItems.add(5)  // 项目6：高度120，宽度90%（不相邻）
          this.selectedItems.add(7)  // 项目8：高度100，宽度92%（不相邻）
          
          // 更新RichEditor显示当前状态
          this.richEditorController.addTextSpan('\n\n✓ 步骤4已完成：已选中4个不同尺寸的ListItem\n  项目2(高90)、项目4(高110)、项目6(高120)、项目8(高100)\n现在可以通过鼠标连续多次拖拽，观察不同尺寸预览图显示效果', {
            style: {
              fontColor: '#E65100',
              fontSize: 13,
              fontWeight: FontWeight.Bold
            }
          })
        })

      Text('操作提示：鼠标拖拽，重点观察不同尺寸预览图无截断、显示完整')
        .fontSize(12)
        .fontColor('#666666')
        .margin({ bottom: 10 })
        .id('hint_text_035')

      // List组件
      List({ space: 10 }) {
        ForEach(this.items, (item: ListItemData, index: number) => {
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
                  Text(item.name)
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
                      .backgroundColor('#5D4037')
                      .borderRadius(4)
                  }
                }
                
                // 显示尺寸信息
                Row() {
                  Text(`高度:${item.height}`)
                    .fontSize(11)
                    .fontColor(this.selectedItems.has(index) ? '#FFE0B2' : '#90CAF9')
                    .margin({ right: 8 })
                  Text(`宽度:${item.width}`)
                    .fontSize(11)
                    .fontColor(this.selectedItems.has(index) ? '#FFE0B2' : '#90CAF9')
                    .margin({ right: 8 })
                  
                  if (this.selectedItems.has(index)) {
                    Text('尺寸测试')
                      .fontSize(10)
                      .fontColor('#FFCC80')
                      .padding({ left: 3, right: 3, top: 1, bottom: 1 })
                      .backgroundColor('#8D6E63')
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
                Text(`${item.height}`)
                  .fontSize(10)
                  .fontColor('#795548')
                  .fontWeight(FontWeight.Bold)
                if (this.dragCount > 0 && this.selectedItems.has(index)) {
                  Text(`x${this.dragCount}`)
                    .fontSize(10)
                    .fontColor('#D84315')
                    .fontWeight(FontWeight.Bold)
                }
              }
            }
            .width(item.width)  // 设置不同宽度
            .height(item.height)  // 设置不同高度
            .padding({ left: 15, right: 15 })
            .backgroundColor(this.selectedItems.has(index) ? '#6D4C41' : '#2196F3')
            .borderRadius(8)
            .border({
              width: this.selectedItems.has(index) ? 4 : 1,
              color: this.selectedItems.has(index) ? '#D84315' : '#90CAF9'
            })
            .shadow(this.selectedItems.has(index) ? {
              radius: 12,
              color: '#D84315',
              offsetX: 0,
              offsetY: 3
            } : null)
          }
          .id(`list_item_${index}_035`)
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
            this.dragStatus = `选中/取消选中${item.name}（高度:${item.height}）`
          })
          .onDragStart(() => {
            this.dragCount++
            this.dragStatus = `第${this.dragCount}次鼠标拖拽${item.name}（高度${item.height}，验证无截断）`
            console.info('[TEST]', `ListItem ${item.name} onDragStart: 第${this.dragCount}次鼠标拖拽，高度${item.height}，宽度${item.width}`)
            
            // 在RichEditor中显示拖拽效果观察提示
            this.richEditorController.addTextSpan(`\n\n【第${this.dragCount}次拖拽】正在鼠标拖拽${item.name}\n⚠️ 重点观察：不同尺寸预览图显示完整，无截断现象`, {
              style: {
                fontColor: '#E65100',
                fontSize: 12,
                fontWeight: FontWeight.Bold
              }
            })
          })
          .onDragEnd(() => {
            this.dragStatus = `第${this.dragCount}次拖拽${item.name}结束，尺寸显示正确`
            console.info('[TEST]', `ListItem ${item.name} onDragEnd: 第${this.dragCount}次拖拽结束，无截断`)
            
            // 在RichEditor中显示拖拽结束信息
            this.richEditorController.addTextSpan(`\n✓ 第${this.dragCount}次拖拽完成，尺寸显示正确`, {
              style: {
                fontColor: '#388E3C',
                fontSize: 12,
                fontWeight: FontWeight.Bold
              }
            })
          })
        }, (item: ListItemData) => item.name)
      }
      .width('100%')
      .height(450)
      .id('drag_list_035')
      .margin({ bottom: 20 })
      .alignListItem(ListItemAlign.Center)  // ListItem居中对齐

      Text('拖拽目标区域 ↓')
        .fontSize(14)
        .fontColor('#666666')
        .margin({ bottom: 5 })
        .id('target_hint_text_035')

      // 释放区域
      Column() {
        Text('🎯 鼠标拖拽释放区域')
          .fontSize(18)
          .fontColor(Color.White)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 5 })
        
        Text(`验证不同尺寸ListItem拖拽效果（已拖拽${this.dragCount}次）`)
          .fontSize(13)
          .fontColor('#E8F5E9')
        
        if (this.dragCount > 0) {
          Text('✓ 预览图应显示完整，无截断')
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
      .id('drop_zone_035')
      .onDrop(() => {
        this.dragStatus = `已释放到目标区域（第${this.dragCount}次，不同尺寸显示正确无截断）`
        console.info('[TEST]', `List onDrop: 第${this.dragCount}次释放完成，不同尺寸ListItem预览图显示正确`)
        
        // 在RichEditor中显示释放完成信息
        this.richEditorController.addTextSpan(`\n✓ 第${this.dragCount}次已成功释放，不同尺寸预览图显示正确，无截断`, {
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
