/** SUB_ACE_ACTION_EVENT_COMMONEVENT_KEYEVENT_DISPATCH_0230 onKeyEventDispatch stopPropagation */
@Entry
@Component
struct OnKeyEventAttrTest0230 {
  @State text: string = '';
  @State keyInputLog: string = '';
  build() {
    Column() {
      Text('用例: DISPATCH_0230 OnKeyEventAttrTest0230').fontSize(18).margin(10)
      Text(this.keyInputLog ? '输入按键:\n' + this.keyInputLog : '输入按键: (按键后显示)').fontSize(12).fontColor(Color.Blue).margin(6)
      Button("button").onKeyEvent((event?: KeyEvent) => {
        if (event) {
          const line = 'keyCode=' + event.keyCode + ' keyText=' + event.keyText + ' type=' + (event.type === KeyType.Down ? 'Down' : 'Up');
          this.keyInputLog = (this.keyInputLog ? this.keyInputLog + '\n' : '') + line;
          this.text = '返回值:子onKeyEventDispatch响应';
        } else {
          this.text = 'event对象为undefined';
        }
      }).defaultFocus(true).id('OnKeyEventAttrTest0230_01').margin(10)
      Text(this.text ? this.text : '按下按键后显示返回值').fontSize(14).fontColor(Color.Red).margin(10)
    }.width('100%').height('100%')
  }
}
