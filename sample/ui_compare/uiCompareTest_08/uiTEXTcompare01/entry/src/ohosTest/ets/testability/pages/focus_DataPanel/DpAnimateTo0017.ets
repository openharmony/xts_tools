
@Entry
@Component
struct DpAnimateTo0017 {
  @State isPanelVisible: boolean = false;
  @State panelOpacity: number = 0;
  @State panelTranslateY: number = 30;

  build() {
    Column() {
      // 控制按钮
      Button(this.isPanelVisible ? '隐藏面板' : '显示面板')
        .id('DpAT0017')
        .onClick(() => {
          this.togglePanel();
        })
        .margin(20)

      // 数据面板组件
      if (this.isPanelVisible || this.panelOpacity > 0) {
        DataPanel({ values:  [20, 20, 20, 20], max: 100, type: DataPanelType.Circle })
          .width('90%')
          .height(200)
          .margin(20)
          .opacity(this.panelOpacity)
          .closeEffect(false)
          .translate({ x: 0, y: this.panelTranslateY })
          .animation({
            duration: 500,
            curve: Curve.EaseOut
          })
      }
    }
    .width('100%')
    .height('100%')
  }

  // 控制面板显示/隐藏的动画
  togglePanel() {
    if (this.isPanelVisible) {
      // 隐藏面板动画
      this.getUIContext()?.animateTo({
        duration: 500,
        curve: Curve.EaseIn
      }, () => {
        this.panelOpacity = 0;
        this.panelTranslateY = 30;
        this.isPanelVisible = false;
      })
    } else {
      // 显示面板动画
      this.isPanelVisible = true;
      // 强制刷新UI后执行动画
      setTimeout(() => {
        this.getUIContext()?.animateTo({
          duration: 500,
          curve: Curve.EaseOut
        }, () => {
          this.panelOpacity = 1;
          this.panelTranslateY = 0;
        });
      }, 10);
    }
  }
}