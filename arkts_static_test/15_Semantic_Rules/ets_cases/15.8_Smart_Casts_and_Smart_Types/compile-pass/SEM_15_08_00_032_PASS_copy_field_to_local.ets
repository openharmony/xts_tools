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
 * @id SEM_15_08_00_032_PASS_copy_field_to_local
 * @expect compile-pass
 * @section 15.8
 * @design | 存储稳定性 | Java pattern variable 是局部变量，不是字段。 | Swift 常用局部绑定避免字段不稳定。 | `SEM_15_08_026_PASS_copy_field_to_local` | `SEM_15_08_030_FAIL_getter_assumed_stable` |
 * @note Generated one-to-one from test_design.
 */

function sem1508Pass023CopyFieldToLocal(): void {
  let value: int = 1
}



