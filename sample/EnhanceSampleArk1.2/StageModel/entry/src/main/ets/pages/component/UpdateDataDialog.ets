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
  CustomDialog,
  Link,
  CustomDialogController,
  Column,
  Text,
  $r,
  FontWeight,
  Color,
  TextInput,
  InputType,
  Blank,
  Row,
  TextAlign,
  Margin
} from '@kit.ArkUI';

import DataShareResultSet from '@ohos.data.DataShareResultSet';
import { BookModel, getBooksFromResultSet } from '../../feature/BookModel';
import DateShareHelper from '../../feature/DataShareHelper';
import Logger from '../../util/Logger';

const TAG: string = 'UpdateData';

@CustomDialog
export struct UpdateDataDialog {
  // @Link books: Array<BookModel>;
  @Link books: BookModel[];
  private book: BookModel = new BookModel();
  controller?: CustomDialogController;

  build() {
    Column() {
      Text($r('app.string.book_name'))
        .fontWeight(FontWeight.Bold)
        .fontSize(22)
        .margin({ top: 20 } as Margin)
        .fontColor(Color.Black)
      TextInput({ placeholder: 'input name', text: this.book.name })
        .id('bookNameInput')
        .type(InputType.Normal)
        .placeholderColor(Color.Gray)
        .fontSize(19)
        .margin({ top: 10, left: 12, right: 12 } as Margin)
        .onChange((value: string): void => {
          this.book.name = value;
        })

      Text($r('app.string.book_intro'))
        .fontWeight(FontWeight.Bold)
        .fontSize(22)
        .fontColor(Color.Black)
        .margin({ top: 20 } as Margin)
      TextInput({ placeholder: 'input introduction', text: this.book.introduction })
        .id('bookNameIntro')
        .type(InputType.Normal)
        .placeholderColor(Color.Gray)
        .fontSize(20)
        .margin({ left: 12, right: 12, top: 10 } as Margin)
        .onChange((value: string): void => {
          this.book.introduction = value;
        })

      Blank()

      Row() {
        Text($r('app.string.no'))
          .fontSize(21)
          .layoutWeight(1)
          .textAlign(TextAlign.Center)
          .onClick((): void => {
            this.controller?.close()
          })
        Text($r('app.string.ok'))
          .fontSize(21)
          .layoutWeight(1)
          .textAlign(TextAlign.Center)
          .onClick((): void => {
            this.update();
          })
      }
      .width('100%')
    }
    .width('100%')
    .height(300)
  }

  async update() {
    Logger.info(TAG, 'updateBook start');
    try {
      // 执行更新操作
      await DateShareHelper.updateBook(this.book);

      // 更新成功后重新加载所有数据
      await this.refreshBooks();
      this.controller?.close();
    } catch (error) {
      Logger.error(TAG, 'Update book failed: ' + error);
      this.controller?.close();
    }
  }

  // 刷新数据方法
  async refreshBooks() {
    let context = this.getUIContext()?.getHostContext();
    if (context) {
      await DateShareHelper.getDataShareHelper(context);
      let resultSet = await DateShareHelper.queryAll();
      if (resultSet) {
        this.books = getBooksFromResultSet(resultSet as DataShareResultSet);
      }
    }
  }
}