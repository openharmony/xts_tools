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
import { BaseDataSource } from '@ohos/common/src/main/ets/components/BaseDataSource';
import { KeyValuePair } from '../../model/KeyValuePair';

export class PlainArrayDataSource extends BaseDataSource {
  private dataArr: PlainArray<string> = new PlainArray<string>();
  private arr: ArrayList<number> = new ArrayList<number>();

  public totalCount(): number {
    return this.arr.length;
  }

  public getData(index: number): KeyValuePair {
    let key: number = this.arr[index];
    let value: string = this.dataArr.get(key.toInt());
    this.dataArr.get(this.arr[index].toInt());
    let keyValuePair: KeyValuePair = new KeyValuePair(`${this.arr[index]}`, value);
    return keyValuePair;
  }

  public addData(keyValuePair: KeyValuePair): void {
    let key: number = Number(keyValuePair.key);
    if (!this.dataArr.has(key.toInt())) {
      this.arr.add(key)
    }
    this.dataArr.add(key, keyValuePair.value);
    this.notifyDataAdd(this.dataArr.length - 1);
    this.notifyDataReload();
  }

  public deleteData(index: number): void {
    this.dataArr.removeAt(index.toInt());
    this.arr.removeByIndex(index.toInt());
    this.notifyDataDelete(index);
    this.notifyDataReload();
  }
}