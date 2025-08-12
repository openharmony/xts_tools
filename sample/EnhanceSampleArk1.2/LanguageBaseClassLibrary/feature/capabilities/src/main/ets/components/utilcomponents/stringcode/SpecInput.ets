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
  Resource,
  Link,
  Row,
  Text,
  TextAlign,
  $r,
} from '@kit.ArkUI';

@Component
export struct SpecInput {
  private result_str: Resource = $r('app.string.result_f');
  @Link specStrInput: string;

  build() {
    Row() {
      Text(this.result_str)
        .height(30.0)
        .fontSize(15.0)
        .textAlign(TextAlign.Start)
      Text(this.specStrInput)
        .height(30.0)
        .layoutWeight(1.0)
        .fontSize(15.0)
        .textAlign(TextAlign.Start)
        .border({ width: 2.0, radius: 5.0, color: "#0D9FFB" })
    }
    .width('100%')
  }
}