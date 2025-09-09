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

import { applyStyles } from '@kit.ArkUI';

import {
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
  Margin,
} from '@kit.ArkUI';

import common from '@ohos.app.ability.common';
import { ViewCodeText } from '../../../../../commoncomponents/ViewCodeText';
import { getResourceString } from '../../../../../utils/ResourceUtils';

@Component
export struct ClassObjectTypeCode {
  @State classObjectData: ParentClass | undefined = undefined;
  private clickedCount: number = 0.0;
  private CONTEXT: common.UIAbilityContext | undefined = undefined;

  aboutToAppear() {
    this.CONTEXT = ((this.getUIContext()?.getHostContext()) as common.UIAbilityContext);
    this.classObjectData = new ParentClass(getResourceString(this.CONTEXT as common.UIAbilityContext, $r('app.string.class_object')),
                           getResourceString(this.CONTEXT as common.UIAbilityContext, $r('app.string.class_attribute')), 1.0,
                           new ChildClass(getResourceString(this.CONTEXT as common.UIAbilityContext, $r('app.string.class_child_attribute')), 2.0));
  }

  build() {
    Column({ space: 10.0 }as ColumnOptions) {
      ViewCodeText({ webSrc: $rawfile('ClassObjectTypeCode.ets.html') })
      Column({ space: 15.0 }as ColumnOptions) {
        Row() {
          Text((this.classObjectData as ParentClass).title)
            .fontSize(20.0)
            .textAlign(TextAlign.End)
          Divider()
            .layoutWeight(1.0)
            .strokeWidth(1.0)
            .margin({ top: 20.0, left: 5.0 }as Margin)
        }
        .width('100%')

        Column() {
          Row() {
            Text((this.classObjectData as ParentClass).attributeTitle)
              .fontSize(20.0)
            Text(`${(this.classObjectData as ParentClass).attribute}`)
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
        .padding({ left: 50.0 }as Padding )

        ChildObjectComp({ childObject: (this.classObjectData as ParentClass).child })
      }
      .width('100%')
      .backgroundColor($r('app.color.component_background_pink'))
      .padding(10.0)
      Button($r('app.string.class_type_update_object'))
        .onClick((event:ClickEvent) => {
          this.clickedCount++;
          let objectTitle: string = getResourceString(this.CONTEXT as common.UIAbilityContext, $r('app.string.class_object')) + this.clickedCount;
          let attributeTitle: string = getResourceString(this.CONTEXT as common.UIAbilityContext, $r('app.string.class_attribute')) + this.clickedCount;
          let childAttributeTitle: string = getResourceString(this.CONTEXT as common.UIAbilityContext, $r('app.string.class_child_attribute'))
          + this.clickedCount;
          let newObject = new ParentClass(objectTitle, attributeTitle, (this.classObjectData as ParentClass).attribute + 1.0,
                          new ChildClass(childAttributeTitle, (this.classObjectData as ParentClass).child.attribute + 1.0));
          this.classObjectData = newObject;
        })
        .id('updateObject')
        .fontColor($r('app.color.button_text_color'))
        .fontSize($r('app.float.button_text_size'))
        .type(ButtonType.Capsule)
        .applyStyles(buttonStyle)
      Button($r('app.string.class_type_update_attribute'))
        .onClick((event:ClickEvent) => {
          (this.classObjectData as ParentClass).attribute++;
        })
        .id('updateObjectAttribute')
        .fontColor($r('app.color.button_text_color'))
        .fontSize($r('app.float.button_text_size'))
        .type(ButtonType.Capsule)
        .applyStyles(buttonStyle)
      Button($r('app.string.class_type_update_child_attribute'))
        .onClick((event:ClickEvent) => {
          (this.classObjectData as ParentClass).child.attribute++;
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

@Component
struct ChildObjectComp {
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
    .padding({ left: 100.0 }as Padding )
  }
}

function buttonStyle(instance: CommonMethod): void {
    instance.width('100%');
    instance.height($r('app.float.button_height'));
    instance.backgroundColor($r('app.color.button_background_color'));
}

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
