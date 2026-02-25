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
struct CustomizeGatherOrNot042 {
  @State items: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
  @State selectedItems: Set<number> = new Set()
  @State dragStatus: string = '等待操作'
  @State testStarted: boolean = false
  @State isLandscape: boolean = false
  private richEditorController: RichEditorController = new RichEditorController()

  build() {
    Column() {
      Text('List组件多选拖拽测试-横屏模式')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20, bottom: 10 })
        .id('title_text_042')

      Text(`当前状态: ${this.dragStatus}`)
        .fontSize(16)
        .margin({ bottom: 10 })
        .id('drag_status_text_042')

      Text(`已选中: ${this.selectedItems.size} 项`)
        .fontSize(16)
        .margin({ bottom: 5 })
        .id('selected_count_text_042')

      Text(`屏幕方向: ${this.isLandscape ? '横屏' : '竖屏'}`)
        .fontSize(16)
        .fontColor(this.isLandscape ? '#FF6200EE' : '#2196F3')
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 10 })
        .id('orientation_text_042')

      Button('点击List组件测试')
        .width('80%')
        .height(50)
        .fontSize(18)
        .margin({ bottom: 10 })
        .id('test_button_042')
        .onClick(() => {
          this.testStarted = true
          this.dragStatus = '已点击测试按钮，已自动选中5个ListItem'
          // 自动选中5个ListItem（项目1、2相邻，项目5、8、10不相邻，共5项）
          this.selectedItems.clear()
          this.selectedItems.add(0)
          this.selectedItems.add(1)
          this.selectedItems.add(4)
          this.selectedItems.add(7)
          this.selectedItems.add(9)
          
          // 更新RichEditor显示当前状态
          this.richEditorController.addTextSpan('\n\n当前操作：已选中ListItem 1、2、5、8、10（共5项），现在可以点击切换横屏按钮，然后拖拽测试', {
            style: {
              fontColor: '#1976D2',
              fontSize: 13,
              fontWeight: FontWeight.Bold
            }
          })
        })

      Button(this.isLandscape ? '当前：横屏模式 ✓' : '点击切换横屏')
        .width('80%')
        .height(50)
        .fontSize(18)
        .margin({ bottom: 15 })
        .backgroundColor(this.isLandscape ? '#4CAF50' : '#FF9800')
        .id('toggle_landscape_button_042')
        .onClick(() => {
          this.isLandscape = !this.isLandscape
          this.dragStatus = this.isLandscape ? '已切换到横屏模式' : '已切换到竖屏模式'
          
          // 更新RichEditor显示当前状态
          this.richEditorController.addTextSpan(`\n\n【屏幕方向】已切换到${this.isLandscape ? '横屏' : '竖屏'}模式，现在可以拖拽任意选中的ListItem进行测试`, {
            style: {
              fontColor: this.isLandscape ? '#4CAF50' : '#FF9800',
              fontSize: 13,
              fontWeight: FontWeight.Bold
            }
          })
        })

      // List组件，设置dragPreviewOptions的mode为ENABLE_MULTI_TILE_EFFECT
      List({ space: 8 }) {
        ForEach(this.items, (item: number, index: number) => {
          ListItem() {
            Column() {
              Row() {
                if (this.selectedItems.has(index)) {
                  Text('✓')
                    .fontSize(18)
                    .fontColor(Color.Orange)
                    .fontWeight(FontWeight.Bold)
                    .margin({ right: 5 })
                }
                Text(`ListItem ${item}`)
                  .fontSize(18)
                  .fontColor(Color.White)
                  .fontWeight(FontWeight.Bold)
                
                if (this.isLandscape) {
                  Text(' [横屏]')
                    .fontSize(14)
                    .fontColor('#FFD700')
                    .fontWeight(FontWeight.Bold)
                    .margin({ left: 5 })
                }
              }
              .width('100%')
              .justifyContent(FlexAlign.Center)
            }
            .width('90%')
            .height(80)
            .justifyContent(FlexAlign.Center)
            .backgroundColor(this.selectedItems.has(index) ? '#FF6200EE' : '#2196F3')
            .borderRadius(8)
            .border({
              width: this.selectedItems.has(index) ? 4 : 1,
              color: this.selectedItems.has(index) ? Color.Orange : '#90CAF9'
            })
            .shadow(this.selectedItems.has(index) ? {
              radius: 10,
              color: '#FF6200EE',
              offsetX: 0,
              offsetY: 0
            } : null)
          }
          .id(`list_item_${index}_042`)
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
            this.dragStatus = `选中/取消选中ListItem${item}`
          })
          .onDragStart(() => {
            this.dragStatus = `开始拖拽ListItem${item}（已选中${this.selectedItems.size}项，${this.isLandscape ? '横屏' : '竖屏'}模式）`
            console.info('[TEST]', `ListItem ${item} onDragStart: 开始拖拽，使用ENABLE_MULTI_TILE_EFFECT模式，${this.isLandscape ? '横屏' : '竖屏'}模式`)
            
            // 在RichEditor中显示拖拽效果观察提示
            this.richEditorController.addTextSpan(`\n\n【拖拽中】正在拖拽ListItem${item}，共选中${this.selectedItems.size}项（${this.isLandscape ? '横屏' : '竖屏'}模式）\n请观察：\n1. 拖拽预览效果为非聚拢\n2. 动效流畅`, {
              style: {
                fontColor: '#E65100',
                fontSize: 13,
                fontWeight: FontWeight.Bold
              }
            })
          })
          .onDragEnd(() => {
            this.dragStatus = `拖拽结束，已完成测试`
            console.info('[TEST]', `ListItem ${item} onDragEnd: 拖拽结束`)
            
            // 在RichEditor中显示拖拽结束信息
            this.richEditorController.addTextSpan('\n\n【拖拽完成】拖拽已结束', {
              style: {
                fontColor: '#388E3C',
                fontSize: 13,
                fontWeight: FontWeight.Bold
              }
            })
          })
        }, (item: number) => item.toString())
      }
      .width('95%')
      .height(350)
      .id('drag_list_042')
      .margin({ bottom: 20 })

      // 释放区域
      Column() {
        Text('🎯 拖拽释放区域')
          .fontSize(18)
          .fontColor(Color.White)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 5 })
        if (this.isLandscape) {
          Text('【横屏模式】')
            .fontSize(14)
            .fontColor('#FFD700')
            .fontWeight(FontWeight.Bold)
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
      .id('drop_zone_042')
      .onDrop(() => {
        this.dragStatus = `已释放到目标区域（${this.isLandscape ? '横屏' : '竖屏'}模式），测试完成`
        console.info('[TEST]', 'List onDrop: 释放完成')
        
        // 在RichEditor中显示释放完成信息
        this.richEditorController.addTextSpan('\n\n✓ 已成功释放到目标区域', {
          style: {
            fontColor: '#4CAF50',
            fontSize: 14,
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
