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
struct CustomSelectinputmethodoptimization0060 {
  @State inputValue: string = ''
  private uiContext: UIContext = this.getUIContext()

  build() {
    Column() {
      Text('🎯 UIContext 输入法避让测试')
        .fontSize(26)
        .fontWeight(FontWeight.Bold)
        .fontColor('#E74C3C')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 20 })
      
      Text('Test Case 0060 - Bottom NONE')
        .fontSize(14)
        .fontColor('#95A5A6')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 30 })
      
      // 参数卡片
      Column() {
        Text('📋 测试参数')
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .fontColor('#2C3E50')
          .margin({ bottom: 15 })
        
        Row() {
          Text('alignment: Bottom')
            .fontSize(14)
            .fontColor('#E74C3C')
            .backgroundColor('#FADBD8')
            .padding({ left: 8, right: 8, top: 4, bottom: 4 })
            .borderRadius(8)
          
          Text('showInSubWindow: False')
            .fontSize(14)
            .fontColor('#E67E22')
            .backgroundColor('#FDEBD0')
            .padding({ left: 8, right: 8, top: 4, bottom: 4 })
            .borderRadius(8)
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .margin({ bottom: 10 })
        
        Text('keyboardAvoidMode: NONE')
          .fontSize(14)
          .fontColor('#8E44AD')
          .backgroundColor('#F4ECF7')
          .padding({ left: 8, right: 8, top: 4, bottom: 4 })
          .borderRadius(8)
          .alignSelf(ItemAlign.Start)
      }
      .width('90%')
      .padding(20)
      .backgroundColor('#FFFFFF')
      .borderRadius(15)
      .shadow({ radius: 8, color: '#00000010', offsetX: 0, offsetY: 2 })
      .margin({ bottom: 30 })
      
      Button('🚀 打开UIContext弹窗')
        .id('click_custom_dialog_button_0060')
        .fontSize(18)
        .fontWeight(FontWeight.Medium)
        .width(240)
        .height(55)
        .fontColor('#FFFFFF')
        .backgroundColor('#E74C3C')
        .borderRadius(28)
        .shadow({ radius: 10, color: '#E74C3C30', offsetX: 0, offsetY: 4 })
        .onClick(() => {
          this.openCustomDialogWithUIContext()
        })
        .margin({ bottom: 30 })
      
      Blank()
      
      // 操作说明
      Column() {
        Text('📖 操作说明')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .fontColor('#2C3E50')
          .margin({ bottom: 15 })
        
        Column() {
          Text('1. 点击上方按钮打开UIContext弹窗')
            .fontSize(13)
            .fontColor('#34495E')
            .margin({ bottom: 6 })
          
          Text('2. 点击弹窗内的输入框拉起软键盘')
            .fontSize(13)
            .fontColor('#34495E')
            .margin({ bottom: 6 })
          
          Text('3. 观察弹窗不会避让输入法（NONE模式）')
            .fontSize(13)
            .fontColor('#34495E')
            .margin({ bottom: 6 })
          
          Text('4. 点击输入法右上角箭头关闭键盘')
            .fontSize(13)
            .fontColor('#34495E')
            .margin({ bottom: 6 })
          
          Text('5. 横竖屏切换重复测试操作')
            .fontSize(13)
            .fontColor('#34495E')
        }
        .alignItems(HorizontalAlign.Start)
      }
      .width('90%')
      .padding(20)
      .backgroundColor('#FFFFFF')
      .borderRadius(15)
      .alignItems(HorizontalAlign.Start)
      .shadow({ radius: 8, color: '#00000010', offsetX: 0, offsetY: 2 })
    }
    .width('100%')
    .height('100%')
    .padding(20)
  }

  private openCustomDialogWithUIContext() {
    this.uiContext.getPromptAction().openCustomDialog({
      builder: () => {
        this.CustomDialogBuilder()
      },
      alignment: DialogAlignment.Bottom,
      showInSubWindow: false,
      keyboardAvoidMode: KeyboardAvoidMode.NONE
    })
  }

  @Builder
  CustomDialogBuilder() {
    Column() {
      Text('🎯 UIContext 弹窗')
        .fontSize(22)
        .fontWeight(FontWeight.Bold)
        .fontColor('#E74C3C')
        .margin({ bottom: 20 })
      
      TextInput({ placeholder: '🔍 请输入您的测试内容...' })
        .id('text_input_uicontext_dialog_0060')
        .width('95%')
        .height(50)
        .fontSize(16)
        .backgroundColor('#FADBD8')
        .borderRadius(15)
        .padding({ left: 16, right: 16 })
        .placeholderColor('#E74C3C')
        .border({ width: 1, color: '#F5B7B1' })
        .onChange((value: string) => {
          this.inputValue = value
        })
        .margin({ bottom: 25 })
      
      Row() {
        Button('✅ 确定')
          .id('confirm_button_uicontext_0060')
          .width(100)
          .height(45)
          .fontSize(16)
          .fontColor('#FFFFFF')
          .backgroundColor('#E74C3C')
          .borderRadius(22)
          .onClick(() => {
            this.uiContext.getPromptAction().closeCustomDialog(0)
          })
          .margin({ right: 15 })
        
        Button('❌ 取消')
          .id('cancel_button_uicontext_0060')
          .width(100)
          .height(45)
          .fontSize(16)
          .fontColor('#E74C3C')
          .backgroundColor('#FFFFFF')
          .borderRadius(22)
          .border({ width: 1, color: '#E74C3C' })
          .onClick(() => {
            this.uiContext.getPromptAction().closeCustomDialog(0)
          })
      }
      .justifyContent(FlexAlign.Center)
    }
    .padding(25)
    .width('100%')
    .backgroundColor('#FFFFFF')
    .borderRadius({ topLeft: 20, topRight: 20 })
    .shadow({ radius: 15, color: '#E74C3C20', offsetX: 0, offsetY: -5 })
  }
}
