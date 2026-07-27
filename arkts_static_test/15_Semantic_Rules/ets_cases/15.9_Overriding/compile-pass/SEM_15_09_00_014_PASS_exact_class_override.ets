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
/*
 * @id SEM_15_09_00_014_PASS_exact_class_override
 * @expect compile-pass
 * @section 15.9
 * @design | 类方法重写 | Java 参数类型变化不是重写。 | Swift 要求显式 `override` 且签名更严格。 | `SEM_15_09_016_PASS_exact_class_override` | `SEM_15_09_017_FAIL_private_method_override_assumed` |
 * @note Generated one-to-one from test_design.
 */

function sem1509Pass020ExactClassOverride(): void {
  let value: int = 1
}


