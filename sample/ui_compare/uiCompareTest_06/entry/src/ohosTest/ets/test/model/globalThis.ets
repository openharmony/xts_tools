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

import common from '@ohos.app.ability.common'

// 构造单例对象

export  class  GlobalThis {

  private constructor() {
  }

  private static instance:GlobalThis;

  private _uiContexts =  new Map<string,common.UIAbilityContext> ();

  public static getInstance():GlobalThis {

    if (!GlobalThis.instance) {
        GlobalThis.instance = new GlobalThis();

    }

    return GlobalThis.instance

  }
  getContext(key:string):common.UIAbilityContext | undefined {

    return this._uiContexts.get(key);
  }

  setContext(key:string, value:common.UIAbilityContext) :void {
        this._uiContexts.set(key,value);
  }

  // 其他需要传递的类依次扩展
}