'use static'
/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
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
  InputType,
  Resource,
  $r,
} from '@kit.ArkUI';

import common from '@ohos.app.ability.common';
import data_rdb from '@ohos.data.relationalStore';

import RdbModel from '../model/RdbModel';
import { TABLE_NAME, SQL_CREATE_TABLE, COLUMNS } from '../model/RdbConst';
import Logger from './Logger';
import Contact from '../model/Contact';
import { GlobalContext } from './GlobalContext';

const TAG = 'SearchModel';
const INDEX_0: int = 0;
const INDEX_1: int = 1;
const INDEX_3: int = 3;
const INDEX_4: int = 4;
const INDEX_5: int = 5;

class SearchData {
  selectIndex: number = 0; // 当前选择的index
  isAscending: boolean = true; // true 升序 false 降序

  searchText: string = ''; // 搜索文本
  searchTexts: string[] = ['', '']; // 搜索文本：区间
  inputType: InputType = InputType.Normal; // 搜索框输入类型


  searchTips: string[] = ['', '']; // 搜索提示语
  orderColumn: string = INDEX_1 < COLUMNS.length ? COLUMNS[INDEX_1] : ''; // 指定的搜索字段
  isDoubleInput: boolean = false; // 是否区间输入项
  searchPlaceholder: Resource = $r('app.string.search_placeholder_start'); // 提示文本


  clear(): void {
    this.searchText = '';
    this.searchTexts = ['', ''];
    this.searchTips = ['', ''];
    this.orderColumn = INDEX_1 < COLUMNS.length ? COLUMNS[INDEX_1] : '';
    this.isDoubleInput = false;
    this.searchPlaceholder = $r('app.string.search_placeholder_start');
  }
}

export default class SearchModel {
  context: common.UIAbilityContext;
  private rdbModel: RdbModel;
  searchData: SearchData = new SearchData();
  queryData: Array<Contact> = [];
  queryOtherData: Array<Contact> = [];
  onSelectCallback: () => void = () => {};
  onDataCallback: () => void = () => {};
  constructor(context: common.UIAbilityContext) {
    this.context = context
    this.rdbModel = new RdbModel(TABLE_NAME, SQL_CREATE_TABLE, COLUMNS, this.context);
  }
  public onSelect(index: number): void {
    this.searchData.clear();
    this.searchData.selectIndex = index;
    this.searchData.inputType = InputType.Normal;
    switch (index as int) {
      case 0:
        this.searchData.searchPlaceholder = $r('app.string.search_placeholder_start');
        this.searchData.orderColumn = INDEX_3 < COLUMNS.length ? COLUMNS[INDEX_3] : '';
        this.searchData.isDoubleInput = false;
        this.searchData.inputType = InputType.Number;
        break;
      case 1:
        this.searchData.searchPlaceholder = $r('app.string.search_placeholder_end');
        this.searchData.orderColumn = INDEX_3 < COLUMNS.length ? COLUMNS[INDEX_3] : '';
        this.searchData.isDoubleInput = false;
        this.searchData.inputType = InputType.Number;
        break;
      case 2:
        this.searchData.searchPlaceholder = $r('app.string.search_placeholder_content');
        this.searchData.orderColumn = INDEX_3 < COLUMNS.length ? COLUMNS[INDEX_3] : '';
        this.searchData.isDoubleInput = false;
        break;
      case 3:
        this.searchData.searchPlaceholder = $r('app.string.search_placeholder_age');
        this.searchData.orderColumn = INDEX_5 < COLUMNS.length ? COLUMNS[INDEX_5] : '';
        this.searchData.isDoubleInput = true;
        this.searchData.inputType = InputType.Number;
        break;
      case 4:
        this.searchData.searchPlaceholder = $r('app.string.search_placeholder_age');
        this.searchData.orderColumn = INDEX_5 < COLUMNS.length ? COLUMNS[INDEX_5] : '';
        this.searchData.isDoubleInput = true;
        this.searchData.inputType = InputType.Number;
        break;
      case 5:
        this.searchData.searchPlaceholder = $r('app.string.search_placeholder_name');
        this.searchData.orderColumn = INDEX_1 < COLUMNS.length ? COLUMNS[INDEX_1] : '';
        this.searchData.isDoubleInput = false;
        break;
      case 6:
        this.searchData.searchPlaceholder = $r('app.string.search_placeholder_index');
        this.searchData.orderColumn = INDEX_0 < COLUMNS.length ? COLUMNS[INDEX_0] : '';
        this.searchData.isDoubleInput = false;
        this.searchData.inputType = InputType.Number;
        break;
      case 7:
        this.searchData.searchPlaceholder = $r('app.string.search_placeholder_expression');
        this.searchData.orderColumn = INDEX_3 < COLUMNS.length ? COLUMNS[INDEX_3] : '';
        this.searchData.isDoubleInput = false;
        break;
      default:
        break;
    }

    if (this.onSelectCallback) {
      this.onSelectCallback();
    }

    if (this.onDataCallback) {
      this.onDataCallback();
    }
  }

  async getData(): Promise<void> {
    if (INDEX_1 < this.searchData.searchTexts.length) {
      this.searchData.searchTips[INDEX_0] = '';
      this.searchData.searchTips[INDEX_1] = '';
    }
    this.queryData = [];
    this.queryOtherData = [];
    let predicates = new data_rdb.RdbPredicates(TABLE_NAME);
    switch (this.searchData.selectIndex as int) {
      case 0:
        predicates.beginsWith(INDEX_3 < COLUMNS.length ? COLUMNS[INDEX_3] : '', this.searchData.searchText);
        if (INDEX_0 < this.searchData.searchTexts.length) {
          this.searchData.searchTips[INDEX_0] = `查询到手机号开头为${this.searchData.searchText}的联系人`;
        }
        break;
      case 1:
        predicates.endsWith(INDEX_3 < COLUMNS.length ? COLUMNS[INDEX_3] : '', this.searchData.searchText);
        if (INDEX_0 < this.searchData.searchTexts.length) {
          this.searchData.searchTips[INDEX_0] = `查询到手机号结尾为${this.searchData.searchText}的联系人`;
        }
        break;
      case 2:
        predicates.contains(INDEX_1 < COLUMNS.length ? COLUMNS[INDEX_1] : '', this.searchData.searchText)
          .or()
          .contains(INDEX_3 < COLUMNS.length ? COLUMNS[INDEX_3] : '', this.searchData.searchText)
          .or()
          .contains(INDEX_4 < COLUMNS.length ? COLUMNS[INDEX_4] : '', this.searchData.searchText);
        if (INDEX_0 < this.searchData.searchTexts.length) {
          this.searchData.searchTips[INDEX_0] = `查询到姓名、手机号、备注中包含${this.searchData.searchText}的联系人`;
        }
        break;
      case 3:
        if (INDEX_1 < this.searchData.searchTexts.length) {
          if (this.searchData.searchTexts[INDEX_0] !== '' || this.searchData.searchTexts[INDEX_1] !== '') {
            let otherPredicates = new data_rdb.RdbPredicates(TABLE_NAME);
            if (this.searchData.searchTexts[INDEX_0] === '') {
              predicates.lessThan(INDEX_5 < COLUMNS.length ? COLUMNS[INDEX_5] : '', this.searchData.searchTexts[INDEX_1]);
              otherPredicates.greaterThanOrEqualTo('age', this.searchData.searchTexts[INDEX_1]);
              if(INDEX_1 < this.searchData.searchTips.length) {
                this.searchData.searchTips[INDEX_0] = `查询到年龄小于${this.searchData.searchTexts[INDEX_1]}的联系人`;
                this.searchData.searchTips[INDEX_1] = `查询到年龄不小于${this.searchData.searchTexts[INDEX_1]}的联系人`;
              }
            }
            if (this.searchData.searchTexts[INDEX_1] === '') {
              predicates.greaterThan(INDEX_5 < COLUMNS.length ? COLUMNS[INDEX_5] : '', this.searchData.searchTexts[INDEX_0]);
              otherPredicates.lessThanOrEqualTo('age', this.searchData.searchTexts[INDEX_0]);
              if(INDEX_1 < this.searchData.searchTips.length) {
                this.searchData.searchTips[INDEX_0] = `查询到年龄大于${this.searchData.searchTexts[INDEX_0]}的联系人`;
                this.searchData.searchTips[INDEX_1] = `查询到年龄不大于${this.searchData.searchTexts[INDEX_0]}的联系人`;
              }
            }
            if (this.searchData.searchTexts[INDEX_0] !== '' && this.searchData.searchTexts[INDEX_1] !== '') {
              predicates.greaterThan(INDEX_5 < COLUMNS.length ? COLUMNS[INDEX_5] : '', this.searchData.searchTexts[INDEX_0])
                .and()
                .lessThan(INDEX_5 < COLUMNS.length ? COLUMNS[INDEX_5] : '', this.searchData.searchTexts[INDEX_1]);
              otherPredicates.lessThanOrEqualTo(INDEX_5 < COLUMNS.length ? COLUMNS[INDEX_5] : '', this.searchData.searchTexts[INDEX_0])
                .or()
                .greaterThanOrEqualTo(INDEX_5 < COLUMNS.length ? COLUMNS[INDEX_5] : '', this.searchData.searchTexts[INDEX_1]);
              this.searchData.searchTips[INDEX_0] = `查询到年龄在${this.searchData.searchTexts[INDEX_0]}-${this.searchData.searchTexts[INDEX_1]}之间的联系人`;
              this.searchData.searchTips[INDEX_1] = `查询到年龄不在${this.searchData.searchTexts[INDEX_0]}-${this.searchData.searchTexts[INDEX_1]}之间的联系人`;
            }
            if (this.searchData.isAscending) {
              otherPredicates.orderByAsc(this.searchData.orderColumn);
            } else {
              otherPredicates.orderByDesc(this.searchData.orderColumn);
            }
            this.queryOtherData = await this.rdbModel.query(otherPredicates);
            Logger.info(TAG, `query otherPredicates ${JSON.stringify(this.queryOtherData)}`);
          }
        }
        break;
      case 4:
        if (INDEX_1 < this.searchData.searchTexts.length) {
          if (this.searchData.searchTexts[INDEX_0] !== '' && this.searchData.searchTexts[INDEX_1] !== '') {
            predicates.between(INDEX_5 < COLUMNS.length ? COLUMNS[INDEX_5] : '', Number(this.searchData.searchTexts[INDEX_0]), Number(this.searchData.searchTexts[INDEX_1]));
            let otherPredicates = new data_rdb.RdbPredicates(TABLE_NAME);
            otherPredicates.notBetween(INDEX_5 < COLUMNS.length ? COLUMNS[INDEX_5] : '', Number(this.searchData.searchTexts[INDEX_0]), Number(this.searchData.searchTexts[INDEX_1]));
            if(INDEX_1 < this.searchData.searchTips.length) {
              this.searchData.searchTips[INDEX_0] =
                `查询到年龄在${this.searchData.searchTexts[INDEX_0]}-${this.searchData.searchTexts[INDEX_1]}之间的联系人`;
              this.searchData.searchTips[INDEX_1] =
                `查询到年龄不在${this.searchData.searchTexts[INDEX_0]}-${this.searchData.searchTexts[INDEX_1]}之间的联系人`;
            }
            if (this.searchData.isAscending) {
              otherPredicates.orderByAsc(this.searchData.orderColumn);
            } else {
              otherPredicates.orderByDesc(this.searchData.orderColumn);
            }
            this.queryOtherData = await this.rdbModel.query(otherPredicates);
            Logger.info(TAG, `query otherPredicates ${JSON.stringify(this.queryOtherData)}`);
          } else {
            return;
          }
        }
        break;
      case 5:
        predicates.equalTo(INDEX_1 < COLUMNS.length ? COLUMNS[INDEX_1] : '', this.searchData.searchText);
        let otherPredicates = new data_rdb.RdbPredicates(TABLE_NAME);
        otherPredicates.notEqualTo(INDEX_1 < COLUMNS.length ? COLUMNS[INDEX_1] : '', this.searchData.searchText);
        if(INDEX_1 < this.searchData.searchTips.length) {
          this.searchData.searchTips[INDEX_0] = `查询到姓名是${this.searchData.searchText}的联系人`;
          this.searchData.searchTips[INDEX_1] = `查询到姓名不是${this.searchData.searchText}的联系人`;
        }
        if (this.searchData.isAscending) {
          otherPredicates.orderByAsc(this.searchData.orderColumn);
        } else {
          otherPredicates.orderByDesc(this.searchData.orderColumn);
        }
        this.queryOtherData = await this.rdbModel.query(otherPredicates);
        Logger.info(TAG, `query otherPredicates ${JSON.stringify(this.queryOtherData)}`);
        break;
      case 6:
        predicates
          .equalTo(INDEX_0 < COLUMNS.length ? COLUMNS[INDEX_0] : '', this.searchData.searchText);
        if(INDEX_0 < this.searchData.searchTips.length) {
          this.searchData.searchTips[INDEX_0] = `查询到索引值为${this.searchData.searchText}的联系人`;
        }
        break;
      case 7:
        predicates.glob(INDEX_1 < COLUMNS.length ? COLUMNS[INDEX_1] : '', this.searchData.searchText)
          .or()
          .glob(INDEX_3 < COLUMNS.length ? COLUMNS[INDEX_3] : '', this.searchData.searchText)
          .or()
          .glob(INDEX_4 < COLUMNS.length ? COLUMNS[INDEX_4] : '', this.searchData.searchText)
          .or()
          .glob(INDEX_5 < COLUMNS.length ? COLUMNS[INDEX_5] : '', this.searchData.searchText);
        break;
      default:
        break;
    }
    if (this.searchData.isAscending) {
      predicates.orderByAsc(this.searchData.orderColumn);
    } else {
      predicates.orderByDesc(this.searchData.orderColumn);
    }

    this.queryData = await this.rdbModel.query(predicates);
    Logger.info(TAG, `query predicates ${JSON.stringify(this.queryData)}`);

    if (this.searchData.selectIndex === 7) {
      let ids: Array<Double> = new Array<Double>();
      this.queryData.forEach((value) => {
        ids.push(value.id as Double);
      });
      let otherPredicates = new data_rdb.RdbPredicates(TABLE_NAME);
      // todo
      /* test
      otherPredicates.notInValues(INDEX_0 < COLUMNS.length ? COLUMNS[INDEX_0] : '', [1.456,34.5656]);
      let ids2: ValueType[]=[1.456,34.5656]
      otherPredicates.notInValues(INDEX_0 < COLUMNS.length ? COLUMNS[INDEX_0] : '', ids2);
      * */
      // otherPredicates.notInValues(INDEX_0 < COLUMNS.length ? COLUMNS[INDEX_0] : '', ids);

      if(INDEX_1 < this.searchData.searchTips.length) {
        this.searchData.searchTips[INDEX_0] = `查询到匹配表达式${this.searchData.searchText}的联系人`;
        this.searchData.searchTips[INDEX_1] = `查询到不匹配表达式${this.searchData.searchText}的联系人`;
      }
      if (this.searchData.isAscending) {
        otherPredicates.orderByAsc(this.searchData.orderColumn);
      } else {
        otherPredicates.orderByDesc(this.searchData.orderColumn);
      }
      this.queryOtherData = await this.rdbModel.query(otherPredicates);
      Logger.info(TAG, `query otherPredicates ${JSON.stringify(this.queryOtherData)}`);
    }

    if (this.onSelectCallback) {
      this.onSelectCallback();
    }

    if (this.onDataCallback) {
      this.onDataCallback();
    }
  }
}