/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
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
import { AbilityConstant, UIAbility, Want, common, AbilityLifecycleCallback, wantConstant } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { window } from '@kit.ArkUI';
import { BusinessError, commonEventManager } from '@kit.BasicServicesKit';


export default class EntryAbility extends UIAbility {
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    console.log('p1test')
    let funcAbilityWant = want;
    let info = funcAbilityWant?.parameters?.key;
    console.log('===111==='+JSON.stringify(want))
    console.log('===222==='+JSON.stringify(info))
    console.log(`onCreate, want parameters: ${want.parameters?.developerParameters}`);
    let commonEventPublishData: commonEventManager.CommonEventPublishData = {
      parameters: {
        'callerInfo':want,
      }
    }
    commonEventManager.publish('ability_onCreat', commonEventPublishData, async (error) =>{
      hilog.info(0x0000, 'testTag1', '%{public}s',
        `onCreat publish: ${JSON.stringify(error)} data: ${JSON.stringify(commonEventPublishData)}`);
    })

    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onCreate');
  }

  onDestroy(): void {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onDestroy');
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageCreate');

    windowStage.loadContent('pages/Index', (err) => {
      if (err.code) {
        hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
      hilog.info(0x0000, 'testTag', 'Succeeded in loading the content.');
    });
  }

  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageDestroy');
  }

  onForeground(): void {
    let commonEventPublishData: commonEventManager.CommonEventPublishData = {
      parameters: {
        date:'111'
      }
    }
    commonEventManager.publish('ability_onForegroundCallBack', commonEventPublishData, async (error) =>{
      hilog.info(0x0000, 'testTag1', '%{public}s',
        `onForeground publish: ${JSON.stringify(error)} data: ${JSON.stringify(commonEventPublishData)}`);
      this.context.terminateSelf();
    })
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onForeground');

  }

  onBackground(): void {
    // Ability has back to background
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onBackground');
  }

  onNewWant(want: Want, launchParam: AbilityConstant.LaunchParam) {
    let funcAbilityWant = want;
    let info = funcAbilityWant?.parameters?.key;
    console.log('===333==='+JSON.stringify(want))
    console.log('===444==='+JSON.stringify(info))
    console.log(`onCreate, want parameters: ${want.parameters?.developerParameters}`);
    console.log('AbilityLifecycleCallback onNewWant');
    let commonEventPublishData: commonEventManager.CommonEventPublishData = {
      parameters: {
        'callerInfo':want,
      }
    }
    commonEventManager.publish('ability_onNewWant', commonEventPublishData, async (error) =>{
      hilog.info(0x0000, 'testTag1', '%{public}s',
        `onNewWant publish: ${JSON.stringify(error)} data: ${JSON.stringify(commonEventPublishData)}`);
    })
  }
}
