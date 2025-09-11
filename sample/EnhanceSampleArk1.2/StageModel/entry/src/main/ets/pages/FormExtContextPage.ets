'use static'
/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
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
  Entry,
  Component,
  Row,
  Column,
  $r,
  Button,
  getUIContext,
  ButtonAttribute,
  ClickEvent,
  Alignment,
} from '@kit.ArkUI';

import FormExContextController from '../feature/FormExtContextController'
import { PublicTitleBar } from './component/PublicTitleBar'

@Entry
@Component
struct FormExContextPage {
  private formExContext: FormExContextController = new FormExContextController()

  build() {
    Row() {
      Column() {
        PublicTitleBar({ textName: $r("app.string.form_ext_context_page") })
        Column() {
          Button($r("app.string.start_ability"))
            .fancy(() => {
              this.formExContext.startAbility(getUIContext().getHostContext(this))
            })
        }
      }
      .width('100%')
      .height('100%')
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F1F3F5')
    .padding({ left: '3%', right: '3%' })
  }
}

function fancy(this: ButtonAttribute, click: (event?: ClickEvent) => void): this {
    this.width('60%');
    this.height(40);
    this.align(Alignment.Center);
    this.margin({ top: 30 });
    this.onClick(click);
    return this;
}
