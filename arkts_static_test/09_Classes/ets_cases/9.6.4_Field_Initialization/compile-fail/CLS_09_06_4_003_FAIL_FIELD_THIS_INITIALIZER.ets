/*
* Copyright (c) 2021-2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
*/
/**
 * @id CLS_09_06_4_003_FAIL_FIELD_THIS_INITIALIZER
 * @expect compile-fail
 * @section 9.6.4
 * @design 字段初始化器中使用this应导致compile-time warning
 * @note 反向用例：spec规定初始化器使用this产生compile-time warning
 *       ⚠️ SPEC 不一致：spec规定this在初始化器中使用产生compile-time warning，
 *       但es2panda实际编译通过（无error也无warning）
 *       分类：D 类（Spec 与实现不一致）
 */
class ThisInit {
  f0 = this
}
