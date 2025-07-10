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

import UIComponentTextRicheditorKeyboardAppearance from './UIComponentTextRicheditorKeyboardAppearanceTest/UIComponentTextRicheditorKeyboardAppearance.test';
import UiComponentMediaTimepickerEnablecascade from './UiComponentMediaTimepickerEnablecascadeTest/UiComponentMediaTimepickerEnablecascade.test'
import TextRichEditorShortcutkey from './TextRichEditorShortcutkeyTest/TextRichEditorShortcutkey.test'
import MediaTextpickerColumnwidths from './MediaTextpickerColumnwidthsTest/MediaTextpickerColumnwidths.test'
import UiComponentInfomationProgressModifierColor from './UiComponentInfomationProgressModifierColorTest/UiComponentInfomationProgressModifierColor.test'
import TextRicheditorSearch from './TextRicheditorSearchTest/TextRicheditorSearch.test'
import TextRicheditorStopBackPress from './TextRicheditorStopBackPressTest/TextRicheditorStopBackPress.test'
import CounterMirrorImage from './CounterMirrorImageTest/CounterMirrorImage.test'
import MediaBadgeLargeFont from './MediaBadgeLargeFontTest/MediaBadgeLargeFont.test'
import UiArkuiTexttimer from './UiArkuiTexttimerTest/UiArkuiTexttimer.test'
import MediaTextpickerDisabletsa from './MediaTextpickerDisabletsaTest/MediaTextpickerDisabletsa.test'
import MediaFramenode from './MediaFramenodeTest/MediaFramenode.test'
import ProgressLinear from './ProgressLinearTest/ProgressLinear.test'
import SymbolglyphFontstzescale from './SymbolglyphFontstzescaleTest/SymbolglyphFontstzescale.test'
import TextRichtexteditorMenuReinforcing from './TextRichtexteditorMenuReinforcingTest/TextRichtexteditorMenuReinforcing.test'
import SpecialcomponentsUicontext from './SpecialcomponentsUicontextTest/SpecialcomponentsUicontext.test'
import TextSearchInterface from './TextSearchInterfaceTest/TextSearchInterface.test'
import InfomationLoadingprogressAnimation from './InfomationLoadingprogressAnimationTest/InfomationLoadingprogressAnimation.test'
import Statusmanagerv2Freezing from './Statusmanagerv2FreezingTest/Statusmanagerv2Freezing.test'
import RoutingSupportstageInterface from './RoutingSupportstageInterfaceTest/RoutingSupportstageInterface.test'

export default function testsuite() {
  UIComponentTextRicheditorKeyboardAppearance();
  UiComponentMediaTimepickerEnablecascade();
  TextRichEditorShortcutkey();
  MediaTextpickerColumnwidths();
  UiComponentInfomationProgressModifierColor();
  TextRicheditorSearch();
  TextRicheditorStopBackPress();
  CounterMirrorImage();
  MediaBadgeLargeFont();
  UiArkuiTexttimer();
  MediaTextpickerDisabletsa();
  MediaFramenode();
  ProgressLinear();
  SymbolglyphFontstzescale();
  TextRichtexteditorMenuReinforcing();
  SpecialcomponentsUicontext();
  TextSearchInterface();
  InfomationLoadingprogressAnimation();
  //Statusmanagerv2Freezing();
  RoutingSupportstageInterface();
}