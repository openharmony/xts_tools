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

import TreeMap from '@ohos.util.TreeMap';
import ArrayList from '@ohos.util.ArrayList';
import { BaseDataSource } from 'common';
import { KeyValuePair } from '../../model/KeyValuePair';

export class TreeMapDataSource extends BaseDataSource<KeyValuePair> {
  private dataArr = new TreeMap<string,string>();
  private arr: ArrayList<string> = new ArrayList<string>();

  public totalCount(): number {
    return this.arr.length;
  }

  public getData(index: number): KeyValuePair {
    let key: string = this.arr[index as int];
    let value: string |undefined= this.dataArr.get(key) as string;
    this.dataArr.get(key);
    let keyValuePair: KeyValuePair = new KeyValuePair(`${key}`, value);
    if (value === undefined) {
      value = "";
    }
    return keyValuePair;
  }

  public addData(keyValuePair: KeyValuePair): void {
    if (!this.dataArr.hasKey(keyValuePair.key)) {
      this.arr.add(keyValuePair.key)
    }
    this.dataArr.set(keyValuePair.key, keyValuePair.value);
    this.notifyDataChange(this.dataArr.length - 1.0);
    this.notifyDataReload();
  }

  public deleteData(key: string): void {
    this.dataArr.remove(key);
    let index: number = this.arr.getIndexOf(key);
    this.arr.remove(key);
    this.notifyDataDelete(index);
    this.notifyDataReload();
  }
}