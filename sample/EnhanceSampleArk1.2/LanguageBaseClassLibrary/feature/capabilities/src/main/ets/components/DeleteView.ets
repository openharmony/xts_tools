'use static'
/*
* Copyright (c) 2023 Hunan OpenValley Digital Industry Development Co., Ltd.
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
  Row,
  Image,
  FlexAlign,
  VerticalAlign,
  $r,
  Margin,
  ClickEvent,
  Link
} from '@kit.ArkUI';

@Component
export struct DeleteView {
  private enable: boolean = false;
  private id: string = '';
  private enabled: boolean = true;
  private onClick?: (event?: ClickEvent) => void;

  build() {
    Row() {
      Image($r('app.media.ic_delete_plane'))
        .width(24.0)
        .aspectRatio(1.0)
    }
    .id(this.id)
    .enabled(this.enabled)
    .onClick(this.onClick)
    .margin({ left: 12.0 } as Margin)
    .width(40.0)
    .aspectRatio(1.0)
    .borderRadius(20.0)
    .justifyContent(FlexAlign.Center)
    .alignItems(VerticalAlign.Center)
    .backgroundColor($r('app.color.bg_btn_red'))
    .opacity(this.enable ? 1.0 : 0.25)
  }
}