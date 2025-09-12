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

import bundle from '@ohos.bundle.bundleManager'
import prompt from '@ohos.promptAction'
import Logger from '../util/Logger'
import {  common} from '@kit.AbilityKit';
import { UIContext } from '@ohos.arkui.UIContext';

const TAG: string = 'BundleController'

let bundleName = 'ohos.samples.stagemodel'
let bundleFlags: int = 0
let userId: int = 100

export default class BundleController {
  private context: common.UIAbilityContext
  private UIContexts:UIContext

  constructor(context:common.UIAbilityContext,UIContexts:UIContext){
    this.context = context
    this.UIContexts = UIContexts
  }

  // 获取有关当前应用程序的信息,对应FA模型的getApplicationInfo()
  getApplicationInfo() {
    bundle.getApplicationInfo(bundleName, bundleFlags, userId)
      .then((data) => {
        Logger.info(TAG, `getApplicationInfo successful. Data: ${JSON.stringify(data)}`)
        this.UIContexts.getPromptAction().showToast({
          message: `getApplicationInfo successful`
        })
      }).catch((error) => {
      Logger.error(TAG, `getApplicationInfo. Cause: ${JSON.stringify(error)}`)
      this.UIContexts.getPromptAction().showToast({
        message: `getApplicationInfo. Cause: ${JSON.stringify(error)}`
      })
    })
  }

  // 指示应用程序的实体类型,对应FA模型中AppContext的getAppType()
  entityType(): void {
    bundle.getApplicationInfo(bundleName, bundleFlags, userId)
      .then((data): void => {
        let digital = data.description
        // if (digital === null) {
        //   Logger.info(TAG, 'digital is null')
        //   return
        // }
        Logger.info(TAG, `caller onRelease is called: ${digital}`)
        this.UIContexts.getPromptAction().showToast({
          message: `caller onRelease is called sucess`
        })
      }).catch((error): void => {
      Logger.info(TAG, `caller onRelease is error: ${error}`)
    })
  }

  // 应用程序的进程，如果用户未设置，则值等于bundleName
  process(): void{
    bundle.getApplicationInfo(bundleName, bundleFlags, userId)
      .then((data):void => {
        let process = data.process
        // if (process === null) {
        //   Logger.info(TAG, 'process is null')
        //   return
        // }
        Logger.info(TAG, `caller onRelease is called: ${process}`)
        this.UIContexts.getPromptAction().showToast({
          message: `caller onRelease is called sucess`
        })
      }).catch((error):void => {
      Logger.info(TAG, `caller onRelease is error: ${error}`)
    })
  }

  // 获取应用程序的本地根目录,对应FA模型的getOrCreateLocalDir()
  entryDir(): void {
    bundle.getApplicationInfo(bundleName, bundleFlags, userId)
      .then((data): void => {
        let entryDirData = data.codePath
        // if (entryDirData === null) {
        //   Logger.info(TAG, 'codePath is null')
        //   return
        // }
        Logger.info(TAG, `codePath: ${entryDirData}`)
        this.UIContexts.getPromptAction().showToast({
          message: `codePath: ${entryDirData}`
        })
      }).catch((error): void => {
      Logger.info(TAG, `caller onRelease is error: ${error}`)
    })
  }

  // 获取应用的版本信息,对应FA模型的getAppVersionInfo()
  getDispatcherVersion() {
    let bundleName = "ohos.samples.stagemodel"
    let bundleFlags = bundle.BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | bundle.BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY;

    try {
      bundle.getBundleInfo(bundleName, bundleFlags, (err, data) => {
        if (err) {
          Logger.error(TAG, `getDispatcherVersion() failed. Cause: ${JSON.stringify(err.message)}`)
          this.UIContexts.getPromptAction().showToast({
            message: `Operation failed. Cause: ${JSON.stringify(err)}`
          })
        } else {
          this.UIContexts.getPromptAction().showToast({
            message: `Operation successful. Data: ${data?.targetVersion}`
          })
        }
      })
    } catch (err) {
      const error = err as Error;
      Logger.error(TAG, `getDispatcherVersion() failed. Cause: ${error.message}`)
      this.UIContexts.getPromptAction().showToast({
        message: `Operation failed. Cause: ${JSON.stringify(err)}`
      })
    }
  }

  // 获取有关当前能力的信息,对应FA模型的getElementName()
  getAbilityInfo() {
    let bundleName = "ohos.samples.stagemodel"
    let bundleFlags = bundle.BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | bundle.BundleFlag.GET_BUNDLE_INFO_WITH_EXTENSION_ABILITY | bundle.BundleFlag.GET_BUNDLE_INFO_WITH_ABILITY;
    try {
      bundle.getBundleInfo(bundleName, bundleFlags, (err, data) => {
        if (err) {
          Logger.error(TAG, `getAbilityInfo() failed. Cause: ${JSON.stringify(err.message)}`)
          this.UIContexts.getPromptAction().showToast({
            message: `Operation failed. Cause: ${JSON.stringify(err)}`
          })
        } else {
          this.UIContexts.getPromptAction().showToast({
            message: `Operation successful. Data: ${JSON.stringify(data)}`
          })
        }
      })
    } catch (err) {
      const error = err as Error;
      Logger.error(TAG, `getAbilityInfo() failed. Cause: ${error.message}`)
      this.UIContexts.getPromptAction().showToast({
        message: `Operation failed. Cause: ${JSON.stringify(err)}`
      })
    }
  }
}