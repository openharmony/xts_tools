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

import PlainArray from '@ohos.util.PlainArray';
import ArrayList from '@ohos.util.ArrayList';
import { BaseDataSource } from 'common';
import { KeyValuePair } from '../../model/KeyValuePair';

export class PlainArrayDataSource extends BaseDataSource<KeyValuePair> {
  private dataArr: PlainArray<string> = new PlainArray<string>();
  private arr: ArrayList<int> = new ArrayList<int>();

  public totalCount(): number {
    return this.arr.length;
  }

  public getData(index: number): KeyValuePair {
    let key: int = this.arr[index as int];
    let value: string = this.dataArr.get(key) as string
    this.dataArr.get(key);
    if (value === undefined) {
      value = "";
    }
    let keyValuePair: KeyValuePair = new KeyValuePair(`${key}`, value);
    return keyValuePair;
  }

  public addData(keyValuePair: KeyValuePair): void {
    let key: int = Number(keyValuePair.key) as int
    if (!this.dataArr.has(key)) {
      this.arr.add(key)
    }
    this.dataArr.add(key, keyValuePair.value);
    this.notifyDataAdd(this.dataArr.length - 1.0);
    this.notifyDataReload();
  }

  public deleteData(index: int): void {
    this.dataArr.removeAt(index);
    this.arr.removeByIndex(index);
    this.notifyDataDelete(index);
    this.notifyDataReload();
  }
}