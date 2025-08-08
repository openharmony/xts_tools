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



import ComponentNavNavigationBack from './ComponentNavNavigationBackTest/ComponentNavNavigationBack.test'
import ComponentNavNavigation from './ComponentNavNavigationTest/ComponentNavNavigation.test'
import ComponentNavModifier from './ComponentNavModifierTest/ComponentNavModifier.test'
import PrivacySensitiveGauge from './PrivacySensitiveGaugeTest/PrivacySensitiveGauge.test'
import InfomationGaugeUi from './InfomationGaugeUiTest/InfomationGaugeUi.test'
import MediaGaugeWatches from './MediaGaugeWatchesTest/MediaGaugeWatches.test'
import SearchInteraction from './SearchInteractionTest/SearchInteraction.test'
import SearchInterface from './SearchInterfaceTest/SearchInterface.test'
import ComponentTextTv from './ComponentTextTvTest/ComponentTextTv.test'
import TextFadingEdgeTV from './TextFadingEdgeTVTest/TextFadingEdgeTV.test'
import ComponentTextSpanInterface from './ComponentTextSpanInterfaceTest/ComponentTextSpanInterface.test'
import ComponentTextSpanUI from './ComponentTextSpanUITest/ComponentTextSpanUI.test'
import FocusDynamicEffect from './FocusDynamicEffectTest/FocusDynamicEffect.test'
import ComponentTextHalfLeading from './ComponentTextHalfLeadingTest/ComponentTextHalfLeading.test'
import ComponentTextTextUI from './ComponentTextTextUITest/ComponentTextTextUI.test'
import ComponentTextTextInterface from './ComponentTextTextInterfaceTest/ComponentTextTextInterface.test'
import PopToName from './PopToNameTest/PopToName.test'
import MediaImageSpanError from './MediaImageSpanErrorTest/MediaImageSpanError.test'
import PropertyAnmationAnimations from './PropertyAnmationAnimationsTest/PropertyAnmationAnimations.test'




export default function testsuite() {
  ComponentNavNavigationBack();
  ComponentNavNavigation();
  ComponentNavModifier();
  PrivacySensitiveGauge();
  InfomationGaugeUi();
  MediaGaugeWatches();
  SearchInteraction();
  SearchInterface();
  ComponentTextTv();
  TextFadingEdgeTV();
  ComponentTextSpanInterface();
  ComponentTextSpanUI();
  FocusDynamicEffect();
  ComponentTextHalfLeading();
  ComponentTextTextUI();
  ComponentTextTextInterface();
  PopToName();
  MediaImageSpanError();
  PropertyAnmationAnimations();
}