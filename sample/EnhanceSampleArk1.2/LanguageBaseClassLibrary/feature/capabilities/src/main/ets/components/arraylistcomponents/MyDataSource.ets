// 'use static'
/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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

// import { DataChangeListener } from '@kit.ArkUI';
//
// import ArrayList from '@ohos.util.ArrayList';
// import { Information } from '../../model/Information';
//
// export class MyDataSource {
//   public dataArray: ArrayList<Information> = new ArrayList<Information>();
//   private listeners: DataChangeListener[] = [];
//
//   constructor(ele: ArrayList<Information>) {
//     for (let index: int = 0;index < ele.length; index++) {
//       this.dataArray.add(ele[index]);
//     }
//   }
//
//   public totalCount(): int {
//     return this.dataArray.length;
//   }
//
//   public getData(index: int): Information {
//     return this.dataArray[index];
//   }
//
//   public addData(index: int, data: Information): void {
//     this.dataArray.removeByIndex(index);
//     this.notifyDataAdd(index);
//   }
//
//   registerDataChangeListener(listener: DataChangeListener): void {
//     if (this.listeners.indexOf(listener) < 0.0) {
//       this.listeners.push(listener);
//     }
//   }
//
//   unregisterDataChangeListener(listener: DataChangeListener): void {
//     const pos: number = this.listeners.indexOf(listener);
//     if (pos >= 0.0) {
//       this.listeners.splice(pos, 1.0);
//     }
//   }
//
//   notifyDataReload(): void {
//     this.listeners.forEach(listener => {
//       listener.onDataReloaded();
//     })
//   }
//
//   notifyDataAdd(index: int): void {
//     this.listeners.forEach(listener => {
//       listener.onDataAdd(index);
//     })
//   }
//
//   notifyDataChange(index: int): void {
//     this.listeners.forEach(listener => {
//       listener.onDataChange(index);
//     })
//   }
// }