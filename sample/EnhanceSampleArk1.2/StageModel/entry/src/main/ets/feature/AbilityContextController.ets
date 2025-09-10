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

import prompt from '@ohos.promptAction';
import Logger from '../util/Logger'
import type common from '@ohos.app.ability.common'
import abilityAccessCtrl from '@ohos.abilityAccessCtrl'
import { UIContext } from '@ohos.arkui.UIContext';

import { bundleManager, common, Want, Caller, StartOptions} from '@kit.AbilityKit';
import rpc from '@ohos.rpc';

const TAG: string = 'AbilityContextController'
const accountId: int = 100
const resultCode: int = 100
const connectionNumber: int = 0
const permissions = ['']

let want = {
  bundleName: 'ohos.samples.stagemodel',
  abilityName: 'JumpAbility',
  moduleName: 'entry'
} as Want;

let serviceWant = {
  deviceId: '',
  bundleName: 'ohos.samples.stagemodel',
  abilityName: 'ServiceExtAbility',
} as Want;

export default class AbilityContextController {
  private context: common.UIAbilityContext
  private UIContexts:UIContext

  constructor(context:common.UIAbilityContext,UIContexts:UIContext){
    this.context = context
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

  // 启动Ability，对应FA的StartServiceAbility
  startAbility() {
    this.context.startAbility(want, (error) => {
      if (error) {
        const errorCode = error?.code?.toString() ?? 'Unknown';
        Logger.info(TAG, `error.code: ${errorCode}`);
      } else {
        Logger.info(TAG, 'startAbility succeeded');
      }
    });
  }

  // 启动Ability并在结束的时候返回执行结果，对应FA的startAbilityForResult
  startAbilityForResult() {
    this.context.startAbilityForResult(
      {
        deviceId: '', bundleName: 'ohos.samples.stagemodel', abilityName: 'JumpAbility'
      },
      (error, result) => {
        if (error) {
          const errorCode = error?.code?.toString() ?? 'Unknown';
          Logger.info(TAG, `startAbilityForResult failed, error.code: ${errorCode}`);
        } else {
          Logger.info(TAG, 'startAbilityForResult succeeded');
        }

        if (result) {
          const resultCode = result?.resultCode?.toString() ?? 'No result code';
          Logger.info(TAG, `startAbilityForResult resultCode: ${resultCode}`);
        } else {
          Logger.info(TAG, 'startAbilityForResult: no result returned');
        }
      }
    );
  }

  // 启动一个Ability并在该Ability帐号销毁时返回执行结果，
  startAbilityForResultWithAccount() {
    this.context.startAbilityWithAccount(want, accountId, (error, data) => {
      Logger.info(TAG, `startAbilityWithAccount fail, error: ${JSON.stringify(error)}`)
      Logger.info(TAG, `startAbilityWithAccount success, data: ${JSON.stringify(data)}`)
    })
  }

  // 启动一个新的ServiceExtensionAbility，
  startServiceExtensionAbility() {
    this.context.startServiceExtensionAbility(want)
      .then(() => {
        Logger.info(TAG, `startServiceExtensionAbility success`)
        this.UIContexts.getPromptAction().showToast({
          message: 'startServiceExtensionAbility success'
        })
      })
      .catch((error) => {
        Logger.error(TAG, `startServiceExtensionAbility fail, error: ${JSON.stringify(error)}`)
        this.UIContexts.getPromptAction().showToast({
          message: 'startServiceExtensionAbility'
        })
      })
  }

  // 启动一个新的ServiceExtensionAbility，
  startServiceExtensionAbilityWithAccount() {
    this.context.startServiceExtensionAbilityWithAccount(want, accountId)
      .then(() => {
        Logger.info(TAG, `startServiceExtensionAbilityWithAccount success`)
        this.UIContexts.getPromptAction().showToast({
          message: 'startServiceExtensionAbilityWithAccount success'
        })
      })
      .catch((error) => {
        Logger.error(TAG, `startServiceExtensionAbilityWithAccount fail, error: ${JSON.stringify(error)}`)
        this.UIContexts.getPromptAction().showToast({
          message: 'startServiceExtensionAbilityWithAccount'
        })
      })
  }

  // 停止同一应用程序内的服务，
  stopServiceExtensionAbility() {
    this.context.stopServiceExtensionAbility(want)
      .then(() => {
        Logger.info(TAG, `stopServiceExtensionAbility success`)
        this.UIContexts.getPromptAction().showToast({
          message: 'stopServiceExtensionAbility success'
        })
      })
      .catch((error) => {
        Logger.error(TAG, `stopServiceExtensionAbility fail, error: ${JSON.stringify(error)}`)
        this.UIContexts.getPromptAction().showToast({
          message: 'stopServiceExtensionAbility'
        })
      })
  }

  // 使用帐户停止同一应用程序内的服务，
  stopServiceExtensionAbilityWithAccount() {
    this.context.stopServiceExtensionAbilityWithAccount(want, accountId)
      .then(() => {
        Logger.info(TAG, `stopServiceExtensionAbilityWithAccount success`)
        this.UIContexts.getPromptAction().showToast({
          message: 'stopServiceExtensionAbilityWithAccount success'
        })
      })
      .catch((error) => {
        Logger.error(TAG, `stopServiceExtensionAbilityWithAccount fail, error: ${JSON.stringify(error)}`)
        this.UIContexts.getPromptAction().showToast({
          message: 'stopServiceExtensionAbilityWithAccount'
        })
      })
  }

  // 停止Ability自身，对应FA的terminateSelf
  terminateSelf() {
    this.context.terminateSelf((error) => {
      Logger.info(TAG, `terminateSelf result: ${JSON.stringify(error)}`)
    })
  }

  // 停止Ability，配合startAbilityForResult使用，返回给接口调用方AbilityResult信息，对应FA的terminateSelfWithResult
  terminateSelfWithResult() {
    const abilityResult = {
      want: want,
      resultCode: resultCode
    } as common.AbilityResult;
    this.context.terminateSelfWithResult(abilityResult, (error) => {
      if (error) {
        Logger.info(TAG, `terminateSelfWithResult failed, error code: ${error.code}`);
      } else {
        Logger.info(TAG, 'terminateSelfWithResult succeeded');
      }
    });
  }

  // 使用AbilityInfo.AbilityType.SERVICE模板将当前Ability连接到一个Ability，对应FA的ConnectService
  connectAbility() {
    const options: common.ConnectOptions = {
      onConnect:(elementName: bundleManager.ElementName, remote: rpc.IRemoteObject) => {
        Logger.info(TAG, `onConnect`);
        this.UIContexts.getPromptAction().showToast({
          message: 'onConnect'
        });
      },
      onDisconnect:(elementName: bundleManager.ElementName) =>{
        Logger.info(TAG, `onDisconnect`)
        this.UIContexts.getPromptAction().showToast({
          message: 'onDisconnect'
        })
      },
      onFailed:(code: int) =>{
        Logger.info(TAG, `connectAbility: ${JSON.stringify(code)}`)
        this.UIContexts.getPromptAction().showToast({
          message: `connectAbility: ${JSON.stringify(code)}`
        })
      }
    }
    const result = this.context.connectServiceExtensionAbility(serviceWant, options);
    Logger.info(TAG, `connectAbilityResult: ${JSON.stringify(result)}`)
    this.UIContexts.getPromptAction().showToast({
      message: `connectAbilityResult: ${JSON.stringify(result)}`
    })
  }

  // 使用AbilityInfo.AbilityType.SERVICE模板和account将当前Ability连接到一个Ability。
  connectAbilityWithAccount() {
    const options: common.ConnectOptions = {
      onConnect:(elementName: bundleManager.ElementName, remote: rpc.IRemoteObject) =>{
        Logger.info(TAG, `onConnect`)
        this.UIContexts.getPromptAction().showToast({
          message: 'onConnect'
        })
      },
      onDisconnect:(elementName: bundleManager.ElementName) =>{
        Logger.info(TAG, `onDisconnect`)
        this.UIContexts.getPromptAction().showToast({
          message: 'onDisconnect'
        })
      },
      onFailed:(code: int) =>{
        Logger.info(TAG, `connectAbilityWithAccount: ${JSON.stringify(code)}`)
        this.UIContexts.getPromptAction().showToast({
          message: `connectAbilityWithAccount: ${JSON.stringify(code)}`
        })
      }
    }
    const result = this.context.connectServiceExtensionAbilityWithAccount(serviceWant, accountId, options);
    Logger.info(TAG, `connectAbilityResult: ${JSON.stringify(result)}`)
    this.UIContexts.getPromptAction().showToast({
      message: `connectAbilityResult: ${JSON.stringify(result)}`
    })
  }

  // 断开连接，对应FA模型的disconnectService
  disconnectAbility() {
    this.context.disconnectServiceExtensionAbility(connectionNumber).then((data) => {
      Logger.info(TAG, `disconnectAbility success, data: ${JSON.stringify(data)}`)
      this.UIContexts.getPromptAction().showToast({
        message: 'disconnectAbility success'
      })
    }).catch((error) => {
      Logger.error(TAG, `disconnectAbility fail, error: ${JSON.stringify(error)}`)
      this.UIContexts.getPromptAction().showToast({
        message: 'disconnectAbility'
      })
    })
  }

  // 根据account启动Ability
  startAbilityWithAccount() {
    let options = {
      windowMode: 0
    }as StartOptions;
    this.context.startAbilityWithAccount(want, accountId, options, (error) => {
      if (error) {
        Logger.error(TAG, `startAbilityWithAccount fail, error: ${JSON.stringify(error)}`)
        this.UIContexts.getPromptAction().showToast({
          message: `startAbilityWithAccount failed: ${error.code}`
        })
      } else {
        Logger.info(TAG, `startAbilityWithAccount success`)
        this.UIContexts.getPromptAction().showToast({
          message: 'startAbilityWithAccount success'
        })
      }
    })
  }

  // 拉起弹窗请求用户授权，对应FA模型的AppContext中的requestPermissionsFromUser
  requestPermissionsFromUser() {
    let atManager: abilityAccessCtrl.AtManager = abilityAccessCtrl.createAtManager()
    try {
      atManager.requestPermissionsFromUser(this.context, ['ohos.permission.ABILITY_BACKGROUND_COMMUNICATION']).then((data) => {
        Logger.info(TAG, `data: ${JSON.stringify(data)}`)
        this.UIContexts.getPromptAction().showToast({
          message: 'requestPermissionsFromUser success'
        })
      }).catch((err) => {
        Logger.info(TAG, `err: ${JSON.stringify(err)}`)
      })
    } catch (err) {
      Logger.info(TAG, `catch err->${JSON.stringify(err)}`);
    }
  }

  // 设置ability在任务中显示的名称，
  setMissionLabel() {
    this.context.setMissionLabel('test', (result) => {
      Logger.info(TAG, `setMissionLabel: ${JSON.stringify(result)}`)
      this.UIContexts.getPromptAction().showToast({
        message: 'setMissionLabel success'
      })
    })
  }

  // 查询ability是否在terminating状态。
  isTerminating() {
    const isTerminating = this.context.isTerminating()
    this.UIContexts.getPromptAction().showToast({
      message: 'isTerminating success'
    })
    Logger.info(TAG, `ability state: ${JSON.stringify(isTerminating)}`)
  }
}

