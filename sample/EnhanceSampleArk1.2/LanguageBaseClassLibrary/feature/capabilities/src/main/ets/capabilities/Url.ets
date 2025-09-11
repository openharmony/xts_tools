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
  // Preview,
  Component,
  State,
  Scroll,
  Column,
  Text,
  Color,
  FontWeight,
  BarState,
  Alignment,
  $r,
  Padding,
  Margin,
  ClickEvent,
} from '@kit.ArkUI';

// import { ColumnOperation } from '../components/ColumnOperation';
import { changeValue, deleteNode, getFirstNode, insertNode } from '../util/UrlUtil';

const URL_NET: string = 'https://gitee.com/openharmony/';

// @Preview
@Component
export struct Url {
  @State output: string = URL_NET;

  build() {
    Scroll() {
      Column() {
        Text(this.output)
          .id('output')
          .width('95%')
          .height('30%')
          .fontSize(15.0)
          .padding(10.0)
          .margin({ left: 10.0, right: 10.0, top: 10.0 } as Margin)
          .border({ width: 2.0, radius: 5.0, color: Color.Gray })
        Text(URL_NET)
          .fontSize(15.0)
          .margin({ top: 15.0 } as Margin)
          .fontWeight(FontWeight.Bold)
        // ColumnOperation({ operationRes: $r('app.strarray.url_operations'), doOperation: this.doOperation })
      }
      .width('100%')
      .padding(16.0)
    }
    .scrollBar(BarState.Off)
    .align(Alignment.Start)
  }

  doOperation  (index: number)  {
    switch (index as int) {
      case 0:
        this.output = insertNode();
        break;
      case 1:
        this.output = deleteNode();
        break;
      case 2:
        this.output = getFirstNode(this.getUIContext());
        break;
      case 3:
        this.output = changeValue();
        break;
      default:
        break;
    }
  }
}