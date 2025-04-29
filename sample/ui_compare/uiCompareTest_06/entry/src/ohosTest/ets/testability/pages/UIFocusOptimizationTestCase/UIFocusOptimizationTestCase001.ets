@Entry
@Component
struct MenuPageOne {
  @State mainMenuVisible: boolean = false
  @State subMenuVisible: boolean = false
  @State mainMenuFocused: boolean = false
  @State subMenuFocused: boolean = false

  // 主菜单构建器
  private buildMainMenu(): Menu {
    return Menu()
      .width(200)
      .backgroundColor(this.mainMenuFocused ? '#E3F2FD' : '#FFFFFF')
      .onAppear(() => this.mainMenuFocused = true)
      .onDisappear(() => this.mainMenuFocused = false)
      .bindMenu({
        builder: () => {
          Column() {
            MenuItem({ label: '选项一' })
              .enabled(true)
              .backgroundColor(this.getMenuItemColor(1))
              .onClick(() => console.info('选项一'))

            MenuItem({ label: '选项二' })
              .enabled(true)
              .backgroundColor(this.getMenuItemColor(2))
              .onClick(() => this.showSubMenu())

            MenuItem({ label: '选项三' })
              .enabled(false)
              .backgroundColor('#BDBDBD')

            MenuItem({ label: '选项四' })
              .enabled(true)
              .backgroundColor(this.getMenuItemColor(4))
              .onClick(() => console.info('选项四'))

            MenuItem({ label: '选项五' })
              .enabled(true)
              .backgroundColor(this.getMenuItemColor(5))
              .onClick(() => console.info('选项五'))
          }
          .padding(10)
        }
      })
  }

  // 子菜单构建器
  private buildSubMenu(): Menu {
    return Menu()
      .width(180)
      .backgroundColor(this.subMenuFocused ? '#F3E5F5' : '#FFFFFF')
      .onAppear(() => this.subMenuFocused = true)
      .onDisappear(() => {
        this.subMenuFocused = false
        this.mainMenuFocused = true
      })
      .bindMenu({
        builder: () => {
          Column() {
            MenuItem({ label: '子选项一' })
              .backgroundColor(this.getSubItemColor(1))
              .onClick(() => console.info('子选项一'))

            MenuItem({ label: '子选项二' })
              .backgroundColor(this.getSubItemColor(2))
              .onClick(() => console.info('子选项二'))
          }
          .padding(10)
        }
      })
  }

  build() {
    Column() {
      Button('bindMenu 非子窗口')
        .margin(10)
        .onClick(() => this.mainMenuVisible = true)

      Button('bindMenu 子窗口')
        .margin(10)
        .onClick(() => {
          this.mainMenuVisible = true
          this.mainMenuFocused = true
        })
        .bindMenu(this.buildMainMenu())

      Button('bindContextMenu')
        .margin(10)
        .bindContextMenu(this.buildMainMenu())

      Button('返回')
        .margin(10)
        .onClick(() => router.back())
    }
    .bindMenu(this.buildSubMenu(), { submenu: true })
    .onClick(() => {
      this.mainMenuVisible = false
      this.subMenuVisible = false
    })
  }

  private showSubMenu(): void {
    this.subMenuVisible = true
    this.mainMenuFocused = false
  }

  private getMenuItemColor(index: number): Color {
    return this.mainMenuFocused ?
      (index === 2 ? '#BBDEFB' : '#E3F2FD') :
      '#FFFFFF'
  }

  private getSubItemColor(index: number): Color {
    return this.subMenuFocused ?
      (index === 1 ? '#F3E5F5' : '#E1BEE7') :
      '#FFFFFF'
  }
}