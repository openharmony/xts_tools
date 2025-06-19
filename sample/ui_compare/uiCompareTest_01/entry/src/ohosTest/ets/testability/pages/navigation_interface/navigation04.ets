/**
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

@Builder
export function PageOneBuilder(name: string, param: Object) {
  PageOneComponent();
  PageTwoComponent();
}

@Component
struct PageOneComponent {
  private stack: NavPathStack | null = null;
  @State eventStr: string = '';
  @State backImg: string = 'resources/base/media/icon.png';

  build() {
    NavDestination() {
      Column() {
        Text("event: " + this.eventStr)

        Button('pushPath', { stateEffect: true, type: ButtonType.Capsule })
          .width('80%')
          .height(40)
          .margin(20)
          .onClick(() => {
            if (this.stack) {
              this.stack.pushPath({ name: "pageTwo" });
            }
          })
        Button('pop', { stateEffect: true, type: ButtonType.Capsule })
          .width('80%')
          .height(40)
          .margin(20)
          .onClick(() => {
            this.stack?.pop();
          })

        Button('ChangeImgPng')
          .margin({top:30})
          .height(40)
          .id('nav04ChangeImgPng')
          .onClick(()=>{
            this.backImg = 'resources/base/media/icon.png';
          })

        Button('ChangeImgJpg')
          .margin({top:30})
          .height(40)
          .id('nav04ChangeImgJpg')
          .onClick(()=>{
            this.backImg = 'resources/base/media/icon.jpg';
          })
        Button('ChangeImgGif')
          .margin({top:30})
          .height(40)
          .id('nav04ChangeImgGif')
          .onClick(()=>{
            this.backImg = 'resources/base/media/icon.gif';
          })
        Button('ChangeImgSvg')
          .margin({top:30})
          .height(40)
          .id('nav04ChangeImgSvg')
          .onClick(()=>{
            this.backImg = 'resources/base/media/icon.svg';
          })
        Button('ChangeImgBmp')
          .margin({top:30})
          .height(40)
          .id('nav04ChangeImgBmp')
          .onClick(()=>{
            this.backImg = 'resources/base/media/icon.bmp';
          })
      }
      .width('100%')
      .height('100%')
    }
    .title('pageOne')
    .backButtonIcon(this.backImg)
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

@Component
struct PageTwoComponent {
  private stack: NavPathStack | null = null;
  @State eventStr: string = "";

  build() {
    NavDestination() {
      Column() {
        Text("event: " + this.eventStr)
        Button('pushPath', { stateEffect: true, type: ButtonType.Capsule })
          .width('80%')
          .height(40)
          .margin(20)
          .onClick(() => {
            if (this.stack) {
              this.stack.pushPath({ name: "pageOne" });
            }
          })
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

@Entry
@Component
struct Navigation04 {
  private stack: NavPathStack = new NavPathStack();
  @State mode:NavigationMode = NavigationMode.Stack;
  @State titleMode:NavigationTitleMode = NavigationTitleMode.Free;

  build() {
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
      .width('100%')
      .height('100%')

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
    .titleMode(this.titleMode)
    .mode(this.mode)
    .width('100%')
    .height('100%')
    .title('Navigation')
  }
}
