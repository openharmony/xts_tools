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
import { uiAppearance } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';
import { common } from '@kit.AbilityKit';

@Entry
@Component
struct PaddingPage_UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingPadding0020 {
  @State name: string = 'PaddingPage_UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingPadding0020';
  @State message: string = 'PaddingPage_UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingPadding0020';
  @State ec_paddingLength: Length = 10;
  private context:common.UIAbilityContext = getContext(this) as common.UIAbilityContext;

  build() {
    Column() {
      Text(this.message)
        .margin(5)
        .backgroundColor(Color.White)

      EmbeddedComponent({
        bundleName: "com.example.uicompare",
        abilityName: "MyEmbeddedUIExtAbility",
      }, EmbeddedType.EMBEDDED_UI_EXTENSION)
        .onTerminated((info) => {
          console.log("EntryEmbeddedUIExtAbility Index2: onTerminated, info:" + JSON.stringify(info));
          this.message = 'Termination: code = ' + info.code + ', want = ' + JSON.stringify(info.want);
          this.context.terminateSelf();
        })
        .onError((error) => {
          console.log("EntryEmbeddedUIExtAbility Index2: onError, error:" + JSON.stringify(error));
          this.message = 'Error: code = ' + error.code;
        })
        .padding(this.ec_paddingLength)
        .backgroundColor(Color.Blue)

    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Red)
  }
}
