'use static'
/*
 * Copyright (c) 2022-2023 Huawei Device Co., Ltd.
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

import dataShare from '@ohos.data.dataShare'
// import { dataShare } from '@kit.ArkData';  //TODO $r存在问题 DTS2025081126895
import dataSharePredicates from '@ohos.data.dataSharePredicates'
// import prompt from '@ohos.promptAction'
import prompt from '@ohos.prompt'
import Logger from '../util/Logger'
import { ValuesBucket } from '@ohos.data.ValuesBucket';
import type common from '@ohos.app.ability.common'
import { Context } from '@kit.ArkUI';
import { BookModel } from './BookModel'
import DataShareResultSet from '@ohos.data.DataShareResultSet';

const TAG: string = 'DataShareHelper'
const BASE_URI = ('datashare:///ohos.samples.stagemodel.DataShare')
const COLUMNS = ['*']

class DataShareHelper {
  private dataShareHelper: dataShare.DataShareHelper | null = null

  async getDataShareHelper(context: Context|undefined) {
    // 对应FA模型FeatureAbilityTest中的acquireDataAbilityHelper
    if(this.dataShareHelper == null){
      try{
        this.dataShareHelper = await dataShare.createDataShareHelper(context as Context, BASE_URI)
      }catch(err){
        Logger.error(TAG, JSON.stringify(err))
      }
    }
  }



  async insert() {
    Logger.info(TAG, `insert onClick`)

    if (this.dataShareHelper === null || this.dataShareHelper === undefined) {
      Logger.info(TAG, `insert dataShareHelper = ${this.dataShareHelper}`)
      // return null;
    }
    //   else {
    Logger.info(TAG, `insert dataShareHelper ;dataShareHelper is ${this.dataShareHelper}`)
    //   }
    let valuesBuckets = { 'name': 'Book name', 'introduction': 'Book introduction' } as ValuesBucket
    try {
      let insertId = await this.dataShareHelper!.insert(BASE_URI, valuesBuckets)
      let resultSet = await this.queryAll()
      return resultSet
      // return insertId
      Logger.info(TAG, `insert succeed, data : ${insertId}`)

    } catch (err) {
      return '失败'+JSON.stringify(err)
      Logger.error(TAG, `insert error= ${JSON.stringify(err)}`)
      // return null
    }
    // try{
    //   let resultSet = await this.queryAll()
    //   return resultSet
    // }catch(err1){
    //   return null
    // }
  }
  //
  async updateBook(book: BookModel) {
    //   let predicates = new dataSharePredicates.DataSharePredicates()
    //   predicates.equalTo('id', book.id)
    //   let valuesBucket = {
    //     name: book.name,
    //     introduction: book.introduction
    //   }as ValuesBucket
    //   let num = await this.dataShareHelper!.update(BASE_URI, predicates, valuesBucket)
    //   Logger.info(TAG + `update book num= ${num}`)
    //   let resultSet = await this.queryAll()
    //   return resultSet
  }

  async queryAll(): Promise<DataShareResultSet | null> {
    Logger.info(TAG, `queryAll start`)
    if (this.dataShareHelper === null || this.dataShareHelper === undefined) {
      Logger.info(TAG, `queryAll dataShareHelper = ${this.dataShareHelper}`)
      return null;
    }
    Logger.info(TAG, `dataShareHelper not null`)
    try {
      let predicates = new dataSharePredicates.DataSharePredicates()
      let resultSet: DataShareResultSet = await this.dataShareHelper!.query(BASE_URI, predicates, COLUMNS)
      Logger.info(TAG, `queryAll resultSet= ${JSON.stringify(resultSet)}`)
      return resultSet;
    } catch (err) {
      Logger.error(TAG, `queryAll error= ${JSON.stringify(err)}`)
      return null;
    }
  }

  // 删除指定数据
  async deleteBook(book: BookModel) {
    //   Logger.info(TAG, `deleteBook start`)
    //   if (this.dataShareHelper === null || this.dataShareHelper === undefined) {
    //     Logger.info(TAG, `deleteBook dataShareHelper = ${this.dataShareHelper}`)
    return Promise.resolve();
    //   }
    //   let predicates = new dataSharePredicates.DataSharePredicates()
    //   predicates.equalTo('id', book.id)
    //   Logger.info(TAG, `delete id = ${book.id}`)
    //   let num = await this.dataShareHelper!.delete(BASE_URI, predicates)
    //   // await this.dataShareHelper.notifyChange(BASE_URI)
    //   Logger.info(TAG, `delete num= ${num}`)
    //   Logger.info(TAG, `delete queryAll start`)
    //   let resultSet = await this.queryAll()
    //   Logger.info(TAG, `delete queryAll end`)
    //   return resultSet
  }

  // 用户给定的URI转换为服务端使用的URI时回调此接口，该方法可以选择性重写。对应FA模型的DataAbilityHelper中的normalizeUri  //TODO $r存在问题 DTS2025072172737
  normalizeUri = () => {
  //   this.dataShareHelper.normalizeUri(BASE_URI, (error, data) => {
  //     if (error) {
  //       Logger.info(TAG, `normalizeUri: ${error}`)
  //     } else {
  //       Logger.info(TAG, `normalizeUri: ${data}`)
  //       this.getUIContext().getPromptAction().showToast({
  //         message: `normalizeUri sucess`
  //       })
  //     }
  //   })
  }

  // 服务端使用的URI转换为用户传入的初始URI时服务端回调此接口，该方法可以选择性重写。对应FA模型的DataAbilityHelper中的denormalizeUri  //TODO $r存在问题 DTS2025072172737
  denormalizeUri = () => {
  //   this.dataShareHelper.denormalizeUri(BASE_URI, (err, data) => {
  //     Logger.info(TAG, `denormalizeUri: ${err}`)
  //     this.getUIContext().getPromptAction().showToast({
  //       message: `denormalizeUri: ${data}`
  //     })
  //   })
  }

  // 订阅指定URI对应数据的数据变更事件。若用户（订阅者）已注册了观察者，当有其他用户触发了变更通知时（调用了下文中的notifyChange方法），订阅者将会接收到callback通知。
  // 对应FA模型的DataAbilityHelper中的on
  on = () => {
    Logger.info(TAG, `on start`)
    try {
      if (this.dataShareHelper === null || this.dataShareHelper === undefined) {
        return;
      }
      // await this.dataShareHelper.on('dataChange', BASE_URI, () => {
      this.dataShareHelper!.on('dataChange', BASE_URI, () => {
        Logger.info(TAG, `on end`)
        // this.getUIContext().getPromptAction().showToast({
        prompt.showToast({
          message: `on success`
        })
      })
    } catch (err) {
      Logger.info(TAG, `[ttt] [DataAbilityTest] Observer on catch(err)====>:${err}`)
    }
  }

  // 取消订阅指定URI对应的数据资源的变更通知。对应FA模型的DataAbilityHelper中的off
  off = () => {
    Logger.info(TAG, `off start`)
    try {
      if (this.dataShareHelper === null || this.dataShareHelper === undefined) {
        return;
      }
      // await this.dataShareHelper.off('dataChange', BASE_URI)
      this.dataShareHelper!.off('dataChange', BASE_URI)
      prompt.showToast({
        message: `off success`
      })
      Logger.info(TAG, `off end`)
    } catch (err) {
      Logger.info(TAG, `[ttt] [DataAbilityTest] Observer off catch(err)====>:${err}`)
    }
  }

  // 通知已注册的观察者Uri指定的数据资源的更改。对应FA模型的DataAbilityHelper中的notifyChange  //TODO $r存在问题 DTS2025072172737
  notifyChange = () => {
  //   this.dataShareHelper.notifyChange(BASE_URI, (err) => {
  //     Logger.info(TAG, `notifyChange: ${err}`)
  //     this.getUIContext().getPromptAction().showToast({
  //       message: `notifyChange`
  //     })
  //   })
  }
}

export default new DataShareHelper()