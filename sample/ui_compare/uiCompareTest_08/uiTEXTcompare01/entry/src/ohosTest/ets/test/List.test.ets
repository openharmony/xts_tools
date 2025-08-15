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

import FocusTextUITest from './focus_TextUI/FocusTextUIall.test';
import FocusRichEditor from './focus_TextUI/FocusRichEditorTest.test';
import FocusContentModifierTest from './focus_TextUI/FocusContentmodifier.test';
import FocusTextTimerTest from './focus_TextUI/FocusTextTimerTest.test';
import FocusDataPanelTest from './focus_TextUI/FocusDataPanelTest.test';
import FocusFrameNodeTest from './focus_TextUI/FocusFrameNodeTest.test';
import FocusOtherBadgeInterface from './focus_TextUI/FocusOtherBadgeInterface.test';

export default function testsuite() {
  FocusTextUITest();
  FocusDataPanelTest();
  FocusFrameNodeTest();
  FocusOtherBadgeInterface();
  FocusContentModifierTest();
  FocusRichEditor();
  FocusTextTimerTest();
}