'use static'
/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
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
  Resource,
  Component,
  State,
  Column,
  List,
  ForEach,
  ListItem,
  Button,
  ButtonType,
  Color,
  Text,
  Divider,
  $r,
  $rawfile,
  ColumnOptions,
  ClickEvent,
  Margin,
  Padding
} from '@kit.ArkUI';

import promptAction from '@ohos.promptAction';
import { ViewCodeText } from '../../../../../commoncomponents/ViewCodeText'

// 数组中元素的类
export class ArrayDataType {
  public id: number;
  public name: string;
  public age: number;

  constructor(id: number, name: string, age: number) {
    this.id = id;
    this.name = name;
    this.age = age;
  }
}

// 初始化数组数据
const ARRAY_TYPE_AGE_DATA: ArrayDataType[] = [new ArrayDataType(0, 'name', 17), new ArrayDataType(1, 'name', 18),
  new ArrayDataType(2, 'name', 19)]
// 初始化功能按钮字符串数据
const ARRAY_TYPE_BTN: Resource[] = [$r('app.string.array_type_add'), $r('app.string.array_type_delete'),
  $r('app.string.array_type_update')];

@Component
export struct ArrayTypeCode {
  // 数组类型状态变量初始化
  @State arrayTypeData: ArrayDataType[] = ARRAY_TYPE_AGE_DATA;

  build() {
    Column({ space: 10 } as ColumnOptions) {
      // 点击查看源码
      ViewCodeText({ webSrc: $rawfile('ArrayTypeCode.ets.html') })
      // 数组内容展示
      List() {
        ForEach(this.arrayTypeData, (item: ArrayDataType, index: number) => {
          ListItem() {
            ArrayDataItem({ arrayDataItem: item, itemIndex: index })
          }
        }, index => index.toString())

      }
      .width('100%')
      .height('40%')
      .backgroundColor($r('app.color.component_background_pink'))
      .padding({ left: 10, right: 10 } as Padding)

      // 功能按钮区
      ForEach(ARRAY_TYPE_BTN, (item: Resource, index: number) => {
        Button(item)
          .id(`arrayTypeBtn${index}`)
          .width('100%')
          .height($r('app.float.button_height'))
          .fontColor($r('app.color.button_text_color'))
          .fontSize($r('app.float.button_text_size'))
          .type(ButtonType.Capsule)
          .backgroundColor($r('app.color.button_background_color'))
          .onClick((event: ClickEvent) => {
            this.handleButtonClick(index)
          })
      }, index => index.toString())
    }
    .padding(10)
    .border({ radius: $r('app.float.component_radius'), color: Color.Grey, width: $r('app.float.border_width') })
  }

  handleButtonClick(index: number) {
    const intIndex = index | 0;
    switch (intIndex) {
      case 0:
        // 数组添加元素
        this.arrayTypeData.push(new ArrayDataType(this.arrayTypeData.length, `name`, 18));
        break;
      case 1:
        if (this.arrayTypeData.length === 0) {
          // 当数据没有数据的时候，点击删除按钮，出现提示弹窗
          promptAction.openToast({
            message: $r('app.string.array_type_deletetoast')
          });
        } else {
          // 数组删除元素
          this.arrayTypeData.splice(this.arrayTypeData.length - 1, 1); // 删除最后一个元素
        }
        break;
      case 2:
        if (this.arrayTypeData.length === 0) {
          // 当数据没有数据的时候，点击更新按钮，出现提示弹窗
          promptAction.openToast({
            message: $r('app.string.array_type_updatetoast')
          });
          break;
        }
        // 初始化一个对象后给数组中的元素赋值，更新数组元素
        let temp =
          new ArrayDataType(this.arrayTypeData[0].id, this.arrayTypeData[0].name, this.arrayTypeData[0].age + 1);
        this.arrayTypeData[0] = temp;
        break;
      default:
        break;
    }
  }
}

// 数组Item内容组件
@Component
struct ArrayDataItem {
  // private arrayDataItem: ArrayDataType;
  private arrayDataItem: ArrayDataType = new ArrayDataType(0, "default", 18);
  private itemIndex: number;

  build() {
    Column() {
      Text(`${this.arrayDataItem.name}${this.itemIndex}`)
        .width('100%')
        .fontColor($r('app.color.button_text_color'))
        .fontSize(20)
      Text(`age:${this.arrayDataItem.age}`)
        .width('100%')
        .fontColor($r('app.color.button_text_color'))
        .fontSize(20)
      Divider().width('100%')
        .strokeWidth(1)
        .margin({ top: 20 } as Margin)
    }
    .margin({ top: 20 } as Margin)
  }
}