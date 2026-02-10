/** SUB_ACE_ACTION_EVENT_COMMONEVENT_KEYEVENT_DISPATCH_0540 framenode的onKeyEvent响应，返回值为false */
@Entry
@Component
struct OnKeyEventAttrTest0540 {
  @State text: string = '';
  @State keyInputLog: string = '';
  build() {
    Column() {
      Text('用例: DISPATCH_0540 OnKeyEventAttrTest0540').fontSize(18).margin(10)
      Text(this.keyInputLog ? '输入按键:\n' + this.keyInputLog : '输入按键: (按键后显示)').fontSize(12).fontColor(Color.Blue).margin(6)
      Button("button").onKeyEvent((event?: KeyEvent) => {
        if (event) {
          const line = 'keyCode=' + event.keyCode + ' keyText=' + event.keyText + ' type=' + (event.type === KeyType.Down ? 'Down' : 'Up');
          this.keyInputLog = (this.keyInputLog ? this.keyInputLog + '\n' : '') + line;
          this.text = '返回值: false (onKeyEvent回调返回false)';
        } else {
          this.text = 'event对象为undefined';
        }
        return false;
      }).defaultFocus(true).id('OnKeyEventAttrTest0540_01').margin(10)
      Text(this.text).fontSize(14).fontColor(Color.Red).margin(10)
    }.width('100%').height('100%')
  }
}
