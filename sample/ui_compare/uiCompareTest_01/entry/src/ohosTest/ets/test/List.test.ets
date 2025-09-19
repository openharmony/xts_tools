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

import gestureMonopolize01Test from './gesture_monopolize/GestureMonopolize01.test';
import stepperInterface01Test from './stepper_interface/stepperInterface01.test';
import navigationContent01Test from './navigation_content/navigationContent01.test';
import animatorCreate01Test from './animator_sample/animatorCreate01.test';
import expectedFrameTest from './expectedFrame/expectedFrame.test';
import waterflowMirrorTest from './waterflow_mirror/waterflowMirror.test';
import scrollAccessibleTest from './scroll_accessible/ScrollAccessible.test';
import specialComponentsTest from './special_components/specialComponents.test';
import measureResultTest from './measureResult/MeasureResult.test';
import FocusDynamicTest from './focus_dynamic/FocusDynamic.test';
import RouterPushTest from './router_push/RouterPush.test';
import ImageSpanTest from './image_span/imageSpan.test';
import SelectionMenuSymbolTest from './selectionMenu_symbol/selectionMenuSymbol.test';

import NavigationInterfaceTest from './navigation_interface/NavigationInterface.test';
import TextInputTest from './textInput/TextInput.test';
import columnTest from './column_matchParent/Column.test';
import componentOutliersTest from './component_outliers/ComponentOutliers.test';
import AlphabetIndexerTest from './alphabetIndexer/AlphabetIndexer.test';
import WaterFlowFadingEdgeTest from './waterflow_fadingedge/WaterflowFadingedge.test';
import TextClockTest from './textClock/TextClock.test';
import ImageSvgAnimateTest from './image_svg_animate/ImageSvgAnimate.test';
import NavTabsTest from './navTabs_interface/NavTabs.test';
import PatternLockTest from './patternLock/PatternLock.test';
import SwiperTest from './swiper_interface/Swiper.test';
import TextPicker01Test from './textPicker/TextPicker01.test';
import TextPicker02Test from './textPicker/TextPicker02.test';
import SidebarContainerStepperTest from './sidebarContainer_stepper/SidebarContainerStepper.test';
import ArcSwiperTest from './arc_interface/ArcSwiper.test';
import ListAndGridTest from './listAndGrid_interface/ListAndGrid.test';
import ImageRadiusTest from './image_svg_animate/ImageRadius.test';
import UiReverseTest from './uiReverse/UiReverse.test';
import RepeatWaterFlowTest from './repeatWaterFlow/RepeatWaterFlow.test';
import LoadingProgressTest from './loadingProgress/LoadingProgress.test';
import DatePickerModeTest from './datePicker/DatePickerMode.test';
import ImageLatticeTest from './image_svg_animate/ImageLattice.test';
import ImageRotateTest from './image_svg_animate/ImageRotate.test';
import ImageModifierTest from './image_svg_animate/ImageModifier.test';
import ImageNetworkTest from './image_svg_animate/ImageNetwork.test';
import ImageObjectFitTest from './image_svg_animate/ImageObjectFit.test';
import ImageOnCompleteTest from './image_svg_animate/ImageOnComplete.test';
import ImageSvgLabelTest from './image_svg_animate/ImageSvgLabel.test';
import ImageSvgParseTest from './image_svg_animate/ImageSvgParse.test';
import ImageResetTest from './image_svg_animate/ImgaeReset.test';
import ImageBorderTest from './image_svg_animate/ImgaeBorder.test';
import ImageFocusTest from './image_svg_animate/ImageFocus.test';
import ImageOpacityTest from './image_svg_animate/ImageOpacity.test';
import MediaImageTest from './mediaImage/MediaImage.test';
import ImageOutliersTest from './image_svg_animate/ImageOutliers.test';
import ImageThumbNailsTest from './image_svg_animate/ImageThumbNails.test';
import ImageAnimatorMonitorTest from './imageAnimator/ImageAnimatorMonitor.test';
import CheckboxScenariosTest from './button/CheckboxScenarios.test';
import RefreshTest from './other/RefreshTest.test';
import SwiperIndicatorInteractiveTest from './swiper_indicatorInteractive/SwiperIndicatorInteractive.test';
import ListFadingEdgeTest from './list_fadingEdge/ListFadingEdge.test';
import ArcScrollBarTest from './arcScrollBar/ArcScrollBar.test';
import ToastPromptActionTest from './toast_promptAction/ToastPromptAction.test';
import AttributesFeatureOutliersTest from './attributesFeatureOutliers/AttributesFeatureOutliers.test';
import ListScrollbarHoverTest from './list_scrollbar_hover/ListScrollbarHover.test';
import TextPickerWearTest from './textPicker_wear/TextPickerWear.test';
import TextPickerOnScrollStopTest from './textPicker_onscrollstop/TextPickerOnScrollStop.test';

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
  FocusDynamicTest();
  RouterPushTest();
  ImageSpanTest();
  SelectionMenuSymbolTest();
  NavigationInterfaceTest();
  TextInputTest();
  columnTest();
  componentOutliersTest();
  AlphabetIndexerTest();
  WaterFlowFadingEdgeTest();
  TextClockTest();
  ImageSvgAnimateTest();
  NavTabsTest();
  PatternLockTest();
  SwiperTest();
  TextPicker01Test();
  TextPicker02Test();
  SidebarContainerStepperTest();
  ArcSwiperTest();
  ListAndGridTest();
  ImageRadiusTest();
  UiReverseTest();
  RepeatWaterFlowTest();
  LoadingProgressTest();
  DatePickerModeTest();
  ImageLatticeTest();
  ImageRotateTest();
  ImageModifierTest();
  ImageNetworkTest();
  ImageObjectFitTest();
  ImageOnCompleteTest();
  ImageSvgLabelTest();
  ImageSvgParseTest();
  ImageResetTest();
  ImageBorderTest();
  ImageFocusTest();
  ImageOpacityTest();
  MediaImageTest();
  ImageOutliersTest();
  ImageThumbNailsTest();
  ImageAnimatorMonitorTest();
  CheckboxScenariosTest();
  RefreshTest();
  SwiperIndicatorInteractiveTest();
  ListFadingEdgeTest();
  ArcScrollBarTest();
  ToastPromptActionTest();
  AttributesFeatureOutliersTest();
  ListScrollbarHoverTest();
  TextPickerWearTest();
  TextPickerOnScrollStopTest();
}