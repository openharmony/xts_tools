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
  Column,
  Row,
  RowOptions,
  Text,
  Blank,
  Button,
  ButtonType,
  FlexAlign,
  $r,
  Padding,
  Margin,
  ClickEvent,
} from '@kit.ArkUI';

"use concurrent"

function functionForTasks(numberOfExecutions: number) {
  return numberOfExecutions + 1
}

@Component
export struct TaskPool {
  @State numberOfExecutions: number = 0.0;
  private isExecute: boolean  = true;
  private clickAble: boolean = true;
  @State task: taskpool.Task | null = null;
  @State msg: string = 'task ready';

  build() {
    Column() {
      Row() {
        Text($r('app.string.click_exec_add_one'))
          .margin({ top: 22.0 } as Margin)
      }
      .width('90%')

      Column() {
        Row() {
          Text('numberOfExecutions:')
            .fontColor($r('sys.color.ohos_id_color_text_primary'))
          Text(this.numberOfExecutions.toString())
            .fontColor($r('sys.color.ohos_id_color_text_primary'))
        }
        .width('100%')

        Row() {
          Text('task status:')
            .fontColor($r('sys.color.ohos_id_color_text_primary'))
          Text(this.msg)
            .fontColor($r('sys.color.ohos_id_color_text_primary'))
        }
        .width('100%')
      }
      .height(160.0)
      .margin({ top: 12.0 } as Margin)
      .padding(16.0)
      .borderRadius(16.0)
      .backgroundColor($r('app.color.bg_white'))

      Blank()
        .layoutWeight(1.0)

      Row({ space: 20.0 } as RowOptions) {
        Button('Execute task')
          .id('execute_task')
          .type(ButtonType.Capsule)
          .width('45%')
          .fontColor($r('app.color.text_color_accent'))
          .backgroundColor($r('app.color.bg_btn_grey'))
          .onClick((event: ClickEvent): void => {
            if (!this.clickAble) {
              return;
            }
            for (let i: number = 0.0; i > -1.0; i++) {
              this.task = new taskpool.Task(functionForTasks, i);
              if (!this.isExecute) {
                this.isExecute = true;
                taskpool.cancel(this.task as taskpool.Task);
              } else {
                this.clickAble = false;
                this.msg = 'task is running';
                await taskpool.execute(this.task as taskpool.Task)
                  .then((res) => {
                    this.numberOfExecutions = JSON.parse<number>(JSON.stringify(res), DoubleType.VAL) as number
                  });
              }
            }
          })

        Button('Cancel task')
          .id('cancel_task')
          .type(ButtonType.Capsule)
          .width('45%')
          .fontColor($r('app.color.text_color_red'))
          .backgroundColor($r('app.color.bg_btn_grey'))
          .onClick((event: ClickEvent) => {
            if (!this.clickAble) {
              this.msg = 'task cancel';
              this.clickAble = true;
              this.isExecute = !this.isExecute;
            }
          })
      }
      .width('100%')
      .margin({ top: 12.0, bottom: 16.0 } as Margin)
      .justifyContent(FlexAlign.Center)
    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('sys.color.ohos_id_color_sub_background'))
  }
}