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

import prompt from '@ohos.prompt'
import Logger from '../util/Logger'
import { Caller, common, Want } from '@kit.AbilityKit';
import { UIContext } from '@ohos.arkui.UIContext';

const TAG: string = 'FormExtContextController'

let want:Want = {
  moduleName: 'entry',
  bundleName: 'ohos.samples.stagemodel',
  abilityName: 'FormAbility',
}

export default class FormExtContextController {
  private UIContexts: UIContext

  constructor(UIContexts:UIContext ){
    this.UIContexts = UIContexts
  }

  private regOnRelease(caller: Caller) {
    try {
      caller.onRelease((msg) => {
        Logger.info(TAG, `caller onRelease is called ${msg}`)
      })
      Logger.info(TAG, 'caller register OnRelease succeed')
    } catch (error) {
      Logger.error(TAG, `caller register OnRelease failed with ${error}`)
    }
  }

  // 拉起一个卡片所属应用的Ability。
  startAbility(context: common.UIAbilityContext) {
    context.startAbility(want).then(() => {
      Logger.info(TAG, `StartAbility Success`)
      this.UIContexts.getPromptAction().showToast({
        message: 'FormExtensionContext success'
      })
    }).catch((error) => {
      Logger.error(TAG, `StartAbility failed: ${error}`)
      this.UIContexts.getPromptAction().showToast({
        message: `StartAbility failed: ${error}`
      })
    })
  }
}