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
  State,
  Column,
  GridRow,
  GridRowDirection,
  Row,
  ForEach,
  GridCol,
  Button,
  Text,
  Color,
  ButtonType,
  FlexAlign,
  Padding,
  Margin,
  ClickEvent,
  ButtonOptions
} from '@kit.ArkUI';

import { getStringArray } from 'common';

@Component
export struct GridOperation {
  private operationRes: Resource | undefined = undefined;
  @State operationSource: string[] = [''];
  private doOperation: (index: number) => void = () => {};

  build() {
    Column() {
      GridRow({ columns: 12.0, gutter: { x: 2.0, y: 5.0 },
        direction: GridRowDirection.Row
      }) {
        ForEach(this.operationSource, (item: string, index: number) => {
          GridCol({ span: { xs: 6.0, sm: 6.0, md: 4.0, lg: 4.0 } }) {
            Row() {
              Button({} as ButtonOptions) {
                Text(item)
                  .fontSize(16.0)
                  .fontColor(Color.White)
              }
              .width(160.0)
              .height(50.0)
              .type(ButtonType.Capsule)
              .margin({ right: 10.0, top: 10.0 } as Margin)
              .onClick((e:ClickEvent) => {
                this.doOperation(index);
              })
            }
            .justifyContent(FlexAlign.Center)
          }
        }, (index: string) => index)
      }
    }
    .width('100%')
    .padding({ bottom: 15.0 } as Padding)
  }

  aboutToAppear() {
    if (this.operationRes) {
      let menuList = getStringArray(this.operationRes as Resource, this.getUIContext());
      this.operationSource = menuList;
    }
  }
}