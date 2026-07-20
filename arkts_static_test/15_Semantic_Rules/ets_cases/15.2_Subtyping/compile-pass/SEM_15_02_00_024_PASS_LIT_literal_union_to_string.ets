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
 * @id SEM_15_02_00_024_PASS_LIT_literal_union_to_string
 * @expect compile-pass
 * @section 15.2
 * @design | 字面量/nullish | Java 没有字符串字面量类型，且 `null` 可赋给引用。 | Swift 的 `nil` 只用于 Optional。 | `SEM_15_02_036_PASS_LIT_literal_union_to_string` | `SEM_15_02_039_FAIL_LIT_null_to_Object` |
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem1502LitPass010LiteralUnionToString(): void {
  let value: int = 1
}



