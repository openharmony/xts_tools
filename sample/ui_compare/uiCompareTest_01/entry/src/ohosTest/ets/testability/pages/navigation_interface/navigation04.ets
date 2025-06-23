@Entry
@Component
struct NavDestinationCustomTransition {
  stack: NavPathStack = new NavPathStack();
  @State mode:NavigationMode = NavigationMode.Stack;
  @State titleMode:NavigationTitleMode = NavigationTitleMode.Free;

  @Builder
  pageMap(name: string) {
    if (name) {
      PageOneComponent();
      PageTwoComponent();
    }
  }

  aboutToAppear(): void {
    this.stack.pushPath({name: 'pageOne'});
  }

  build() {
    Column(){
      Navigation(this.stack) {
        Stack({ alignContent: Alignment.Center }) {
          Button('pushPath', { stateEffect: true, type: ButtonType.Capsule })
            .id('nav04PushPageOne')
            .width('80%')
            .height(40)
            .margin(20)
            .onClick(() => {
              this.stack.pushPath({ name: "pageOne" });
            })
        }
      }
      .width('100%')
      .height('60%')
      .navDestination(PageOneBuilder)
      // .hideNavBar(true)
      .title('Main Page')
      .titleMode(NavigationTitleMode.Mini)

      Button('ChangeMode')
        .margin({top:30})
        .height(40)
        .id('nav04ChangeMode')
        .onClick(()=>{
          this.mode = NavigationMode.Auto;
        })

      Button('ChangeTitleMode')
        .margin({top:30})
        .height(40)
        .id('nav04ChangeTitleMode')
        .onClick(()=>{
          this.titleMode = NavigationTitleMode.Full;
        })
    }
    .width('100%')
    .height('100%')
  }
}

@Builder
export function PageOneBuilder(name: string, param: Object) {
  PageOneComponent();
}

declare type voidFunc = () => void;

@Component
struct PageOneComponent {
  @State name: string = 'pageOne';
  @State destWidth: string = '100%';
  stack: NavPathStack = new NavPathStack();
  @State backImg: string = 'resources/base/media/icon.png';
  @State y: string = '0';

  build() {
    NavDestination() {
      Column() {
        Button('push next page', { stateEffect: true, type: ButtonType.Capsule })
          .width('80%')
          .height(40)
          .margin(20)
          .onClick(() => {
            this.stack.pushPath({ name: "PageTwo" });
          })

        Button('ChangeImgPng')
          .margin({top:30})
          .height(25)
          .id('nav04ChangeImgPng')
          .onClick(()=>{
            this.backImg = 'resources/base/media/icon.png';
          })

        Button('ChangeImgJpg')
          .margin({top:30})
          .height(25)
          .id('nav04ChangeImgJpg')
          .onClick(()=>{
            this.backImg = 'resources/base/media/icon1.jpg';
          })
        Button('ChangeImgGif')
          .margin({top:30})
          .height(25)
          .id('nav04ChangeImgGif')
          .onClick(()=>{
            this.backImg = 'resources/base/media/icon3.gif';
          })
        Button('ChangeImgSvg')
          .margin({top:30})
          .height(25)
          .id('nav04ChangeImgSvg')
          .onClick(()=>{
            this.backImg = 'resources/base/media/icon2.svg';
          })
        Button('ChangeImgBmp')
          .margin({top:30})
          .height(25)
          .id('nav04ChangeImgBmp')
          .onClick(()=>{
            this.backImg = 'resources/base/media/icon4.bmp';
          })
      }
      .size({ width: '100%', height: '100%' })
    }
    .height('100%')
    .title(this.name)
    .translate({ y: this.y })
    .onReady((context) => {
      this.name = context.pathInfo.name;
      this.stack = context.pathStack;
    })
    .backgroundColor(this.name == 'PageOne' ? '#F1F3F5' : '#ff11dee5')
  }
}

@Component
struct PageTwoComponent {
  private stack: NavPathStack | null = null;
  @State eventStr: string = "";

  build() {
    NavDestination() {
      Column() {
        Text("event: " + this.eventStr)
        Button('pop', { stateEffect: true, type: ButtonType.Capsule })
          .width('80%')
          .height(40)
          .margin(20)
          .onClick(() => {
            this.stack?.pop();
          })
      }
      .width('100%')
      .height('100%')
    }
    .title('pageTwo')
    .backButtonIcon('resources/base/media/icon.png')
    .onAppear(() => {
      this.eventStr += "<onAppear>";
    })
    .onDisAppear(() => {
      this.eventStr += "<onDisAppear>";
    })
    .onShown(() => {
      this.eventStr += "<onShown>";
    })
    .onHidden(() => {
      this.eventStr += "<onHidden>";
    })
    .onWillAppear(() => {
      this.eventStr += "<onWillAppear>";
    })
    .onWillDisappear(() => {
      this.eventStr += "<onWillDisappear>";
    })
    .onWillShow(() => {
      this.eventStr += "<onWillShow>";
    })
    .onWillHide(() => {
      this.eventStr += "<onWillHide>";
    })
    // onReady会在onAppear之前调用
    .onReady((ctx: NavDestinationContext) => {
      try {
        this.eventStr += "<onReady>";
        this.stack = ctx.pathStack;
      } catch (e) {
        console.log(`testTag onReady catch exception: ${JSON.stringify(e)}`);
      }
    })
  }
}

