/** SUB_ACE_ACTION_EVENT_COMMONEVENT_KEYEVENT_DISPATCH_0340 */
@Entry
@Component
struct OnKeyEventAttrTest0340 {
  @State text: string = '';
  @State keyInputLog: string = '';
  build() {
    Column() {
      Text('用例: DISPATCH_0340 OnKeyEventAttrTest0340').fontSize(18).margin(10)
      Text(this.keyInputLog ? '输入按键:\n' + this.keyInputLog : '输入按键: (按键后显示)').fontSize(12).fontColor(Color.Blue).margin(6)
      Button("button").onKeyEvent((event?: KeyEvent) => {
        if (event) {
          const line = 'keyCode=' + event.keyCode + ' keyText=' + event.keyText + ' type=' + (event.type === KeyType.Down ? 'Down' : 'Up');
          this.keyInputLog = (this.keyInputLog ? this.keyInputLog + '\n' : '') + line;
          this.text = '收到的event: keyCode=' + event.keyCode + ' keyText=' + event.keyText + ' type=' + (event.type === KeyType.Down ? 'Down' : 'Up') + ' timestamp=' + event.timestamp + ' intentionCode=' + event.intentionCode;
        } else {
          this.text = 'event对象为undefined';
        }
      }).defaultFocus(true).id('OnKeyEventAttrTest0340_01').margin(10)
      Text(this.text ? this.text : '收到的event: (按键后显示)').fontSize(14).fontColor(Color.Red).margin(10).width('90%')
    }.width('100%').height('100%')
  }
}
