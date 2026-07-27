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
 * @id SEM_15_08_00_029_PASS_instanceof_intersection
 * @expect compile-pass
 * @section 15.8
 * @design | 类型表达式 | Java 不暴露通用交叉/差集智能类型表达式。 | Swift 通过新绑定表达缩窄，不使用 ArkTS 差集类型。 | `SEM_15_08_023_PASS_instanceof_intersection` | `SEM_15_08_024_FAIL_unexpressible_smart_return` |
 * @note Generated one-to-one from test_design.
 */

function sem1508Pass020InstanceofIntersection(): void {
  let value: int = 1
}


