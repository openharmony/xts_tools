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
import { commonEventManager } from '@kit.BasicServicesKit';
import { hilog } from '@kit.PerformanceAnalysisKit';

let storage = LocalStorage.getShared()
const LOG_TAG: string = 'Second'

@Entry(storage)
@Component
struct Extension {
  @State message: string = 'EmbeddedUIExtensionAbility Index';
  private want: Want = {
    bundleName: 'com.example.act_embeddeduiextension',
    abilityName: 'EmbeddedUIExtAbility',
    parameters: {}
  }

  build() {
    Column() {
      Text(this.message)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
      EmbeddedComponent(this.want, EmbeddedType.EMBEDDED_UI_EXTENSION)
        .width('100%')
        .height('90%')
        .onError((error) => {
          let commonEventPublishData: commonEventManager.CommonEventPublishData = {
            parameters: {
              data: error.code
            }
          }
          commonEventManager.publish('EmbeddedUIExtension_Pull', commonEventPublishData, async (error) => {
            hilog.info(0x0000, 'testTag1', '%{public}s', `pulling_up_fail: ${JSON.stringify(error)}`);
          })
          hilog.info(0x0000, LOG_TAG, 'embeddedUIExt onError: %{public}s', JSON.stringify(error));
        })
        .onTerminated((info) => {
          hilog.info(0x0000, LOG_TAG, 'embeddedUIExt onTerminated: %{public}s', JSON.stringify(info));
        })
    }.width('100%').height('100%')
  }
}