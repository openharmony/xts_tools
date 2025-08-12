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
  $r
} from '@kit.ArkUI';

import LightWeightSet from '@ohos.util.LightWeightSet';
import emitter from '@ohos.events.emitter';
import { EmptyPage } from 'common';
import { logger } from 'common';
import { ValueItemView } from '../components/ValueItemView';
import { LightWeightSetDataSource } from '../components/lightweightsetcomponents/LightWeightSetDataSource';
import { Constant } from '../Constant';

const TAG = 'LightWeightSetView';

@Component
export struct LightWeightSetView {
  @State totalCount: number = 0.0;
  @State lightWeightSet: LightWeightSet<string> = new LightWeightSet<string>();
  private dataSource: LightWeightSetDataSource = new LightWeightSetDataSource();

  aboutToAppear() {
    emitter.on({ eventId: Constant.EMITTER_ID_LIGHT_WEIGHT_SET } as emitter.InnerEvent, (eventData: emitter.EventData) => {
      if (eventData.data === undefined) {
        return;
      }
      let item = (eventData.data as Record<string, object>)['value'] as string;
      this.dataSource.addData(item);
      this.lightWeightSet.add(item);
      this.totalCount = this.dataSource.totalCount();
    });
  }

  aboutToDisappear() {
    emitter.off(Constant.EMITTER_ID_LIGHT_WEIGHT_SET);
  }

  build() {
    Column() {
      if (this.totalCount != 0.0) {
        List({ space: 12.0 }) {
          LazyForEach(this.dataSource, (item: string, index: number) => {
            ListItem() {
              ValueItemView({
                index: index,
                value: item,
                deleteAction: () => {
                  logger.info(TAG, `item = ${JSON.stringify(item)}`)
                  this.dataSource.deleteData(item, index);
                  this.totalCount = this.dataSource.totalCount();
                  this.lightWeightSet.remove(item);
                }
              })
            }
            .height(72.0)
            .width('100%')
          }, (item: string, index: number) => JSON.stringify(item) + index)
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