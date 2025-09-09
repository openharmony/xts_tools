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
  Row,
  Select,
  FlexAlign,
  Color,
  Link,
  $r,
  $rawfile,
  ColumnOptions,
  SelectOption
} from '@kit.ArkUI';

import common from '@ohos.app.ability.common';
import { LinkDescendentComponent } from './LinkDescendentComponent';
import { ColorType } from '../model/ColorType';
import { COLOR_SELECT_DATA, NEW_COLOR_SELECT_DATA } from '../data/ColorData';
import { getResourceString } from '../../../../utils/ResourceUtils';
import { ViewCodeText } from '../../../../commoncomponents/ViewCodeText';
import { Circle,} from '@ohos.arkui.component';

@Component
export struct StateGrandfatherComponent {
  @State circleColor: Resource = $r('app.color.circle_blue');
  @State selectColors: ColorType[] = COLOR_SELECT_DATA;
  @State selectValues: SelectOption[] = NEW_COLOR_SELECT_DATA;
  @State currentSelectIndex: int = 0;
  private CONTEXT: common.UIAbilityContext | undefined = undefined;

  aboutToAppear() {
    this.CONTEXT = ((this.getUIContext()?.getHostContext()) as common.UIAbilityContext);
  }

  build() {
    Column({ space: 10.0 }as ColumnOptions) {
      ViewCodeText({ webSrc: $rawfile('StateGrandfatherComponent.ets.html') })
      Text($r('app.string.deepnest_parent_titleone'))
        .fontSize($r('app.float.tips_font_size'))
        .fontColor($r('app.color.tips_font_color'))
        .width('100%')
        .textAlign(TextAlign.Center)
      Row() {
        Select(this.selectValues)
          .selected(this.currentSelectIndex)
          .value(this.selectValues[this.currentSelectIndex].value)
          .fontColor($r('app.color.button_text_color'))
          .font({ size: $r('app.float.tips_font_size') })
          .selectedOptionFont({ size: $r('app.float.tips_font_size') })
          .optionFont({ size: $r('app.float.tips_font_size') })
          .id('grandfatherCompA')
          .onSelect((index: number, text?: string | undefined) => {
            this.currentSelectIndex = index as int;
            this.circleColor = this.selectColors[index as int].color;
          })
        Circle()
          .size({ width: $r('app.float.circle_size'), height: $r('app.float.circle_size') })
          .fill(this.circleColor)
      }.justifyContent(FlexAlign.SpaceAround)
      .width('100%')
      LinkChildComp({ circleColor: this.circleColor, currentSelectIndex: this.currentSelectIndex })
    }.padding(10.0)
    .border({ radius: $r('app.float.component_radius'), color: Color.Grey, width: $r('app.float.border_width') })
  }
}

@Component
struct LinkChildComp {
  @Link circleColor: Resource;
  @Link currentSelectIndex: int;

  build() {
    Column() {
      Text($r('app.string.deepnest_child_titleone'))
        .fontColor($r('app.color.tips_font_color'))
        .fontSize($r('app.float.button_text_size'))
        .width('100%')
        .textAlign(TextAlign.Center)
        .height($r('app.float.button_height'))
      LinkDescendentComponent({
        circleColor: this.circleColor,
        currentSelectIndex: this.currentSelectIndex
      })
    }
    .padding(10.0)
    .border({ radius: $r('app.float.component_radius'), color: Color.Blue, width: $r('app.float.border_width') })
  }
}