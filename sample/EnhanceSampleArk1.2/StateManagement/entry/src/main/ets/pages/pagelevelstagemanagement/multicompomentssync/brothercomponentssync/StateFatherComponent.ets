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
  State,
  Resource,
  Column,
  Text,
  TextAlign,
  Color,
  $r,
  $rawfile,
  ColumnOptions,
} from '@kit.ArkUI';

import { ColorType } from '../model/ColorType';
import { COLOR_SELECT_DATA } from '../data/ColorData';
import { LinkBrotherOneComponent } from './LinkBrotherOneComponent';
import { LinkBrotherTwoComponent } from './LinkBrotherTwoComponent';
import { ViewCodeText } from '../../../../commoncomponents/ViewCodeText';

@Component
export struct StateFatherComponent {
  @State circleColor: Resource = $r('app.color.circle_blue');
  @State currentSelectIndex: int = 0;

  build() {
    Column({ space: 10.0 }as ColumnOptions) {
      ViewCodeText({ webSrc: $rawfile('StateFatherComponent.ets.html') })
      Text($r('app.string.parent_titleone'))
        .fontSize($r('app.float.tips_font_size'))
        .fontColor($r('app.color.tips_font_color'))
        .width('100%')
        .textAlign(TextAlign.Center)
      LinkBrotherOneComponent({
        circleColor: this.circleColor,
        currentSelectIndex: this.currentSelectIndex
      })
      LinkBrotherTwoComponent({
        circleColor: this.circleColor,
        currentSelectIndex: this.currentSelectIndex
      })
    }.padding(10.0)
    .border({ radius: $r('app.float.component_radius'), color: Color.Grey, width: $r('app.float.border_width') })
  }
}

