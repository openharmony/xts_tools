'use static'
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

import UIAbility from '@ohos.app.ability.UIAbility';
import AbilityConstant from '@ohos.app.ability.AbilityConstant';
import Want from '@ohos.app.ability.Want';
import window from '@ohos.window';
import { BusinessError } from '@ohos.base'
import hilog from '@ohos.hilog'
import { AppStorage, $r } from '@kit.ArkUI';

class EntryAbility extends UIAbility {
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    hilog.info(0x0000, 'testTag', 'EntryAbility onCreate');
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    hilog.info(0x0000, 'testTag', 'EntryAbility onWindowStageCreate');
    try {
      let filesDir = this.context.filesDir;
      AppStorage.setOrCreate<string>('sanBoxFileDir', filesDir);
      this.getResourceStr();
      windowStage.loadContent('pages/Index', (err: BusinessError<void> | null): void => {
        hilog.info(0x0000, 'testTag', 'loadContent entering');
        if (err && err.code) {
          hilog.info(0x0000, 'testTag', 'loadContent error');
          return;
        }
        hilog.info(0x0000, 'testTag', 'loadContent ok');
      });
    } catch (e) {
      hilog.info(0x0000, 'testTag', 'loadContent catch error：-----------' + e.message);
    }
  }

  getResourceStr(): void {
    try {
      this.context.resourceManager.getStringValue($r('app.string.workerLog1').id)
        .then(value => {
          AppStorage.setOrCreate<string>('copyFileLog1', value);
          hilog.info(0x0000, 'testTag', '%{public}s', 'getStringValue value' + value);
        })
        .catch((error: Error) => {
          hilog.error(0x0000, 'testTag', 'Failed to getStringValue. Cause: %{public}s', error ?? '');
        });

      this.context.resourceManager.getStringValue($r('app.string.workerLog2').id)
        .then(value => {
          AppStorage.setOrCreate<string>('copyFileLog2', value);
          hilog.info(0x0000, 'testTag', '%{public}s', 'getStringValue value' + value);
        })
        .catch((error: Error) => {
          hilog.error(0x0000, 'testTag', 'Failed to getStringValue. Cause: %{public}s', error ?? '');
        });

      this.context.resourceManager.getStringValue($r('app.string.workerLog3').id)
        .then(value => {
          AppStorage.setOrCreate<string>('copyFileLog3', value);
          hilog.info(0x0000, 'testTag', '%{public}s', 'getStringValue value' + value);
        })
        .catch((error: Error) => {
          hilog.error(0x0000, 'testTag', 'Failed to getStringValue. Cause: %{public}s', error ?? '');
        });

      this.context.resourceManager.getStringValue($r('app.string.workerLog4').id)
        .then(value => {
          AppStorage.setOrCreate<string>('copyFileLog4', value);
          hilog.info(0x0000, 'testTag', '%{public}s', 'getStringValue value' + value);
        })
        .catch((error: Error) => {
          hilog.error(0x0000, 'testTag', 'Failed to getStringValue. Cause: %{public}s', error ?? '');
        });

      this.context.resourceManager.getStringValue($r('app.string.workerLog5').id)
        .then(value => {
          AppStorage.setOrCreate<string>('copyFileLog5', value);
          hilog.info(0x0000, 'testTag', '%{public}s', 'getStringValue value' + value);
        })
        .catch((error: Error) => {
          hilog.error(0x0000, 'testTag', 'Failed to getStringValue. Cause: %{public}s', error ?? '');
        });
    } catch (error) {
      error = error as BusinessError;
      hilog.error(0x0000, 'testTag', 'callback getStringValue failed. Cause: %{public}s', error.message ?? '');
    }
  }
}