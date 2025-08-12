'use static'
/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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
  Resource,
  UIContext,
  Context
} from '@kit.ArkUI';

export function getStringArray(resource: Resource, uIContext: UIContext): Array<string> {
  let context = uIContext.getHostContext() as Context;
  let menuList: Array<string> = context.resourceManager.getStringArrayValueSync(resource.id);
  return menuList;
}

export function getString(resource: Resource, uIContext: UIContext): string {
  let context = uIContext.getHostContext() as Context;
  return context.resourceManager.getStringSync(resource.id);
}