import { MessageManager, Callback } from '../../test/model/MessageManager';

@Entry
@Component
struct Index {
  @State message: string = 'Hello'
  @State fontColor: Color = Color.Brown
  messageManager: MessageManager = new MessageManager()

  onPageShow() {
    console.info('NavDestination onPageShow')
    globalThis.value = {
      name: 'messageManager', message: this.messageManager
    }
    let callback: Callback = (message: any) => {
      console.error('message = ' + message.name + "--" + message.value)
      if (message.name == 'fontColor') {
        this.fontColor = message.value
      }
    }
    this.messageManager.registerCallback(callback)
  }

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.Green)
          .margin({ top: 20 })
          .key('text_demo')

        Button('click')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .backgroundColor(this.fontColor)
          .margin({ top: 20 })
          .key('button_demo')
          .onClick(() => {
            this.message = 'Hi All'
          })
      }
      .width('100%')
      .height('100%')
      .backgroundColor(Color.Orange)

    }
    .defaultFocus(true)
  }
}