/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import demoTest from  './Demo.test';
import TestCase from './TestCaseTest/TestCase.test';
import UIComponentLayoutStack from './UIComponentLayoutStackTest/UIComponentLayoutStack.test';
import UIComponentArcListScrollBarColor
  from './UIComponentArcListScrollBarColorTest/UIComponentArcListScrollBarColor.test';
import UIComponentInfomationProgressModifierColor
  from './UIComponentInfomationProgressModifierColorTest/UIComponentInfomationProgressModifierColor.test';
import UIComponentMediaImageAnimatorMonitorInvisibleArea
  from './UIComponentMediaImageAnimatorMonitorInvisibleAreaTest/UIComponentMediaImageAnimatorMonitorInvisibleArea.test';
import UIComponentMediaImagePredownload
  from './UIComponentMediaImagePredownloadTest/UIComponentMediaImagePredownload.test';
import UIComponentMediaImageReset from './UIComponentMediaImageResetTest/UIComponentMediaImageReset.test';
import UIComponentMediaImageSvgAnimateTransform
  from './UIComponentMediaImageSvgAnimateTransformTest/UIComponentMediaImageSvgAnimateTransform.test';
import UIComponentMediaTimePickerEnableCascade
  from './UIComponentMediaTimePickerEnableCascadeTest/UIComponentMediaTimePickerEnableCascade.test';
import UIComponentMediaTimePickerStartEndTime
  from './UIComponentMediaTimePickerStartEndTimeTest/UIComponentMediaTimePickerStartEndTime.test';
import UIComponentMediaVideoAI from './UIComponentMediaVideoAITest/UIComponentMediaVideoAI.test';
import UIComponentMediaVideoReset from './UIComponentMediaVideoResetTest/UIComponentMediaVideoReset.test';
import UIComponentScrollClipContent from './UIComponentScrollClipContentTest/UIComponentScrollClipContent.test';
import UIComponentScrollFadingEdge from './UIComponentScrollFadingEdgeTest/UIComponentScrollFadingEdge.test';
import UIComponentScrollPullDown from './UIComponentScrollPullDownTest/UIComponentScrollPullDown.test';
import UIComponentSpecialComponentsEmbeddedComponentFingerClick
  from './UIComponentSpecialComponentsEmbeddedComponentFingerClickTest/UIComponentSpecialComponentsEmbeddedComponentFingerClick.test';
import UIComponentSpecialComponentsEmbeddedComponentKey
  from './UIComponentSpecialComponentsEmbeddedComponentKeyTest/UIComponentSpecialComponentsEmbeddedComponentKey.test';
import UIComponentSpecialComponentsEmbeddedComponentLoader
  from './UIComponentSpecialComponentsEmbeddedComponentLoaderTest/UIComponentSpecialComponentsEmbeddedComponentLoader.test';
import UIComponentSpecialComponentsEmbeddedComponentMouseClick
  from './UIComponentSpecialComponentsEmbeddedComponentMouseClickTest/UIComponentSpecialComponentsEmbeddedComponentMouseClick.test';
import UIComponentSpecialComponentsEmbeddedComponentOnKeyEvent
  from './UIComponentSpecialComponentsEmbeddedComponentOnKeyEventTest/UIComponentSpecialComponentsEmbeddedComponentOnKeyEvent.test';
import UIComponentSpecialComponentsEmbeddedComponentOnTouch
  from './UIComponentSpecialComponentsEmbeddedComponentOnTouchTest/UIComponentSpecialComponentsEmbeddedComponentOnTouch.test';
import UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingLength
  from './UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingLengthTest/UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingLength.test';
import UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingMargin
  from './UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingMarginTest/UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingMargin.test';
import UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingPadding
  from './UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingPaddingTest/UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingPaddingTest.test';
import UIComponentSpecialComponentsEmbeddedComponentSize
  from './UIComponentSpecialComponentsEmbeddedComponentSizeTest/UIComponentSpecialComponentsEmbeddedComponentSize.test';
import UIComponentSpecialComponentsEmbeddedComponent
  from './UIComponentSpecialComponentsEmbeddedComponentTest/UIComponentSpecialComponentsEmbeddedComponent.test';
import UIComponentSpecialComponentsEmbeddedComponentWidthAndHeight
  from './UIComponentSpecialComponentsEmbeddedComponentWidthAndHeightTest/UIComponentSpecialComponentsEmbeddedComponentWidthAndHeight.test';
import UIComponentSpecialComponentsUIContextAddMenuFocus
  from './UIComponentSpecialComponentsUIContextAddMenuFocusTest/UIComponentSpecialComponentsUIContextAddMenuFocus.test';
import UIComponentSpecialComponentsUIContextComponentSnapshot
  from './UIComponentSpecialComponentsUIContextComponentSnapshotTest/UIComponentSpecialComponentsUIContextComponentSnapshot.test';
import UIComponentSpecialComponentsXComponentOnload
  from './UIComponentSpecialComponentsXComponentOnloadTest/UIComponentSpecialComponentsXComponentOnload.test';
import UIComponentSymbolGlyphFontSizeScale
  from './UIComponentSymbolGlyphFontSizeScaleTest/UIComponentSymbolGlyphFontSizeScale.test';
import UIComponentTextChipInterface from './UIComponentTextChipInterfaceTest/UIComponentTextChipInterface.test';
import UIComponentTextRichEditorAction
  from './UIComponentTextRichEditorActionTest/UIComponentTextRichEditorAction.test';
import UIComponentTextRichEditorInterface
  from './UIComponentTextRichEditorInterfaceTest/UIComponentTextRichEditorInterface.test';
import UIComponentTextRichEditorKeyboardAppearance
  from './UIComponentTextRichEditorKeyboardAppearanceTest/UIComponentTextRichEditorKeyboardAppearance.test';
import UIComponentTextRichEditorUI from './UIComponentTextRichEditorUITest/UIComponentTextRichEditorUI.test';
import UIComponentWaterFlowMirror from './UIComponentWaterFlowMirrorTest/UIComponentWaterFlowMirror.test';
import UIComponentWaterFlowSections from './UIComponentWaterFlowSectionsTest/UIComponentWaterFlowSections.test';
import UIRelativeContainerCollaboration
  from './UIRelativeContainerCollaborationTest/UIRelativeContainerCollaboration.test';


export default function testsuite() {
  // demoTest();
  TestCase();
  UIComponentLayoutStack();
  UIRelativeContainerCollaboration();
  UIComponentMediaVideoReset();
  UIComponentMediaVideoAI();
  UIComponentTextRichEditorUI();
  UIComponentTextRichEditorInterface();
  UIComponentTextRichEditorKeyboardAppearance();
  UIComponentTextRichEditorAction();
  UIComponentSymbolGlyphFontSizeScale();
  UIComponentInfomationProgressModifierColor();
  UIComponentMediaTimePickerEnableCascade();
  UIComponentMediaTimePickerStartEndTime();
  UIComponentSpecialComponentsXComponentOnload();
  UIComponentSpecialComponentsEmbeddedComponentSize();
  UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingLength();
  UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingMargin();
  UIComponentSpecialComponentsEmbeddedComponentWidthAndHeight();
  UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingPadding();
  UIComponentSpecialComponentsEmbeddedComponentMouseClick();
  UIComponentSpecialComponentsEmbeddedComponentFingerClick();
  UIComponentSpecialComponentsEmbeddedComponentKey();
  UIComponentSpecialComponentsEmbeddedComponentOnKeyEvent();
  UIComponentSpecialComponentsEmbeddedComponentOnTouch();
  UIComponentSpecialComponentsEmbeddedComponent();
  UIComponentSpecialComponentsEmbeddedComponentLoader();
  UIComponentMediaImagePredownload();
  UIComponentMediaImageSvgAnimateTransform();
  UIComponentMediaImageReset();
  UIComponentMediaImageAnimatorMonitorInvisibleArea();
  UIComponentScrollFadingEdge();
  UIComponentArcListScrollBarColor();
  UIComponentScrollClipContent();
  UIComponentScrollPullDown();
  UIComponentWaterFlowMirror();
  UIComponentWaterFlowSections();
  UIComponentSpecialComponentsUIContextComponentSnapshot();
  UIComponentSpecialComponentsUIContextAddMenuFocus();
  UIComponentTextChipInterface();
}