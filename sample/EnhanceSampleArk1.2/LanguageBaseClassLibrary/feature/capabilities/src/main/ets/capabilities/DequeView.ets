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
  List,
  LazyForEach,
  ListItem,
  Padding,
  Margin,
  $r,

  Text
} from '@kit.ArkUI';

import { Callback } from '@kit.BasicServicesKit';
import emitter from "@ohos.events.emitter";
import { EmptyPage } from 'common';
import { logger } from 'common';
import { Information } from '../model/Information'
import { InformationItemView } from '../components/InformationItemView';
import { DequeDataSource } from '../components/dequecomponents/DequeDataSource';
import { Constant } from "../Constant";

const TAG = 'DequeView';

@Component
export struct DequeView {
  @State totalCount: number = 0.0;
  private dataSource: DequeDataSource = new DequeDataSource();

  aboutToAppear() {
    emitter.on({ eventId: Constant.EMITTER_ID_DEQUE } as emitter.InnerEvent, (eventData: emitter.EventData) => {
      // this.getUIContext().getPromptAction().showToast({ message: `${eventData.data}`, duration: 2000 })
      // console.info('1111111111'+JSON.stringify((eventData.data as Record<string, object>)['name']))

      let item = eventData.data as Record<string, object>;
      console.info('wzr'+JSON.stringify(item))
      const data: Information = new Information(
      item['name'] as string,
      item['age'] as number,
      item['phone'] as string,
      item['clickAble'] as boolean
      );
      console.info('wzr'+JSON.stringify(data))
      this.dataSource.insertFront(data);
      console.info('wzr'+`${this.dataSource.totalCount()}`)
      this.totalCount = this.dataSource.totalCount();
    });
  }

  aboutToDisappear() {
    emitter.off(Constant.EMITTER_ID_DEQUE);
  }

  build() {
    Column() {
      if (this.totalCount != 0.0) {
        List() {
          Text("11111")

          LazyForEach(this.dataSource, (item: Information, index: number) => {
            ListItem() {
              InformationItemView({
                index: index,
                information: item,
                deleteAction: () => {
                  logger.info(TAG, `deleteAction: ${JSON.stringify(item)}`);
                  if (index === 0.0) {
                    this.dataSource.deleteFront();
                    this.totalCount = this.dataSource.totalCount();
                  } else if (index === this.totalCount - 1.0) {
                    this.dataSource.deleteEnd();
                    this.totalCount = this.dataSource.totalCount();
                  }
                }
              })
            }
            .height(72.0)
            .width('100%')
            .margin({ bottom: 20.0 } as Margin)
          }, (item: Information, index: number) => JSON.stringify(item) + index)
        }
        .width('100%')
        .height('100%')
        .padding({ top: 8.0, left: 12.0, right: 12.0 } as Padding)
      } else {
        EmptyPage()
      }
    }
    .backgroundColor($r('sys.color.ohos_id_color_sub_background'))
  }
}