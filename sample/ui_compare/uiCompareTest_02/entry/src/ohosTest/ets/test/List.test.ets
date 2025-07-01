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



import UiTestCase from './UiTestCase/UiTestCase.test'
import  UiComponentTextCommonLineSpace from './UiComponentTextCommonLineSpace/UiComponentTextCommonLineSpace.test'
import  UiComponentTextRicheditor from './UiComponentTextRicheditor/UiComponentTextRicheditor.test'
import UiComponentUIExtensionComponent from  './UiComponentUIExtensionComponent/UiComponentUIExtensionComponent.test'
import UiComponentBlankLineSelected from './UiComponentBlankLineSelected/UiComponentBlankLineSelected.test'
import UiComponentControllerAddDelete from './UiComponentControllerAddDelete/UiComponentControllerAddDelete.test'
import UiComponentHalfLeading from './UiComponentHalfLeading/UiComponentHalfLeading.test'
import UiComponentInputFontsTzeScale from  './UiComponentInputFontsTzeScale/UiComponentInputFontsTzeScale.test'
import UiComponentOnWillChange from  './UiComponentOnWillChange/UiComponentOnWillChange.test'
import UiComponentTextResponseDefault from './UiComponentTextResponseDefault/UiComponentTextResponseDefault.test'
import ActionEventCommonEventKeyEventDispatch from './ActionEventCommonEventKeyEventDispatch/ActionEventCommonEventKeyEventDispatch.test'
import ActionEventCommonEventFrameNode from './ActionEventCommonEventFrameNode/ActionEventCommonEventFrameNode.test'
import UiComponentArrowKey from './UiComponentArrowKey/UiComponentArrowKey.test'
import UiComponentTextInputTwoWayBinding from './UiComponentTextInputTwoWayBinding/UiComponentTextInputTwoWayBinding.test'
import UiComponentTextShareMenu from './UiComponentTextShareMenu/UiComponentTextShareMenu.test'
import UiComponentTextTranslateMenu from './UiComponentTextTranslateMenu/UiComponentTextTranslateMenu.test'
import UiComponentTextWithTheme from  './UiComponentTextWithTheme/UiComponentTextWithTheme.test'
import UiComponentWordBreakHyphenation from './UiComponentWordBreakHyphenation/UiComponentWordBreakHyphenation.test'
import UiComponentThemeFontFamily from './UiComponentThemeFontFamily/UiComponentThemeFontFamily.test'
import UiComponentWordTextHalfLeading from './UiComponentWordTextHalfLeading/UiComponentWordTextHalfLeading.test'
import UiComponentTextareaBarState from './UiComponentTextareaBarState/UiComponentTextareaBarState.test'
import UiAttributesUseEffectEffectType from './UiAttributesUseEffectEffectType/UiAttributesUseEffectEffectType.test'
import UiImportComponentContent from './UiImportComponentContent/UiImportComponentContent.test'
export default function testsuite() {

  UiTestCase();
  UiComponentTextCommonLineSpace();
  UiComponentTextRicheditor();
  UiComponentUIExtensionComponent();
  UiComponentBlankLineSelected();
  UiComponentControllerAddDelete();
  UiComponentHalfLeading();
  UiComponentInputFontsTzeScale();
  UiComponentOnWillChange();
  UiComponentTextResponseDefault();
  UiComponentTextTranslateMenu();
  ActionEventCommonEventKeyEventDispatch();
  ActionEventCommonEventFrameNode();
  UiComponentArrowKey();
  UiComponentTextInputTwoWayBinding();
  UiComponentTextShareMenu();
  UiComponentTextWithTheme();
  UiComponentWordBreakHyphenation();
  UiComponentThemeFontFamily();
  UiComponentWordTextHalfLeading();
  UiComponentTextareaBarState();
  UiAttributesUseEffectEffectType();
  UiImportComponentContent();
}