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
  $r,
  Padding,
  Margin,
  ClickEvent,
  Observed,
} from '@kit.ArkUI';

import emitter from '@ohos.events.emitter';
import promptAction from '@ohos.promptAction';
import { EmptyPage } from 'common';
import { KeyValuePair } from '../model/KeyValuePair';
import { PlainArrayDataSource } from '../components/plainarraycomponents/PlainArrayDataSource';
import { KeyValueItemView } from '../components/KeyValueItemView';
import { Constant } from '../Constant';

const MIN_LENGTH: number = 0.0;
const isNaturalNumber = (str: string): boolean => {
  let regExp: RegExp = new RegExp('^\\d+$');
  return regExp.test(str);
};

@Component
export struct PlainArrayView {
  @Observed dataSource: PlainArrayDataSource = new PlainArrayDataSource();
  @State totalCount: number = MIN_LENGTH;

  aboutToAppear() {
    emitter.on({ eventId: Constant.EMITTER_ID_PLAIN_ARRAY } as emitter.InnerEvent, (eventData: emitter.EventData) => {
      let data = (eventData.data as Record<string, object>)['value'] as KeyValuePair;
      if (isNaturalNumber(data.key)) {
        this.dataSource.addData(data);
        this.totalCount = this.dataSource.totalCount();
      } else {
        this.getUIContext().getPromptAction().showToast({ message: $r('app.string.key_limit') });
      }
    });
  }

  aboutToDisappear() {
    emitter.off(Constant.EMITTER_ID_PLAIN_ARRAY);
  }

  build() {
    Column() {
      if (this.totalCount > MIN_LENGTH) {
        List() {
          LazyForEach(this.dataSource, (item: KeyValuePair, index: number) => {
            ListItem() {
              KeyValueItemView({ index: index, keyValuePair: item, deleteAction: () => {
                this.dataSource.deleteData(index as int);
                this.totalCount = this.dataSource.totalCount();
              } })
            }
            .height(72.0)
            .width('100%')
            .margin({ bottom: 20.0 } as Margin)
          }, (item: KeyValuePair, index: number) => JSON.stringify(item) + index)
        }
        .width('100%')
        .layoutWeight(1.0)

      } else {
        EmptyPage()
      }
    }
    .backgroundColor($r('sys.color.ohos_id_color_sub_background'))
  }
}