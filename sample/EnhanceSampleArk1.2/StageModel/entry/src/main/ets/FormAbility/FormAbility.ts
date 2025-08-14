/*
 * Copyright (c) 2022-2023 Huawei Device Co., Ltd.
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

import FormExtension from '@ohos.app.form.FormExtensionAbility'
import formBindingData from '@ohos.app.form.formBindingData'
import formInfo from '@ohos.app.form.formInfo'

export default class FormAbility extends FormExtension {
  onCreate(want) {
    // 创建卡片
    let formData = {}
    return formBindingData.createFormBindingData(formData)
  }

  onCastToNormal(formId) {
    // 通知表单提供者临时表单已成功转换为常规表单
  }

  onUpdate(formId) {
    // 表单提供者更新指定表单
  }

  onVisibilityChange(newStatus) {
    // 通知表单提供者从系统接收单事件
  }

  onEvent(formId, message) {
    // 当表单提供者定义的特定消息事件被触发时调用
  }

  onAcquireFormState(want) {
    // 返回{@link FormState} 对象
    return formInfo.FormState.READY
  }

  onDestroy(formId) {
    // 用于通知表单提供者指定表单已被销毁
  }
}