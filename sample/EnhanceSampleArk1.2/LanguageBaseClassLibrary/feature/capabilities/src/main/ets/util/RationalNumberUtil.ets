'use static';
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
import { $r, UIContext } from '@kit.ArkUI';

import util from '@ohos.util';
import { getString } from 'common';

const NUMERATOR1: number = 1.0;
const DENOMINATOR1: number = 2.0;
const NUMERATOR2: number = 3.0;
const DENOMINATOR2: number = 4.0;
const RATIONAL_NUMBER1 = util.RationalNumber.parseRationalNumber(NUMERATOR1, DENOMINATOR1);
const RATIONAL_NUMBER2 = util.RationalNumber.parseRationalNumber(NUMERATOR2, DENOMINATOR2);

export function compareTo(uIContext: UIContext): string {
  let result: number = RATIONAL_NUMBER1.compare(RATIONAL_NUMBER2);
  if (result === 0.0) {
    return getString($r('app.string.equal_to'), uIContext);
  }
  if (result === 1.0) {
    return getString($r('app.string.greater_than'), uIContext);
  }
  if (result === -1.0) {
    return getString($r('app.string.less_than'), uIContext);
  }
  return '';
}

export function getValueOf(uIContext: UIContext): string {
  let valueOf: number = RATIONAL_NUMBER1.valueOf();
  return `${getString($r('app.string.rational_number_value_of'), uIContext)}${valueOf}`;
}

export function getDenominator(uIContext: UIContext): string {
  let numerator: number = RATIONAL_NUMBER1.getNumerator();
  let denominator: number = RATIONAL_NUMBER1.getDenominator();
  return `${getString($r('app.string.numerator'), uIContext)}${numerator},
    ${getString($r('app.string.denominator'), uIContext)}${denominator}`;
}

export function isZero(uIContext: UIContext): string {
  let isZero = RATIONAL_NUMBER1.isZero();
  console.log('ButtonComponent isZero' + isZero);
  if (isZero) {
    return `${getString($r('app.string.first_rational_number'), uIContext)} is zero`;
  } else {
    return `${getString($r('app.string.first_rational_number'), uIContext)} is not zero`;
  }
}

export function isNaN1(uIContext: UIContext): string {
  let isNaN = RATIONAL_NUMBER1.isNaN();
  if (isNaN) {
    return `${getString($r('app.string.first_rational_number'), uIContext)} is NaN`;
  } else {
    return `${getString($r('app.string.first_rational_number'), uIContext)} is not NaN`;
  }
}

export function isFinite1(uIContext: UIContext): string {
  let isFinite = RATIONAL_NUMBER1.isFinite();
  if (isFinite) {
    return `${getString($r('app.string.first_rational_number'), uIContext)} is Finite`;
  } else {
    return `${getString($r('app.string.first_rational_number'), uIContext)} is not Finite`;
  }
}