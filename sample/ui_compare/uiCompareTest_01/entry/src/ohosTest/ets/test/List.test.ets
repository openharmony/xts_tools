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

import gestureMonopolize01Test from './gesture_monopolize/gestureMonopolize01.test';
import stepperInterface01Test from './stepper_interface/stepperInterface01.test';
import navigationContent01Test from './navigation_content/navigationContent01.test';
import animatorCreate01Test from './animator_sample/animatorCreate01.test';
import expectedFrameTest from './expectedFrame/expectedFrame.test';
import waterflowMirrorTest from './waterflow_mirror/waterflowMirror.test'
import scrollAccessibleTest from './scroll_accessible/scrollAccessible.test'
import specialComponentsTest from './special_components/specialComponents.test'
import measureResultTest from './measureResult/measureResult.test'

export default function testsuite() {
  gestureMonopolize01Test();
  stepperInterface01Test();
  navigationContent01Test();
  animatorCreate01Test();
  expectedFrameTest();
  waterflowMirrorTest();
  scrollAccessibleTest();
  measureResultTest();
  specialComponentsTest();
}