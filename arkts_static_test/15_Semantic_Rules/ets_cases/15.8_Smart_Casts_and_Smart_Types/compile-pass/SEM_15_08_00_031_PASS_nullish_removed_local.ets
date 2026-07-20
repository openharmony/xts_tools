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
 * @id SEM_15_08_00_031_PASS_nullish_removed_local
 * @expect compile-pass
 * @section 15.8
 * @design | nullish 缩窄 | Java null check 不生成 union-minus-null 类型。 | Swift Optional unwrap 生成新值。 | `SEM_15_08_025_PASS_nullish_removed_local` | `SEM_15_08_028_FAIL_nullish_removed_without_check` |
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem1508Pass022NullishRemovedLocal(): void {
  let value: int = 1
}



