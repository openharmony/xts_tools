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
  Component,
  Link,
  Row,
  Image,
  $r,
  Text,
  FlexAlign,
  Margin,
  Padding
} from '@kit.ArkUI';

import router from '@ohos.router'
import DataShareResultSet from '@ohos.data.DataShareResultSet'
import DataShareHelper from '../../feature/DataShareHelper'
import { BookModel, getBooksFromResultSet } from '../../feature/BookModel'

@Component
export struct TitleBar {
  // @Link books: Array<BookModel>;
  @Link books: BookModel[];
  build() {
    Row() {
      Image($r('app.media.back'))
        .id('btnBack')
        .width(32)
        .height(32)
        .margin({ right: 40 } as Margin)
        .onClick((): void => {
          this.getUIContext().getRouter().back();
        })

      Text($r('app.string.title'))
        .fontSize(16)

      Image($r('app.media.add'))
        .id('btnAdd')
        .width(40)
        .height(40)
        .margin({ left: 30 } as Margin)
        .onClick((): void => {
          this.add()
        })
    }
    .height('8%')
    .width('100%')
    .padding({ left: 15, right: 15 } as Padding)
    .justifyContent(FlexAlign.Center)
  }

  async add() {
    try {
      // 执行插入操作
      await DataShareHelper.insert() as String;
      // 插入成功后重新加载所有数据
      await this.refreshBooks();
    } catch (error) {
      console.error('Add book failed:', error);
    }
  }

  // 刷新数据方法
  async refreshBooks() {
    let context = this.getUIContext()?.getHostContext();
    if (context) {
      try{
        await DataShareHelper.getDataShareHelper(context);
      }catch(err){
      }
      let resultSet = await DataShareHelper.queryAll();
      if (resultSet) {
        this.books = getBooksFromResultSet(resultSet as DataShareResultSet);
      }
    }
  }
}
