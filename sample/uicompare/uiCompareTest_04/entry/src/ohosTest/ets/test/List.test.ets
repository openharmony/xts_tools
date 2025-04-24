/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import UIComponentScrollScrollBarScrollEdge from './UIComponentScrollScrollBarScrollEdgeTest/UIComponentScrollScrollBarScrollEdge.test'
import UIComponentScrollScrollBarVelocity from './UIComponentScrollScrollBarVelocityTest/UIComponentScrollScrollBarVelocity.test'
import UIComponentOtherRefreshInterface from './UIComponentOtherRefreshInterfaceTest/UIComponentOtherRefreshInterface.test'
import UIComponentOtherRefreshAbility from './UIComponentOtherRefreshAbilityTest/UIComponentOtherRefreshAbility.test'
import UIRefreshComponentContent from './UIRefreshComponentContentTest/UIRefreshComponentContent.test'
import UIComponentRefreshPromptText from './UIComponentRefreshPromptTextTest/UIComponentRefreshpromptText.test'
import UIComponentOtherAlpahabetIndexerVibration from './UIComponentOtherAlpahabetIndexerVibrationTest/UIComponentOtherAlphabetIndexerVibration.test'

export default function testsuite() {
  UIComponentScrollScrollBarScrollEdge();
  UIComponentScrollScrollBarVelocity();
  UIComponentOtherRefreshInterface();
  UIComponentOtherRefreshAbility();
  UIRefreshComponentContent();
  UIComponentRefreshPromptText();
  UIComponentOtherAlpahabetIndexerVibration()
}