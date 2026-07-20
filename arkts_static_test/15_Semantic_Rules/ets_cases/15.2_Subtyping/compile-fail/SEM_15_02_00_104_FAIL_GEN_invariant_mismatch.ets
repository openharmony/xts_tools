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
 * @id SEM_15_02_00_104_FAIL_GEN_invariant_mismatch
 * @expect compile-fail
 * @section 15.2
 * @design 默认不变泛型中 `Box<Derived>` 赋给 `Box<Base>`。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_02_gen_fail_001_invariant_mismatch(): void {
  let value: string = 1
}

