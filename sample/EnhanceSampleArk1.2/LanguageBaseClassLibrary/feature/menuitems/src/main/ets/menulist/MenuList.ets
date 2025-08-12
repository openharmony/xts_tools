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
  Component,
  // BuilderParam,
  Resource,
  List,
  ListItem,
  BarState,
  Padding,
  Margin,
  $r,
  Column,
  ForEach,
  Builder,
  Divider
} from '@kit.ArkUI';
import { getStringArray } from 'common';
import { MainItem } from '../components/MainItem';
import { ItemGroup } from '../components/ItemGroup';
// import { MenuNavRouter } from '../components/MenuNavRouter';

@Component
export struct MenuList {
  // @BuilderParam childNavDestination: () => void = ()=>{};
  private menuListData: Array<string> = [''];
  private menuList: Resource | undefined = undefined;
  // private addAction?: (title: string) => void;
  private isSecond: boolean = false;

  aboutToAppear() {
    if (this.menuList) {
      this.menuListData = getStringArray(this.menuList as Resource, this.getUIContext());
    }
  }

  build() {
    List({ space: 12.0 }) {
      ListItem() {
        if (this.menuListData.length > 0) {
          // MenuNavRouter({
          //   childList: this.menuListData,
          //   addAction: this.addAction,
          //   navDestination: this.childNavDestination
          // })
          ItemGroup() {
            Column() {
              ForEach(this.menuListData, (item: string, index: number) => {
                if (index > 0.0) {
                  this.CustomDivider()
                }
                MainItem({ title: item, isSecond: this.isSecond })
              }, (item: string) => JSON.stringify(item))
            }
          }
        }
      }
    }
    .id('menu_list')
    .width('100%')
    .height('100%')
    .padding({ left: 12.0, right: 12.0, top: 12.0, bottom: 12.0 } as Padding)
    .backgroundColor($r('sys.color.ohos_id_color_sub_background'))
    .scrollBar(BarState.Off)
  }

  @Builder CustomDivider() {
    Divider()
      .strokeWidth('1px')
      .color($r('sys.color.ohos_id_color_list_separator'))
      .margin({ left: 8.0, right: 8.0 }as Margin)
  }
}