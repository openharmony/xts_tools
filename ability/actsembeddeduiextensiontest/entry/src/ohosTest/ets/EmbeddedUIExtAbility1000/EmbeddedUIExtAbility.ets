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
import { EmbeddedUIExtensionAbility, StartOptions, UIExtensionContentSession, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { BusinessError } from '@kit.BasicServicesKit';

const TAG: string = '[ExampleEmbeddedAbility]'

export default class ExampleEmbeddedAbility extends EmbeddedUIExtensionAbility {
  onCreate() {
    console.log(TAG, `onCreate`)
    let want: Want = {
      deviceId: '',
      bundleName: 'com.example.act_embeddeduiextension',
      abilityName: 'EntryAbilityd',
    }
    let options: StartOptions = {
      displayId: 0
    };
    try {
      this.context.startAbility(want, options).then(() => {
        hilog.info(0x0000, TAG, '%{public}s',
          `start ability successful,result123: `);
        hilog.info(0x0000, TAG, 'succeed');
      }).catch((err: BusinessError) => {
        hilog.info(0x0000, TAG, '%{public}s', `start ablility err : ${err}`);
      })
    } catch (error) {
      hilog.info(0x0000, TAG, '%{public}s', `start fail : ${error}`);
    }
  }

  onForeground() {
    console.log(TAG, `onForeground`);
  }

  onBackground() {
    hilog.info(0x0000, 'testTag', `onBackground`)
  }

  onDestroy() {
    console.log(TAG, `onDestroy`);
  }

  onSessionCreate(want: Want, session: UIExtensionContentSession) {
    console.log(TAG, `onSessionCreate, want: ${JSON.stringify(want)}`);
    let param: Record<string, UIExtensionContentSession> = {
      'session': session
    };
    let storage: LocalStorage = new LocalStorage(param);
    session.loadContent('pages/Index', storage);
  }

  onSessionDestroy(session: UIExtensionContentSession) {
    console.log(TAG, `onSessionDestroy`);
  }
}