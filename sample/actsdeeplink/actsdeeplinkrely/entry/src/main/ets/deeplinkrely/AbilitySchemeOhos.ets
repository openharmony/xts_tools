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
import { AbilityConstant, UIAbility, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { window } from '@kit.ArkUI';
import { BusinessError, commonEventManager } from '@kit.BasicServicesKit';
const TAG: string = 'AbilitySchemeOhos';

export default class AbilitySchemeOhos extends UIAbility {
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    hilog.info(0x0000, TAG, "[%{public}s] onCreate, received want: %{public}s", TAG, JSON.stringify(want));
    hilog.info(0x0000, TAG, "[%{public}s] onCreate, want.uri: %{public}s", TAG, JSON.stringify(want.uri));
    let options: commonEventManager.CommonEventPublishData = {
      code: 1,
      parameters: {
        'uri': want.uri
      }
    };
    commonEventManager.publish('onCreate_event', options, (err: BusinessError) => {
      if (err) {
        hilog.info(0x0000, TAG, "[%{public}s] PublishCallBack err: %{public}s", TAG, JSON.stringify(err));
      } else {
        hilog.info(0x0000, TAG, "[%{public}s] Publish success", TAG);
      }
    });
  }

  onDestroy(): void {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onDestroy');
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageCreate');

    windowStage.loadContent('pages/IndexSchemeOhos', (err) => {
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
    // Ability has brought to foreground
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onForeground');
    try {
      setTimeout(() => {
        this.context.terminateSelf((err: BusinessError) => {
          if (err.code) {
            hilog.info(0x0000, TAG, "[%{public}s] terminateSelf failed, code is %{public}s, message is %{public}s", TAG, err.code, err.message);
            return;
          }
          hilog.info(0x0000, TAG, "[%{public}s] terminateSelf succeed", TAG);
        });
      }, 1000);
    } catch (err) {
      let code = (err as BusinessError).code;
      let message = (err as BusinessError).message;
      hilog.info(0x0000, TAG, "[%{public}s] terminateSelf failed, code is %{public}s, message is %{public}s", TAG, code, message);
    }
  }

  onBackground(): void {
    // Ability has back to background
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onBackground');
  }
}
