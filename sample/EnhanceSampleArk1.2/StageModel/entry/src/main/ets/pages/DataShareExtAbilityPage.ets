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
  State,
  CustomDialogController,
  Column,
  List,
  ForEach,
  ListItem,
  Color,
  Margin
} from '@kit.ArkUI';

import DateShareHelper from '../feature/DataShareHelper'
import DataShareResultSet from '@ohos.data.DataShareResultSet'
import { BookModel, getBooksFromResultSet } from '../feature/BookModel'

import { BookView } from './component/BookView'
import { TitleBar } from './component/TitleBar'
import { UpdateDataDialog } from '../pages/component/UpdateDataDialog'

@Entry
@Component
struct DataShareExtAbilityPage {
  @State message: string = '';
  @State books: Array<BookModel>|undefined = undefined;
  // @State books: BookModel[] = [];
  private fileFd: number = 0;
  private dialogController?: CustomDialogController;

  build() {
    Column() {
      if(this.books != undefined){
        TitleBar({ books: this.books as Array<BookModel> })
        List() {
          ForEach(this.books as Array<BookModel>, (item: BookModel) => {
            ListItem() {
              BookView({ book: item, books: this.books as Array<BookModel> })
            }
            .height(90)
            .backgroundColor('#ffffff')
            .borderRadius(20)
            .onClick((): void => {
              if (this.dialogController !== null) {
                this.dialogController = undefined;
              }
              // this.dialogController = new CustomDialogController({
              //   builder: UpdateDataDialog({
              //     book: item,
              //     books: this.books
              //   }),
              //   autoCancel: true
              // })
              // this.dialogController?.open()
            })
          }, (item: BookModel) => JSON.stringify(item))
        }
        .width('100%')
        .height('100%')
        .margin({ bottom: 100 } as Margin)
        .constraintSize({ minHeight: '100%' })
        .divider({ strokeWidth: 1, color: Color.Gray, startMargin: 10, endMargin: 10 })
      }
    }
    .width('100%')
    .height('100%')
  }

  // aboutToAppear() {
  //   let context = this.getUIContext().getHostContext();
  //   // await DateShareHelper.getDataShareHelper(context);
  //   DateShareHelper.getDataShareHelper(context);
  //   // let data: Promise<DataShareResultSet> = await DateShareHelper.queryAll();
  //   let data = DateShareHelper.queryAll();
  //   this.books = getBooksFromResultSet(data);
  // }
  aboutToAppear() {
    this.aboutToAppearDo();
  }
  async aboutToAppearDo() {
    let context = this.getUIContext().getHostContext();
    try{
      await DateShareHelper.getDataShareHelper(context);
      let data = await DateShareHelper.queryAll();
      if (data) {
        this.books = getBooksFromResultSet(data as DataShareResultSet);
      } else {
        this.books = [];
      }
    }catch(err){

    }

  }
}