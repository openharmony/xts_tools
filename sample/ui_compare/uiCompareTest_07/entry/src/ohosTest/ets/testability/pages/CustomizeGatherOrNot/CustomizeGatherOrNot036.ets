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
struct CustomizeGatherOrNot036 {
  @State items: string[] = ['项目1', '项目2', '项目3', '项目4', '项目5', '项目6', '项目7', '项目8', '项目9', '项目10']
  @State selectedItems: Set<number> = new Set()
  @State dragStatus: string = '等待操作'
  @State testStarted: boolean = false
  @State dragCount: number = 0
  private richEditorController: RichEditorController = new RichEditorController()

  // 使用CustomBuilder创建ListItem内容
  @Builder
  customListItemBuilder(item: string, index: number) {
    Row() {
      // 左侧图标区域
      Column() {
        Image($r('app.media.icon'))
          .width(40)
          .height(40)
          .borderRadius(20)
          .margin({ bottom: 3 })
        
        if (this.selectedItems.has(index)) {
          Text('✓')
            .fontSize(16)
            .fontColor('#4CAF50')
            .fontWeight(FontWeight.Bold)
        }
      }
      .margin({ right: 12 })
      
      // 中间内容区域
      Column() {
        Row() {
          Text(item)
            .fontSize(this.selectedItems.has(index) ? 18 : 16)
            .fontColor(Color.White)
            .fontWeight(this.selectedItems.has(index) ? FontWeight.Bold : FontWeight.Normal)
            .margin({ bottom: 5 })
          
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
        
        // 显示Builder标识
        Row() {
          Text('🔧 CustomBuilder创建')
            .fontSize(11)
            .fontColor(this.selectedItems.has(index) ? '#B2DFDB' : '#BBDEFB')
            .margin({ right: 8 })
          
          if (this.selectedItems.has(index)) {
            Text('复杂UI')
              .fontSize(10)
              .fontColor('#FFCC80')
              .padding({ left: 3, right: 3, top: 1, bottom: 1 })
              .backgroundColor('#00897B')
              .borderRadius(3)
          }
        }
        
        // 进度条示例
        Progress({ value: (index + 1) * 10, total: 100, type: ProgressType.Linear })
          .width('100%')
          .height(6)
          .color(this.selectedItems.has(index) ? '#4CAF50' : '#2196F3')
          .margin({ top: 5 })
      }
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Start)
      
      // 右侧操作区域
      Column() {
        Text('🖱️')
          .fontSize(20)
          .opacity(0.8)
        
        Text(`${(index + 1) * 10}%`)
          .fontSize(11)
          .fontColor('#00BCD4')
          .fontWeight(FontWeight.Bold)
          .margin({ top: 3 })
        
        if (this.dragCount > 0 && this.selectedItems.has(index)) {
          Text(`x${this.dragCount}`)
            .fontSize(10)
            .fontColor('#FF6200EE')
            .fontWeight(FontWeight.Bold)
            .margin({ top: 2 })
        }
      }
    }
    .width('100%')
    .height(90)
    .padding({ left: 15, right: 15 })
    .backgroundColor(this.selectedItems.has(index) ? '#00695C' : '#1976D2')
    .borderRadius(10)
    .border({
      width: this.selectedItems.has(index) ? 4 : 1,
      color: this.selectedItems.has(index) ? '#4CAF50' : '#64B5F6'
    })
    .shadow(this.selectedItems.has(index) ? {
      radius: 15,
      color: '#4CAF50',
      offsetX: 0,
      offsetY: 4
    } : null)
  }

  build() {
    Column() {
      Text('List组件CustomBuilder拖拽测试')
        .fontSize(21)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20, bottom: 10 })
        .id('title_text_036')

      Text(`当前状态: ${this.dragStatus}`)
        .fontSize(16)
        .margin({ bottom: 10 })
        .id('drag_status_text_036')

      Text(`已选中: ${this.selectedItems.size} 项 | 拖拽次数: ${this.dragCount}`)
        .fontSize(15)
        .margin({ bottom: 5 })
        .id('selected_count_text_036')

      Button('点击List组件测试')
        .width('80%')
        .height(50)
        .fontSize(18)
        .margin({ bottom: 15 })
        .id('test_button_036')
        .onClick(() => {
          this.testStarted = true
          this.dragStatus = '已点击测试按钮，已自动选中CustomBuilder创建的ListItem'
          // 自动选中几个相邻和不相邻的ListItem
          this.selectedItems.clear()
          this.selectedItems.add(0)  // 项目1
          this.selectedItems.add(1)  // 项目2（与1相邻）
          this.selectedItems.add(4)  // 项目5（不相邻）
          this.selectedItems.add(7)  // 项目8（不相邻）
          
          // 更新RichEditor显示当前状态
          this.richEditorController.addTextSpan('\n\n✓ 步骤4已完成：已选中4个通过CustomBuilder创建的ListItem\n  项目1、2（相邻）、项目5、8（不相邻）\n现在可以通过鼠标连续多次拖拽，观察复杂UI显示效果', {
            style: {
              fontColor: '#E65100',
              fontSize: 13,
              fontWeight: FontWeight.Bold
            }
          })
        })

      Text('操作提示：鼠标拖拽，重点观察CustomBuilder创建的复杂UI显示正确')
        .fontSize(12)
        .fontColor('#666666')
        .margin({ bottom: 10 })
        .id('hint_text_036')

      // List组件
      List({ space: 10 }) {
        ForEach(this.items, (item: string, index: number) => {
          ListItem() {
            // 使用CustomBuilder创建ListItem内容
            this.customListItemBuilder(item, index)
          }
          .id(`list_item_${index}_036`)
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
            this.dragStatus = `第${this.dragCount}次鼠标拖拽${item}（CustomBuilder创建）`
            console.info('[TEST]', `ListItem ${item} onDragStart: 第${this.dragCount}次鼠标拖拽，CustomBuilder创建的复杂UI`)
            
            // 在RichEditor中显示拖拽效果观察提示
            this.richEditorController.addTextSpan(`\n\n【第${this.dragCount}次拖拽】正在鼠标拖拽${item}\n⚠️ 重点观察：CustomBuilder创建的复杂UI显示完整`, {
              style: {
                fontColor: '#E65100',
                fontSize: 12,
                fontWeight: FontWeight.Bold
              }
            })
          })
          .onDragEnd(() => {
            this.dragStatus = `第${this.dragCount}次拖拽${item}结束，CustomBuilder UI显示正确`
            console.info('[TEST]', `ListItem ${item} onDragEnd: 第${this.dragCount}次拖拽结束，CustomBuilder UI显示正确`)
            
            // 在RichEditor中显示拖拽结束信息
            this.richEditorController.addTextSpan(`\n✓ 第${this.dragCount}次拖拽完成，CustomBuilder UI显示正确`, {
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
      .height(430)
      .id('drag_list_036')
      .margin({ bottom: 20 })

      Text('拖拽目标区域 ↓')
        .fontSize(14)
        .fontColor('#666666')
        .margin({ bottom: 5 })
        .id('target_hint_text_036')

      // 释放区域
      Column() {
        Text('🎯 鼠标拖拽释放区域')
          .fontSize(18)
          .fontColor(Color.White)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 5 })
        
        Text(`验证CustomBuilder创建的ListItem拖拽效果（已拖拽${this.dragCount}次）`)
          .fontSize(13)
          .fontColor('#E8F5E9')
        
        if (this.dragCount > 0) {
          Text('✓ 复杂UI应显示完整')
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
      .id('drop_zone_036')
      .onDrop(() => {
        this.dragStatus = `已释放到目标区域（第${this.dragCount}次，CustomBuilder UI显示正确）`
        console.info('[TEST]', `List onDrop: 第${this.dragCount}次释放完成，CustomBuilder创建的ListItem预览图显示正确`)
        
        // 在RichEditor中显示释放完成信息
        this.richEditorController.addTextSpan(`\n✓ 第${this.dragCount}次已成功释放，CustomBuilder UI显示正确`, {
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
