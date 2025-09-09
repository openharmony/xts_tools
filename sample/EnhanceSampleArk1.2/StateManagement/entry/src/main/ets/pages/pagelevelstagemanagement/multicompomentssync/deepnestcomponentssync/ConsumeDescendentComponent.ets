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
  Consume,
  Resource,
  Column,
  Row,
  Select,
  FlexAlign,
  Text,
  TextAlign,
  Color,
  $r,
  $rawfile,
  Margin,
  SelectOption
} from '@kit.ArkUI';

import common from '@ohos.app.ability.common';
import { ColorType } from '../model/ColorType';
import { COLOR_SELECT_DATA, NEW_COLOR_SELECT_DATA } from '../data/ColorData';
import { getResourceString } from '../../../../utils/ResourceUtils';
import { ViewCodeText } from '../../../../commoncomponents/ViewCodeText';
import { Circle,} from '@ohos.arkui.component';

@Component
export struct ConsumeDescendentComponent {
  @State selectColors: ColorType[] = COLOR_SELECT_DATA;
  @State selectValues: SelectOption[] = NEW_COLOR_SELECT_DATA;
  @Consume consumeCircleColor: Resource;
  @Consume currentSelectIndex: int;
  private CONTEXT: common.UIAbilityContext = this.getUIContext().getHostContext() as common.UIAbilityContext;

  build() {
    Column() {
      ViewCodeText({ webSrc: $rawfile('ConsumeDescendentComponent.ets.html') })
      Row() {
        Select(this.selectValues)
          .selected(this.currentSelectIndex)
          .value(this.selectValues[this.currentSelectIndex].value)
          .fontColor($r('app.color.button_text_color'))
          .font({ size: $r('app.float.tips_font_size') })
          .selectedOptionFont({ size: $r('app.float.tips_font_size') })
          .optionFont({ size: $r('app.float.tips_font_size') })
          .id('grandsonCompB')
          .onSelect((index: number,text?: string | undefined) => {
            this.currentSelectIndex = index as int;
            this.consumeCircleColor = this.selectColors[index as int].color;
          })
        Circle()
          .size({ width: $r('app.float.circle_size'), height: $r('app.float.circle_size') })
          .fill(this.consumeCircleColor)

      }.justifyContent(FlexAlign.SpaceAround)
      .width('100%')
      .margin({ bottom: 6.0 }as Margin)

      Text($r('app.string.deepnest_descendent_titletwo'))
        .fontColor($r('app.color.tips_font_color'))
        .fontSize($r('app.float.button_text_size'))
        .width('100%')
        .textAlign(TextAlign.Center)
    }
    .padding(10.0)
    .border({ radius: $r('app.float.component_radius'), color: Color.Red, width: $r('app.float.border_width') })
  }
}