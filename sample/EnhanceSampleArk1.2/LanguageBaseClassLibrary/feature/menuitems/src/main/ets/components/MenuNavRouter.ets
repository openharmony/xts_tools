// 'use static'
/**
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

// import {
//   Component,
//   StorageLink,
//   BuilderParam,
//   Builder,
//   Divider,
//   Column,
//   ForEach,
//   NavDestination,
//   NavPathStack,
//   Row,
//   Text,
//   FontWeight,
//   Image,
//   ImageFit,
//   Visibility,
//   FlexAlign,
//   Resource,
//   $r,
//   Margin,
//   Padding,
//   ClickEvent
// } from '@kit.ArkUI';
// import { common } from '@kit.AbilityKit';
// import { logger } from 'common';
// import { ItemGroup } from './ItemGroup';
// import { MainItem } from './MainItem';
//
// @Component
// export struct MenuNavRouter {
//   // @StorageLink('selectedLabel') selectedLabel: string = '';
//   // @StorageLink('selectedSecondLabel') selectedSecondLabel: string = '';
//   // @BuilderParam navDestination: () => void = ()=>{};
//   private childList: Array<string> = [''];
//   // private addAction: (title: string) => void = ()=>{};
//
//   @Builder CustomDivider() {
//     Divider()
//       .strokeWidth('1px')
//       .color($r('sys.color.ohos_id_color_list_separator'))
//       .margin({ left: 8.0, right: 8.0 }as Margin)
//   }
//
//   build() {
//     ItemGroup() {
//       Column() {
//         ForEach(this.childList, (item: string, index: number) => {
//           if (index > 0.0) {
//             this.CustomDivider()
//           }
//           MainItem({ title: item })
//
//           // NavDestination() { this.navDestination }
//           //   .title(() => {
//           //       this.CustomTitle(item)
//           //   })
//           //   .backgroundColor($r('sys.color.ohos_id_color_sub_background'))
//           //   .onActive(() => {
//           //     // 点击一级路由菜单进入时
//           //     if (this.addAction) {
//           //       this.selectedLabel = item;
//           //       logger.info(TAG, `NavRouter selectedLabel=${item}`);
//           //     }
//           //     // 点击二级路由菜单进入时
//           //     else {
//           //       this.selectedSecondLabel = item;
//           //       logger.info(TAG, `NavRouter selectedSecondLabel=${item}`);
//           //     }
//           //   })
//         }, (item: string) => JSON.stringify(item))
//       }
//     }
//   }
//
//   @Builder
//   CustomTitle(title: string) {
//     Row() {
//       Text(title)
//         .fontColor($r('app.color.black'))
//         .fontSize(16.0)
//         .fontWeight(FontWeight.Bold)
//
//       Row() {
//         Image($r('app.media.ic_public_add'))
//           .height(24.0)
//           .aspectRatio(1.0)
//           .objectFit(ImageFit.Contain)
//       }
//       .id('add')
//       .height('100%')
//       .aspectRatio(1.0)
//       .visibility(this.showAddButton(title) ? Visibility.Visible : Visibility.None)
//       .onClick((e: ClickEvent) => {
//         logger.info(TAG, 'addAction')
//         if (this.addAction) {
//           this.addAction(title)
//         }
//       })
//     }
//     .width('85%')
//     .height(56.0)
//     .justifyContent(FlexAlign.SpaceBetween)
//   }
//
//   showAddButton(title: string) {
//     let ret = false
//     switch (title) {
//       case this.getString($r('app.string.deque')):
//       case this.getString($r('app.string.hash_map')):
//       case this.getString($r('app.string.hash_set')):
//       case this.getString($r('app.string.light_weight_map')):
//       case this.getString($r('app.string.light_weight_set')):
//       case this.getString($r('app.string.linked_list')):
//       case this.getString($r('app.string.list')):
//       case this.getString($r('app.string.plain_array')):
//       case this.getString($r('app.string.queue')):
//       case this.getString($r('app.string.stack')):
//       case this.getString($r('app.string.tree_map')):
//       case this.getString($r('app.string.tree_set')):
//       case this.getString($r('app.string.vector')):
//         ret = true
//         break;
//     }
//     return ret
//   }
//
//   getString(resource: Resource): string {
//     let context = this.getUIContext().getHostContext() as common.UIAbilityContext;
//     let resultStr = context.resourceManager.getStringSync(resource.id);
//     logger.info(TAG, `getString = ${resultStr}`);
//     return resultStr
//   }
// }