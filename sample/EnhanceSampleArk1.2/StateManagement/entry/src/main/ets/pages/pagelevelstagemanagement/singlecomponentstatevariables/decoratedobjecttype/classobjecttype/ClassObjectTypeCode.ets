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
  applyStyles,
  Component,
  State,
  Column,
  Row,
  Text,
  TextAlign,
  Divider,
  FlexAlign,
  Button,
  ButtonType,
  Color,
  ObjectLink,
  CommonMethod,
  Observed,
  ColumnOptions,
  ClickEvent,
  $r,
  $rawfile,
  Padding,
  Margin
} from '@kit.ArkUI';

import common from '@ohos.app.ability.common';
import { ViewCodeText } from '../../../../../commoncomponents/ViewCodeText';
import { getResourceString } from '../../../../../utils/ResourceUtils';

@Component
export struct ClassObjectTypeCode {
  // 对象类型状态变量初始化
  @State classObjectData: ParentClass = new ParentClass(getResourceString(this.CONTEXT, $r('app.string.class_object')),
    getResourceString(this.CONTEXT, $r('app.string.class_attribute')), 1.0,
    new ChildClass(getResourceString(this.CONTEXT, $r('app.string.class_child_attribute')), 2.0));
  // 更新对象的次数
  private clickedCount: number = 0.0;
  private CONTEXT: common.UIAbilityContext = this.getUIContext().getHostContext() as common.UIAbilityContext;

  build() {
    Column({ space: 10.0 } as ColumnOptions) {
      // 点击查看源码
      ViewCodeText({ webSrc: $rawfile('ClassObjectTypeCode.ets.html') })
      Column({ space: 15.0 } as ColumnOptions) {
        Row() {
          Text(this.classObjectData.title)
            .fontSize(20.0)
            .textAlign(TextAlign.End)
          Divider()
            .layoutWeight(1.0)
            .strokeWidth(1.0)
            .margin({ top: 20.0, left: 5.0 } as Margin)
        }
        .width('100%')

        Column() {
          Row() {
            Text(this.classObjectData.attributeTitle)
              .fontSize(20.0)
            Text(`${this.classObjectData.attribute}`)
              .fontSize(20.0)
              .textAlign(TextAlign.End)
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)

          Divider()
            .width('100%')
            .strokeWidth(1.0)
        }
        .width('100%')
        .padding({ left: 50.0 } as Padding)

        ChildObjectComp({ childObject: this.classObjectData.child }) // 对象的属性，使用子组件显示
      }
      .width('100%')
      .backgroundColor($r('app.color.component_background_pink'))
      .padding(10.0)

      // 点击更新对象
      Button($r('app.string.class_type_update_object'))
        .onClick((event: ClickEvent) => {
          // 更新对象，把新的对象直接赋值给状态变量
          this.clickedCount++;
          let objectTitle: string = getResourceString(this.CONTEXT, $r('app.string.class_object')) + this.clickedCount;
          let attributeTitle: string =
            getResourceString(this.CONTEXT, $r('app.string.class_attribute')) + this.clickedCount;
          let childAttributeTitle: string = getResourceString(this.CONTEXT, $r('app.string.class_child_attribute'))
            + this.clickedCount;
          let newObject = new ParentClass(objectTitle, attributeTitle, this.classObjectData.attribute + 1.0,
            new ChildClass(childAttributeTitle, this.classObjectData.child.attribute + 1.0));
          this.classObjectData = newObject;
        })
        .id('updateObject')
        .fontColor($r('app.color.button_text_color'))
        .fontSize($r('app.float.button_text_size'))
        .type(ButtonType.Capsule)
        .applyStyles(buttonStyle)
      Button($r('app.string.class_type_update_attribute'))
        .onClick((event: ClickEvent) => {
          // 点击更新对象的属性
          this.classObjectData.attribute++;
        })
        .id('updateObjectAttribute')
        .fontColor($r('app.color.button_text_color'))
        .fontSize($r('app.float.button_text_size'))
        .type(ButtonType.Capsule)
        .applyStyles(buttonStyle)
      Button($r('app.string.class_type_update_child_attribute'))
        .onClick((event: ClickEvent) => {
          // 点击更新对象属性的属性
          this.classObjectData.child.attribute++;
        })
        .id('updateAttributeOfAttribute')
        .fontColor($r('app.color.button_text_color'))
        .fontSize($r('app.float.button_text_size'))
        .type(ButtonType.Capsule)
        .applyStyles(buttonStyle)
    }
    .width('100%')
    .padding(10.0)
    .border({ radius: $r('app.float.component_radius'), color: Color.Grey, width: $r('app.float.border_width') })
  }
}

// 对象中属性的组件
@Component
struct ChildObjectComp {
  // 使用@ObjectLink修饰，与父组件同步对象的属性
  @ObjectLink childObject: ChildClass;

  build() {
    Column() {
      Row() {
        Text(this.childObject.title)
          .fontSize(20.0)
        Text(`${this.childObject.attribute}`)
          .fontSize(20.0)
          .textAlign(TextAlign.End)
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      Divider()
        .width('100%')
        .strokeWidth(1.0)
    }
    .width('100%')
    .padding({ left: 100.0 } as Padding)
  }
}

function buttonStyle(instance: CommonMethod): void {
  instance.width('100%');
  instance.height($r('app.float.button_height'));
  instance.backgroundColor($r('app.color.button_background_color'));
}

// 要更新对象属性的属性，对象属性的类需要使用@Observed修饰
@Observed
class ChildClass {
  public title: string;
  public attribute: number;

  constructor(title: string, attribute: number) {
    this.title = title;
    this.attribute = attribute;
  }
}

@Observed
class ParentClass {
  public title: string;
  public attributeTitle: string;
  public attribute: number;
  public child: ChildClass;

  constructor(title: string, attributeTitle: string, attribute: number, child: ChildClass) {
    this.title = title;
    this.attributeTitle = attributeTitle;
    this.attribute = attribute;
    this.child = child;

  }
}
