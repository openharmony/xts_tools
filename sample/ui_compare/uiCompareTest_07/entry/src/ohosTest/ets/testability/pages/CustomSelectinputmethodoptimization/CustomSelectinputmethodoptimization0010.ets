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

@CustomDialog
struct CustomDialogComponent {
  @State inputValue: string = ''
  controller: CustomDialogController = new CustomDialogController({
    builder: CustomDialogComponent({}),
    alignment: DialogAlignment.Bottom,
    showInSubWindow: false,
    height: 300,
    keyboardAvoidMode: KeyboardAvoidMode.NONE
  })

  build() {
    Column() {
      Text('✨ 自定义弹窗')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .fontColor('#2C3E50')
        .margin({ bottom: 30 })
      
      TextInput({ placeholder: '💬 请输入您的内容...' })
        .id('text_input_custom_dialog_0010')
        .width('90%')
        .height(50)
        .fontSize(16)
        .backgroundColor('#F8F9FA')
        .borderRadius(15)
        .padding({ left: 20, right: 20 })
        .placeholderColor('#95A5A6')
        .border({ width: 2, color: '#E8F4FD' })
        .focusable(true)
        .onChange((value: string) => {
          this.inputValue = value
        })
        .margin({ bottom: 30 })
      
      Row() {
        Button('✅ 确定')
          .id('confirm_button_0010')
          .width(110)
          .height(50)
          .fontSize(16)
          .fontWeight(FontWeight.Medium)
          .fontColor('#FFFFFF')
          .backgroundColor('#3498DB')
          .borderRadius(25)
          .shadow({ radius: 8, color: '#3498DB40', offsetX: 0, offsetY: 4 })
          .onClick(() => {
            this.controller.close()
          })
          .margin({ right: 20 })
        
        Button('❌ 取消')
          .id('cancel_button_0010')
          .width(110)
          .height(50)
          .fontSize(16)
          .fontWeight(FontWeight.Medium)
          .fontColor('#E74C3C')
          .backgroundColor('#FFFFFF')
          .borderRadius(25)
          .border({ width: 2, color: '#E74C3C' })
          .shadow({ radius: 8, color: '#E74C3C20', offsetX: 0, offsetY: 4 })
          .onClick(() => {
            this.controller.close()
          })
      }
      .justifyContent(FlexAlign.Center)
    }
    .padding(30)
    .width('100%')
    .backgroundColor('#FFFFFF')
    .borderRadius({ topLeft: 20, topRight: 20 })
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .shadow({ radius: 20, color: '#00000020', offsetX: 0, offsetY: -5 })
  }
}

@Entry
@Component
struct CustomSelectinputmethodoptimization0010 {
  private dialogController: CustomDialogController = new CustomDialogController({
    builder: CustomDialogComponent({}),
    alignment: DialogAlignment.Bottom,
    showInSubWindow: false,
    height: 300,
    keyboardAvoidMode: KeyboardAvoidMode.NONE
  })

  build() {
    Column() {
      // 标题区域
      Column() {
        Text('🔧 CustomDialog 输入法避让测试')
          .fontSize(28)
          .fontWeight(FontWeight.Bold)
          .fontColor('#2C3E50')
          .textAlign(TextAlign.Center)
          .margin({ bottom: 10 })
        
        Text('Test Case 0010')
          .fontSize(14)
          .fontColor('#7F8C8D')
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding({ top: 20, bottom: 30 })
      .backgroundColor('#FFFFFF')
      .borderRadius({ bottomLeft: 25, bottomRight: 25 })
      .shadow({ radius: 10, color: '#00000010', offsetX: 0, offsetY: 2 })
      
      // 参数卡片
      Column() {
        Text('📋 测试参数')
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .fontColor('#34495E')
          .margin({ bottom: 15 })
        
        Row() {
          Column() {
            Text('📍 alignment')
              .fontSize(12)
              .fontColor('#7F8C8D')
            Text('Bottom')
              .fontSize(14)
              .fontWeight(FontWeight.Medium)
              .fontColor('#2980B9')
          }
          .alignItems(HorizontalAlign.Start)
          .layoutWeight(1)
          
          Column() {
            Text('🪟 showInSubWindow')
              .fontSize(12)
              .fontColor('#7F8C8D')
            Text('False')
              .fontSize(14)
              .fontWeight(FontWeight.Medium)
              .fontColor('#E67E22')
          }
          .alignItems(HorizontalAlign.Start)
          .layoutWeight(1)
        }
        .width('100%')
        .margin({ bottom: 15 })
        
        Row() {
          Column() {
            Text('📏 height')
              .fontSize(12)
              .fontColor('#7F8C8D')
            Text('300px')
              .fontSize(14)
              .fontWeight(FontWeight.Medium)
              .fontColor('#27AE60')
          }
          .alignItems(HorizontalAlign.Start)
          .layoutWeight(1)
          
          Column() {
            Text('⌨️ keyboardAvoidMode')
              .fontSize(12)
              .fontColor('#7F8C8D')
            Text('NONE')
              .fontSize(14)
              .fontWeight(FontWeight.Medium)
              .fontColor('#E74C3C')
          }
          .alignItems(HorizontalAlign.Start)
          .layoutWeight(1)
        }
        .width('100%')
      }
      .width('90%')
      .padding(20)
      .backgroundColor('#FFFFFF')
      .borderRadius(15)
      .margin({ top: 20, bottom: 30 })
      .shadow({ radius: 8, color: '#00000008', offsetX: 0, offsetY: 2 })
      
      // 操作按钮
      Button('🚀 点击测试弹窗')
        .id('click_me_button_0010')
        .fontSize(18)
        .fontWeight(FontWeight.Bold)
        .width(250)
        .height(60)
        .fontColor('#FFFFFF')
        .backgroundColor('#3498DB')
        .borderRadius(30)
        .shadow({ radius: 15, color: '#3498DB40', offsetX: 0, offsetY: 8 })
        .onClick(() => {
          this.dialogController.open()
        })
        .margin({ bottom: 40 })
      
      Blank()
      
      // 操作说明卡片
      Column() {
        Text('📖 操作说明')
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .fontColor('#34495E')
          .margin({ bottom: 15 })
        
        Column() {
          Text('1️⃣ 点击上方按钮打开自定义弹窗')
            .fontSize(14)
            .fontColor('#2C3E50')
            .margin({ bottom: 8 })
          
          Text('2️⃣ 点击弹窗内的输入框拉起软键盘')
            .fontSize(14)
            .fontColor('#2C3E50')
            .margin({ bottom: 8 })
          
          Text('3️⃣ 观察弹窗是否被输入法覆盖')
            .fontSize(14)
            .fontColor('#2C3E50')
            .margin({ bottom: 8 })
          
          Text('4️⃣ 点击输入法右上角箭头关闭键盘')
            .fontSize(14)
            .fontColor('#2C3E50')
            .margin({ bottom: 8 })
          
          Text('5️⃣ 横竖屏切换观察避让效果')
            .fontSize(14)
            .fontColor('#2C3E50')
        }
        .alignItems(HorizontalAlign.Start)
      }
      .width('90%')
      .padding(20)
      .backgroundColor('#FFFFFF')
      .borderRadius(15)
      .alignItems(HorizontalAlign.Start)
      .shadow({ radius: 8, color: '#00000008', offsetX: 0, offsetY: 2 })
    }
    .width('100%')
    .height('100%')
    .padding({ left: 20, right: 20, bottom: 20 })
  }
}