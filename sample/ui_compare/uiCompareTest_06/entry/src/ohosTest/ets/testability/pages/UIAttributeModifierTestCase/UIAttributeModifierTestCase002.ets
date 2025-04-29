@Entry
@Component
struct GestureClearExample {
  // 手势状态控制
  @State gesturesEnabled: boolean = true
  @State gestureLog: string[] = []

  build() {
    Column() {
      Button('Gesture Control')
        .size({ width: 200, height: 60 })
        .onClick(() => {
          this.gesturesEnabled = !this.gesturesEnabled
          this.recordAction(`Gestures ${this.gesturesEnabled ? 'ON' : 'OFF'}`)
        })

      Divider()

      // 手势测试区域
      Button('Test Area')
        .size({ width: 300, height: 300 })
        .backgroundColor(Color.Orange)
        .gestureModifier(
          this.gesturesEnabled ?
          this.combinedGestureModifier() :
            undefined
        )

      // 日志显示
      List({ space: 5 }) {
        ForEach(this.gestureLog, (log:string) => {
          ListItem() {
            Text(log)
              .fontSize(14)
              .textAlign(TextAlign.Start)
          }
        })
      }
      .height('40%')
    }
    .padding(20)
  }

  // 组合手势修饰器
  private combinedGestureModifier(): GestureModifier {
    return GestureModifier(
      // 双击手势
      TapGesture({ count: 2, fingers: 2 })
        .onAction(() => this.recordAction('Double Tap (2 fingers)')),

      // 长按手势
      LongPressGesture({ fingers: 2 })
        .onAction(() => this.recordAction('Long Press (2 fingers)')),

      // 平移手势
      PanGesture({ fingers: 3, direction: PanDirection.Down })
        .onActionStart(()=> this.recordAction('Double Tap (2 fingers)')),

      // 捏合手势
      PinchGesture({ fingers: 2 })
        .onActionUpdate((event: PinchGestureEvent) => {
          this.recordAction(`Pinch ${event.scale > 1 ? 'Out' : 'In'}`)
        }),

      // 旋转手势
      RotationGesture({ fingers: 4 })
        .onActionUpdate((event: RotationGestureEvent) => {
          if (Math.abs(event.angle) > 15) {
            this.recordAction(`Rotated ${event.angle.toFixed(1)}°`)
          }
        }),

      // 滑动手势
      SwipeGesture({ fingers: 1, direction: SwipeDirection.Vertical })
        .onAction(() => this.recordAction('Swipe Right (1 finger)'))
    )
  }

  // 操作记录
  private recordAction(action: string): void {
    this.gestureLog = [`${new Date().toLocaleTimeString()}: ${action}`, ...this.gestureLog].slice(0, 15)
  }
}