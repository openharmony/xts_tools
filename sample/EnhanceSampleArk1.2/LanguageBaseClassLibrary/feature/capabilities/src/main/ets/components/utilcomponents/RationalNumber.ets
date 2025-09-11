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
  TextAttribute,
  BorderStyle,
  TextAlign,
  // Preview,
  Component,
  State,
  Scroll,
  Column,
  ColumnOptions,
  Text,
  BarState,
  Alignment,
  Builder,
  Row,
  FontWeight,
  VerticalAlign,
  FlexAlign,
  $r,
  Padding,
  Margin,
  ClickEvent,
  UIContext
} from '@kit.ArkUI';

import { compareTo, getDenominator, getValueOf, isFinite1, isNaN1, isZero } from '../../util/RationalNumberUtil';
import { GridOperation } from '../GridOperation';

const NUMERATOR1: number = 1.0;
const DENOMINATOR1: number = 2.0;
const NUMERATOR2: number = 3.0;
const DENOMINATOR2: number = 4.0;

function textStyle(this_TextAttribute: TextAttribute): TextAttribute {
  this_TextAttribute.border({ width: 1.0, color: '#000000', radius: 10.0, style: BorderStyle.Solid });
  this_TextAttribute.fontSize(24.0);
  this_TextAttribute.textAlign(TextAlign.Center);
  return this_TextAttribute;
}

// @Preview
@Component
export struct RationalNumber {
  @State resultText: string = '';

  build() {
    Scroll() {
      Column({ space: 12.0 } as ColumnOptions) {
        Text($r('app.string.first_rational_number'))
          .width('100%')
          .fontSize(24.0)
          .textAlign(TextAlign.Start)
        this.Texts(NUMERATOR1, DENOMINATOR1)
        Text($r('app.string.second_rational_number'))
          .width('100%')
          .fontSize(24.0)
          .textAlign(TextAlign.Start)
        this.Texts(NUMERATOR2, DENOMINATOR2)
        Text(this.resultText)
          // .textStyle()
          .width('100%')
          .height(100.0)
        GridOperation({ operationRes: $r('app.strarray.rational_number_operations'), doOperation: this.doOperation })
      }
      .width('100%')
      .padding(16.0)
    }
    .scrollBar(BarState.Off)
    .align(Alignment.Start)
  }

  @Builder
  Texts(numerator: number, denominator: number) {
    Row() {
      Text($r('app.string.numerator'))
        .fontSize(24.0)
        .fontWeight(FontWeight.Bold)
      Text(`${numerator}`)
        // .textStyle()
        .margin({ left: 5.0 } as Margin)
        .layoutWeight(1.0)
      Text($r('app.string.denominator'))
        .fontSize(24.0)
        .fontWeight(FontWeight.Bold)
      Text(`${denominator}`)
        // .textStyle()
        .margin({ left: 5.0 } as Margin)
        .layoutWeight(1.0)
    }
    .width('100%')
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.SpaceAround)
  }

  doOperation (index: number) {
    const uIContext = this.getUIContext()
    switch (index as int) {
      case 0:
        this.resultText = compareTo(uIContext);
        break;
      case 1:
        this.resultText = getValueOf(uIContext);
        break;
      case 2:
        this.resultText = getDenominator(uIContext);
        break;
      case 3:
        this.resultText = isZero(uIContext);
        break;
      case 4:
        this.resultText = isNaN1(uIContext);
        break;
      case 5:
        this.resultText = isFinite1(uIContext);
        break;
      default:
        break;
    }
  }
}