'use static'
/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
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

import {
  px2vp,
  Context,
} from '@kit.ArkUI';

import window from '@ohos.window';
import { UIContext } from '@ohos.arkui.UIContext';
import display from '@ohos.display';

class WindowSizeManager {
  private size: window.Size = { width: 0, height: 0 };
  constructor() {

    // 原始方法
    // window.getLastWindow(getUIContext().getHostContext()).then((value: window.Window) => {
    //   const rect: window.Rect = value.getWindowProperties().windowRect;
    //   this.size.width = Double.toInt(value.getUIContext().px2vp(rect.width));
    //   this.size.height = Double.toInt(value.getUIContext().px2vp(rect.height));
    //   console.log(`[windowWidth]${this.size.width} [windowHeight]${this.size.height}`);
    // })
    // 方法二 用其他方式获取屏幕宽高，跳过getUIContext
    let displayClass: display.Display | null = null;
    displayClass = display.getDefaultDisplaySync();
    this.size.width = Long.toInt(displayClass.width);
    this.size.height = Long.toInt(displayClass.height);
  }

  get(): window.Size {
    return this.size;
  }
}

export const windowSizeManager: WindowSizeManager = new WindowSizeManager();