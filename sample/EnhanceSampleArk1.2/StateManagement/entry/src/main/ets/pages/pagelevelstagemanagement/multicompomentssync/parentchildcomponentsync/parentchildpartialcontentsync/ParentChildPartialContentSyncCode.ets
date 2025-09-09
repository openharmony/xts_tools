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

import { PropRef } from '@kit.ArkUI';

import {
  Observed,
  Resource,
  Component,
  State,
  Column,
  Text,
  TextAlign,
  ForEach,
  Color,
  ObjectLink,
  TextInput,
  $r,
  $rawfile,
  ColumnOptions,
  ClickEvent,
} from '@kit.ArkUI';

import { ObjectLinkComponent } from './ObjectLinkComponent';
import { ViewCodeText } from '../../../../../commoncomponents/ViewCodeText';

@Observed
export class ClassObject {
  public elementType: Resource;
  public attributeType: Resource | string;

  constructor(elementType: Resource, attributeType: Resource | string) {
    this.elementType = elementType;
    this.attributeType = attributeType;
  }
}

const PARENT_DATA: ClassObject[] = [new ClassObject($r('app.string.partial_sync_element_one'), $r('app.string.partial_sync_attribute_one')),
  new ClassObject($r('app.string.partial_sync_element_two'), $r('app.string.partial_sync_attribute_two')),
  new ClassObject($r('app.string.partial_sync_element_three'), $r('app.string.partial_sync_attribute_three'))];

@Component
export struct ParentChildPartialContentSyncCode {
  @State parentData: ClassObject[] = PARENT_DATA;
  @State syncIndex: int = 0;

  build() {
    Column({ space: 10.0 }as ColumnOptions) {
      ViewCodeText({ webSrc: $rawfile('ParentChildPartialContentSyncCode.ets.html') })

      Text($r('app.string.partial_sync_parent_tips'))
        .fontColor($r('app.color.tips_font_color'))
        .fontSize($r('app.float.tips_font_size'))
        .width('100%')
        .textAlign(TextAlign.Start)
      Column() {
        ForEach(this.parentData, (item: ClassObject, index: number) => {
          Column() {
            ParentCompDataItem({ index: index, syncIndex: this.syncIndex, childObject: item })
          }
          .backgroundColor(index === this.syncIndex ? $r('app.color.component_background_pink') : undefined)
          .onClick(() : void=> {
            this.syncIndex = index as int;
          })
        }, index => index.toString())
      }
      .width('100%')
      .backgroundColor($r('app.color.component_background_pink'))

      ObjectLinkComponent({ childObjectData: this.parentData[this.syncIndex as int] })
    }
    .width('100%')
    .padding(10.0)
    .border({ radius: $r('app.float.component_radius'), color: Color.Grey, width: $r('app.float.border_width') })
  }
}

@Component
struct ParentCompDataItem {
  private index: number;
  syncIndex: number;
  @ObjectLink childObject: ClassObject;

  build() {
    Column() {
      Text(this.childObject.elementType)
        .width('100%')
        .fontSize(20.0)
      if (this.index === this.syncIndex) {
        TextInput({ text: this.childObject.attributeType })
          .fontSize(20.0)
          .id(`attribute${this.index + 1.0}`)
          .onChange((value: string):void => {
            this.childObject.attributeType = value;
          })
      } else {
        Text(this.childObject.attributeType)
          .width('100%')
          .fontSize(20.0)
      }
    }
    .padding(10.0)
    .id(`arrayElement${this.index}`)
  }
}

