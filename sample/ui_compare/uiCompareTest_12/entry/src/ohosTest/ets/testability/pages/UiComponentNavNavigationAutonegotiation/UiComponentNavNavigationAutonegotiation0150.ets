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
struct UiComponentNavNavigationAutonegotiation0150 {
  @Provide('pathInfos') pathInfos: NavPathStack = new NavPathStack();

  @Builder
  PageMap(name: string) {
    if (name == 'pageOne') {
      PageOne0150()
    } else if (name == 'pageTwo') {
      PageTwo0150()
    }
  }

  build() {
    Column() {
      Navigation(this.pathInfos) {
        Column() {
          // 标题区域
          Text('测试用例 0150')
            .fontSize(24)
            .fontWeight(FontWeight.Bold)
            .fontColor('#7B1FA2')
            .margin({ top: 20, bottom: 10 })
          
          Divider()
            .strokeWidth(2)
            .color('#F3E5F5')
            .margin({ bottom: 15 })
          
          // 测试信息卡片
          Column() {
            Text('📋 测试场景')
              .fontSize(16)
              .fontWeight(FontWeight.Medium)
              .fontColor('#424242')
              .width('100%')
              .margin({ bottom: 8 })
            
            Text('Split模式存在两个NavDestination')
              .fontSize(14)
              .fontColor('#757575')
              .width('100%')
              .margin({ left: 10, bottom: 5 })
            
            Text('Navigation高度：auto（自适应）')
              .fontSize(14)
              .fontColor('#757575')
              .width('100%')
              .margin({ left: 10, bottom: 5 })
            
            Text('页面1高度：100，页面2高度：500')
              .fontSize(14)
              .fontColor('#757575')
              .width('100%')
              .margin({ left: 10 })
          }
          .width('90%')
          .padding(15)
          .backgroundColor('#F5F5F5')
          .borderRadius(8)
          .margin({ bottom: 15 })
          
          // 预期效果卡片
          Column() {
            Text('✅ 预期效果')
              .fontSize(16)
              .fontWeight(FontWeight.Medium)
              .fontColor('#2E7D32')
              .width('100%')
              .margin({ bottom: 8 })
            
            Text('切换到页面1时，Navigation以NavBar高度为准')
              .fontSize(14)
              .fontColor('#388E3C')
              .width('100%')
              .margin({ left: 10, bottom: 5 })
            
            Text('切换到页面2时，Navigation适应页面2高度')
              .fontSize(14)
              .fontColor('#388E3C')
              .width('100%')
              .margin({ left: 10, bottom: 5 })
            
            Text('观察切换时Navigation高度的动态变化')
              .fontSize(14)
              .fontColor('#388E3C')
              .width('100%')
              .margin({ left: 10 })
          }
          .width('90%')
          .padding(15)
          .backgroundColor('#E8F5E9')
          .borderRadius(8)
          .margin({ bottom: 20 })
          
          // 操作按钮
          Button('进入页面1（高度100）')
            .id('button_autonegotiation_0150_push1')
            .fontSize(16)
            .fontColor(Color.White)
            .backgroundColor('#7B1FA2')
            .width('80%')
            .height(45)
            .borderRadius(22.5)
            .margin({ bottom: 10 })
            .onClick(() => {
              this.pathInfos.pushPathByName('pageOne', null);
            })
          
          Button('进入页面2（高度500）')
            .id('button_autonegotiation_0150_push2')
            .fontSize(16)
            .fontColor(Color.White)
            .backgroundColor('#9C27B0')
            .width('80%')
            .height(45)
            .borderRadius(22.5)
            .onClick(() => {
              this.pathInfos.pushPathByName('pageTwo', null);
            })
        }
        .width('100%')
        .padding({ left: 20, right: 20 })
      }
      .id('navigation_autonegotiation_0150')
      .mode(NavigationMode.Split)
      .height('auto')
      .navDestination(this.PageMap)
      .title('Split模式-两页面切换')
      .titleMode(NavigationTitleMode.Mini)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#FAFAFA')
  }
}

@Component
struct PageOne0150 {
  @Consume('pathInfos') pathInfos: NavPathStack;

  build() {
    NavDestination() {
      Column() {
        // 紧凑的页面标题
        Text('页面1 - 高度100')
          .fontSize(14)
          .fontWeight(FontWeight.Bold)
          .fontColor('#7B1FA2')
          .width('100%')
          .textAlign(TextAlign.Center)

        
        // 横向按钮布局，节省空间
        Row() {
          Button('→页面2')
            .id('button_autonegotiation_0150_switch')
            .fontSize(12)
            .fontColor(Color.White)
            .backgroundColor('#9C27B0')
            .width('45%')
            .height(20)
            .borderRadius(15)
            .onClick(() => {
              this.pathInfos.pushPathByName('pageTwo', null);
            })
          
          Button('返回')
            .fontSize(12)
            .fontColor(Color.White)
            .backgroundColor('#FF6B6B')
            .width('45%')
            .height(20)
            .borderRadius(15)
            .onClick(() => {
              this.pathInfos.pop();
            })
        }
        .width('90%')
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .width('100%')
      .height('100%')
      .backgroundColor('#F3E5F5')
    }
    .height(100)
    .title('页面1')
    .backgroundColor(Color.Gray)
  }
}

@Component
struct PageTwo0150 {
  @Consume('pathInfos') pathInfos: NavPathStack;

  build() {
    NavDestination() {
      Column() {
        // 页面标题
        Text('页面2-固定高度500')
          .fontSize(22)
          .fontWeight(FontWeight.Bold)
          .fontColor('#9C27B0')
          .margin({ top: 10, bottom: 10 })
        
        // 内容说明
        Column() {
          Text('📄 页面说明')
            .fontSize(16)
            .fontWeight(FontWeight.Medium)
            .fontColor(Color.Black)
            .width('100%')
            .margin({ bottom: 5 })
          
          Text('高度设置：500（固定）')
            .fontSize(14)
            .fontColor(Color.Black)
            .fontWeight(FontWeight.Medium)
            .width('100%')
            .margin({ left: 10, bottom: 8 })
          
          Text('当前页面高度设置为500，大于页面1的高度。Navigation会相应地调整其高度以适应当前NavDestination。')
            .fontSize(14)
            .fontColor('#757575')
            .lineHeight(22)
            .width('100%')
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
          .width('80%')
          .height(45)
          .borderRadius(22.5)
          .onClick(() => {
            this.pathInfos.pop();
          })
      }
      .width('100%')
      .height('100%')
      .backgroundColor(Color.White)
    }
    .height(500)
    .title('页面2')
    .backgroundColor(Color.White)
  }
}
