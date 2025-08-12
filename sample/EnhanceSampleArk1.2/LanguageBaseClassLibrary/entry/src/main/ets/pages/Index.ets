'use static'
/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import {
  Entry,
  Component,
  $r,
  Navigation,
  Divider,
  NavigationMode,
  NavPathStack,
  NavigationTitleMode,
  Builder,
  Row,
  Text,
  FontWeight,
  StoragePropRef,
  AppStorage,
} from '@kit.ArkUI';
import { Capabilities } from './components/Capabilities';
import { Util } from 'capabilities';
import { MenuList } from 'menuitems'
import { getString } from 'common';

const TAG: string = 'Index';

@Entry
@Component
struct Index {
  @StoragePropRef('windowWidth') windowWidth: number = 300;
  @StoragePropRef('isSplitMode') isSplitMode: boolean = false;
  private title: string = '';
  pageStack: NavPathStack = new NavPathStack()

  aboutToAppear() {
    this.title = getString($r('app.string.lable_name'), this.getUIContext())
    AppStorage.setOrCreate<NavPathStack>('PathStack', this.pageStack);
  }

  // addAction(title: string) {
  //   logger.info(TAG, `addAction: title = ${title}`)
  //   const uIContext = this.getUIContext()
  //   switch (title) {
  //     case getString($r('app.string.deque'), uIContext):
  //     case getString($r('app.string.linked_list'), uIContext):
  //     case getString($r('app.string.list'), uIContext):
  //     case getString($r('app.string.queue'), uIContext):
  //     case getString($r('app.string.stack'), uIContext):
  //     // case getString($r('app.string.vector'), uIContext):
  //       uIContext.getRouter().pushUrl({
  //         url: 'pages/AddInformationView',
  //         params: { 'title': title } as Record<string, string>
  //       })
  //       break;
  //     case getString($r('app.string.plain_array'), uIContext):
  //     case getString($r('app.string.hash_map'), uIContext):
  //     case getString($r('app.string.light_weight_map'), uIContext):
  //     case getString($r('app.string.tree_map'), uIContext):
  //       uIContext.getRouter().pushUrl({
  //         url: 'pages/AddKeyValuePairView',
  //         params: { 'title': title } as Record<string, string>
  //       })
  //       break;
  //     case getString($r('app.string.hash_set'), uIContext):
  //     case getString($r('app.string.light_weight_set'), uIContext):
  //     case getString($r('app.string.tree_set'), uIContext):
  //       uIContext.getRouter().pushUrl({
  //         url: 'pages/AddStringView',
  //         params: { 'title': title } as Record<string, string>
  //       })
  //       break;
  //   }
  // }

  build() {
    Navigation(this.pageStack) {
      Divider()
        .strokeWidth('1px')
        .color($r('sys.color.ohos_id_color_list_separator'))

      MenuList({
        menuList: $r('app.strarray.language_base_class_library_list'),
        // addAction: this.addAction,
        // childNavDestination: () => {
        //   Capabilities()
        // }
      })
    }
    .navDestination(this.NavRouter)
    .title(() => {
      this.CustomTitle()
    })
    .mode(this.isSplitMode ? NavigationMode.Split : NavigationMode.Stack)
    .navBarWidth(0.4 * this.windowWidth)
    .titleMode(NavigationTitleMode.Mini)
    .hideToolBar(true, false)
    .width('100%')
    .height('100%')
    .backgroundColor($r("sys.color.ohos_id_color_sub_background"))
  }

  @Builder
  NavRouter(name: string, param?: Object) {
    if (name == 'Capabilities') {
      Capabilities()
    } else if (name == 'Util') {
      Util()
    }
  }

  @Builder
  CustomTitle() {
    Row() {
      Text(this.title)
        .fontColor($r('app.color.black'))
        .fontSize(26)
        .fontWeight(FontWeight.Bold)
    }
    .height(56)
    .width('100%')
  }
}