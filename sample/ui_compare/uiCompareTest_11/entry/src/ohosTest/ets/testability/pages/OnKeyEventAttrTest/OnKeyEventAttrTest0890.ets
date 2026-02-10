/**
 * SUB_ACE_ACTION_EVENT_COMMONEVENT_KEYEVENT_DISPATCH_0890
 * 构造keyEvent进行分发。column绑定onKeyEventDispatch，按下Tab后将收到的event显示在界面（返回值是否为undefined均如实展示）。
 */
@Entry
@Component
struct OnKeyEventAttrTest0890 {
  @State eventDisplay: string = '';

  build() {
    Column() {
      Text('用例: DISPATCH_0890 column绑定onKeyEventDispatch').fontSize(18).margin(10)
      Text(this.eventDisplay ? 'onKeyEventDispatch收到的event:\n' + this.eventDisplay : 'onKeyEventDispatch收到的event: (按下Tab等按键后显示)')
        .fontSize(14).fontColor(Color.Red).margin(10).width('90%')

      Button("button").defaultFocus(true).id('OnKeyEventAttrTest0890_01').margin(10)
    }
    .width('100%')
    .height('100%')
    .onKeyEventDispatch((event?: KeyEvent) => {
      if (event) {
        this.eventDisplay = 'keyCode=' + event.keyCode + ' keyText=' + event.keyText +
          ' type=' + (event.type === KeyType.Down ? 'Down' : 'Up') +
          ' timestamp=' + event.timestamp +
          ' intentionCode=' + event.intentionCode;
      } else {
        this.eventDisplay = 'event对象为undefined';
      }
      return undefined;
    })
  }
}
