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

import Stack from '@ohos.util.Stack';
import { BaseDataSource } from 'common';
import { Information } from '../../model/Information';

export class StackDataSource extends BaseDataSource<Information> {
  private dataArr: Stack<Information> = new Stack<Information>();

  public totalCount(): number {
    return this.dataArr.length;
  }

  public getData(index: number): Information {
    let result: Information | undefined;
    let currentIndex: number = 0;
    for (const item of this.dataArr) {
      if (currentIndex === index) {
        result = item;
        break;
      }
      currentIndex++;
    }

    if (!result) {
      throw new Error(`Index ${index} out of bounds`);
    }

    return result;
  }

  public addData(information: Information): void {
    this.dataArr.push(information);
    this.dataArr.forEach((value, index) => {
      value.clickAble = index === this.dataArr.length - 1.0;
    });
    this.notifyDataAdd(this.dataArr.length - 1.0);
    this.notifyDataReload();
  }

  public deleteData(): void {
    this.dataArr.pop();
    this.dataArr.forEach((value, index) => {
      value.clickAble = index === this.dataArr.length - 1.0;
    });
    this.notifyDataDelete(this.dataArr.length - 1.0);
    this.notifyDataReload();
  }
}