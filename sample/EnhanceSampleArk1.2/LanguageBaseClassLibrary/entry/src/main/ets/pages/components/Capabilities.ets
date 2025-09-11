'use static'
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

import {
  $r,
  Row,
  Text,
  Image,
  ImageFit,
  Visibility,
  FontWeight,
  FlexAlign,
  Component,
  StorageLink,
  Column,
  Divider,
  Padding,
  NavDestination,
  UIContext,
  Builder,
  ClickEvent
} from '@kit.ArkUI';
import { MenuList } from 'menuitems'
import { logger, getString } from 'common';
import {
  ArrayListView,
  ConvertXml,
  Url,
  // Util,
  ProcessMessage,
  TaskPool,
  DequeView,
  HashMapView,
  HashSetView,
  LightWeightMapView,
  LightWeightSetView,
  LinkedListView,
  ListView,
  PlainArrayView,
  QueueView,
  StackView,
  TreeMapView,
  TreeSetView,
  // VectorView
} from 'capabilities';

const TAG: string = 'Capabilities';

@Component
export struct Capabilities {
  @StorageLink('selectedLabel') selectedLabel: string = '';
  private type: string = '';

  @Builder
  Capabilities() {
    // 此处根据选中的菜单，显示对应的页面内容
    const uIContext = this.getUIContext()
    if (this.selectedLabel === getString($r('app.string.xml'), uIContext)) {
      ConvertXml()
    }
    if (this.selectedLabel === getString($r('app.string.process'), uIContext)) {
      ProcessMessage()
    }
    if (this.selectedLabel === getString($r('app.string.url'), uIContext)) {
      Url()
    }
    if (this.selectedLabel === getString($r('app.string.array_list'), uIContext)) {
      ArrayListView()
    }
    if (this.selectedLabel === getString($r('app.string.task_pool'), uIContext)) {
      TaskPool()
    }
    if (this.selectedLabel === getString($r('app.string.deque'), uIContext)) {
      DequeView()
      this.type = 'Information'
    }
    if (this.selectedLabel === getString($r('app.string.hash_map'), uIContext)) {
      HashMapView()
      this.type = 'KeyValuePair'
    }
    if (this.selectedLabel === getString($r('app.string.hash_set'), uIContext)) {
      HashSetView()
      this.type = 'String'
    }
    if (this.selectedLabel === getString($r('app.string.light_weight_map'), uIContext)) {
      LightWeightMapView()
      this.type = 'KeyValuePair'
    }
    if (this.selectedLabel === getString($r('app.string.light_weight_set'), uIContext)) {
      LightWeightSetView()
      this.type = 'String'
    }
    if (this.selectedLabel === getString($r('app.string.linked_list'), uIContext)) {
      LinkedListView()
      this.type = 'Information'
    }
    if (this.selectedLabel === getString($r('app.string.list'), uIContext)) {
      ListView()
      this.type = 'Information'
    }
    if (this.selectedLabel === getString($r('app.string.plain_array'), uIContext)) {
      PlainArrayView()
      this.type = 'KeyValuePair'
    }
    if (this.selectedLabel === getString($r('app.string.queue'), uIContext)) {
      QueueView()
      this.type = 'Information'
    }
    if (this.selectedLabel === getString($r('app.string.stack'), uIContext)) {
      StackView()
      this.type = 'Information'
    }
    if (this.selectedLabel === getString($r('app.string.tree_map'), uIContext)) {
      TreeMapView()
      this.type = 'KeyValuePair'
    }
    if (this.selectedLabel === getString($r('app.string.tree_set'), uIContext)) {
      TreeSetView()
      this.type = 'String'
    }
    // if (this.selectedLabel === getString($r('app.string.vector'), uIContext)) {
    //   VectorView()
    // }
  }

  build() {
    NavDestination() {
      Divider()
        .strokeWidth('1px')
        .color($r('sys.color.ohos_id_color_list_separator'))

      if (this.selectedLabel === getString($r('app.string.util'), this.getUIContext())) {
        MenuList({
          menuList: $r('app.strarray.util_menu'),
          isSecond: true
        })
      }
      Column() {
        this.Capabilities()
      }
      .height('100%')
      .padding({ left: 12.0, right: 12.0 }as Padding)
      .backgroundColor($r('sys.color.ohos_id_color_sub_background'))
    }
    .title(() => {
      this.CustomTitle(this.selectedLabel)
    }, {backgroundColor: $r("sys.color.ohos_id_color_sub_background")})
    .width('100%')
    .height('100%')
    .backgroundColor($r("sys.color.ohos_id_color_sub_background"))
  }

  @Builder
  CustomTitle(title: string) {
    Row() {
      Text(title)
        .fontColor($r('app.color.black'))
        .fontSize(16.0)
        .fontWeight(FontWeight.Bold)

      Row() {
        Image($r('app.media.ic_public_add'))
          .height(24.0)
          .aspectRatio(1.0)
          .objectFit(ImageFit.Contain)
      }
      .id('add')
      .height('100%')
      .aspectRatio(1.0)
      .visibility(this.type !== '' ? Visibility.Visible : Visibility.None)
      .onClick((e: ClickEvent) => {
        if (this.type !== '') {
          logger.info(TAG, 'addAction')
          this.addAction(title, this.type)
        }
      })
    }
    .width('85%')
    .height(56.0)
    .justifyContent(FlexAlign.SpaceBetween)
  }

  addAction(title: string, type: string): void {
    logger.info(TAG, `addAction: title = ${title}`)
    const uIContext = this.getUIContext()
    switch (type) {
      case 'Information':
        uIContext.getRouter().pushUrl({
          url: 'pages/AddInformationView',
        })
        break;
      case 'KeyValuePair':
        uIContext.getRouter().pushUrl({
          url: 'pages/AddKeyValuePairView',
          // params: { 'title': title } as Record<string, string>
        })
        break;
      case 'String':
        uIContext.getRouter().pushUrl({
          url: 'pages/AddStringView',
          // params: { 'title': title } as Record<string, string>
        })
        break;
    }
  }
}