class VideoLongPressModifier implements GestureModifier {
  applyGesture(event: UIGestureEvent): void {
    event.addGesture(
      new LongPressGestureHandler()
        .onAction(() => {
          console.log('Long press detected on video')
        })
        .onActionEnd(() => {
          console.log('Long press released')
        })
    )
  }
}

@Entry
@Component
struct VideoGestureExample {
  private videoController: VideoController = new VideoController()
  @State isFullscreen: boolean = true
  @State modifier: VideoLongPressModifier = new VideoLongPressModifier()

  aboutToAppear(): void {
    this.toggleFullscreen()
    console.info(`Long press Fullscreen state changed1: ` + this.isFullscreen)
  }

  build() {
    Column(){
      Column() {
        Video({
          controller: this.videoController,
          previewUri: $r('app.media.icon')
        })
          .gestureModifier(this.modifier)
          .onFullscreenChange((event) => {
            this.isFullscreen = event.fullscreen
            console.log(`Long press Fullscreen state changed: ${this.isFullscreen}`)
          })
          .id("video")
      }
      .width('80%')
      .height('80%')

      Column() {
        Button('Toggle Fullscreen')
          .id('fullscreen')
          .onClick(() => {
            this.toggleFullscreen()
            console.info(`Long press Fullscreen state changed2: ` + this.isFullscreen)
          })
          .margin(10)
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F0F0F0')
  }

  private toggleFullscreen() {
    this.isFullscreen = !this.isFullscreen
    this.videoController.requestFullscreen(this.isFullscreen)
    console.info(`Long press Fullscreen state changed3: ` + this.isFullscreen)
  }
}