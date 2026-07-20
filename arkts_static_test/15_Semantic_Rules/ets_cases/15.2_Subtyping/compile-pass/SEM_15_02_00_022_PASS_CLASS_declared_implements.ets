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
 * @id SEM_15_02_00_022_PASS_CLASS_declared_implements
 * @expect compile-pass
 * @section 15.2
 * @design | 名义类/接口 | Java 也偏名义类型；ArkTS 不接受纯结构匹配。 | Swift protocol 也需声明遵循，但 extension/existential 不同。 | `SEM_15_02_034_PASS_CLASS_declared_implements` | `SEM_15_02_035_FAIL_CLASS_structural_match_without_implements` |
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem1502ClassPass010DeclaredImplements(): void {
  let value: int = 1
}


