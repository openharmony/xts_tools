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

@Entry
@Component
struct UiComponentNavNavigationAutonegotiation0180 {
  @Provide('pathInfos') pathInfos: NavPathStack = new NavPathStack();

  @Builder
  PageMap(name: string) {
    if (name == 'pageOne') {
      PageOne0180()
    }
  }

  build() {
    Column() {
      Navigation(this.pathInfos) {
        Column() {
          // 标题区域
          Text('测试用例 0180')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#7B1FA2')
            .margin({ top: 15, bottom: 8 })
          
          // 测试信息（简化版）
          Column() {
            Text('📋 Split模式 | Nav:500 | NavDest:700')
              .fontSize(13)
              .fontColor('#424242')
              .width('100%')
              .textAlign(TextAlign.Center)
            
            Text('✅ NavDestination高度被限制为500')
              .fontSize(13)
              .fontColor('#2E7D32')
              .width('100%')
              .textAlign(TextAlign.Center)
              .margin({ top: 5 })
          }
          .width('90%')
          .padding(10)
          .backgroundColor('#F5F5F5')
          .borderRadius(8)
          .margin({ bottom: 15 })
          
          // 操作按钮
          Button('进入NavDestination页面')
            .id('button_autonegotiation_0180_push')
            .fontSize(16)
            .fontColor(Color.White)
            .backgroundColor('#7B1FA2')
            .width('80%')
            .height(45)
            .borderRadius(22.5)
            .onClick(() => {
              this.pathInfos.pushPathByName('pageOne', null);
            })
        }
        .width('100%')
        .padding({ left: 20, right: 20 })
      }
      .id('navigation_autonegotiation_0180')
      .mode(NavigationMode.Split)
      .height(500)
      .navDestination(this.PageMap)
      .title('Split模式-Nav高度500')
      .titleMode(NavigationTitleMode.Mini)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#FAFAFA')
  }
}

@Component
struct PageOne0180 {
  @Consume('pathInfos') pathInfos: NavPathStack;

  build() {
    NavDestination() {
      Column() {
        // 页面标题
        Text('NavDestination页面')
          .fontSize(22)
          .fontWeight(FontWeight.Bold)
          .fontColor('#7B1FA2')
          .margin({ top: 20, bottom: 20 })
        
        // 内容说明
        Column() {
          Text('📄 页面说明')
            .fontSize(16)
            .fontWeight(FontWeight.Medium)
            .fontColor('#424242')
            .width('100%')
            .margin({ bottom: 10 })
          
          Text('高度设置：700（固定）')
            .fontSize(14)
            .fontColor('#7B1FA2')
            .fontWeight(FontWeight.Medium)
            .width('100%')
            .margin({ left: 10, bottom: 8 })
          
          Text('此NavDestination设置了固定高度700，大于父容器Navigation的高度500。但实际显示时，NavDestination的高度会被限制在父容器的高度范围内，即500。')
            .fontSize(14)
            .fontColor('#757575')
            .lineHeight(22)
            .width('100%')
          
          Text('⚠️ 重要提示：当子元素设置的高度超过父容器时，实际渲染高度将受父容器限制。')
            .fontSize(13)
            .fontColor('#F57C00')
            .lineHeight(20)
            .width('100%')
            .margin({ top: 10 })
        }
        .width('90%')
        .padding(15)
        .backgroundColor('#F3E5F5')
        .borderRadius(8)
        .margin({ bottom: 30 })
        
        // 返回按钮
        Button('返回上一页')
          .fontSize(16)
          .fontColor(Color.White)
          .backgroundColor('#FF6B6B')
          .width('70%')
          .height(45)
          .borderRadius(22.5)
          .onClick(() => {
            this.pathInfos.pop();
          })
      }
      .width('100%')
      .height('100%')
      .padding(20)
      .backgroundColor('#FAFAFA')
    }
    .height(700)
    .title('NavDestination-高度700')
    .backgroundColor(Color.White)
  }
}
