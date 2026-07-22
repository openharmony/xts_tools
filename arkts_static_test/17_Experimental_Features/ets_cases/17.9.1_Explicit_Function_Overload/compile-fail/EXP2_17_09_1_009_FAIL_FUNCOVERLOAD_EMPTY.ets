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
 * @id EXP2_17_09_1_009_FAIL_FUNCOVERLOAD_EMPTY
 * @expect compile-fail
 * @section 17.9.1
 * @design overload 声明的函数列表不能为空
 * @note 反向用例：空重载列表
 * @note ⚠️ SPEC 不一致：编译器实际允许空 overload 列表，此处标记为 FAIL
 */
function fInt(a: int): int { return a }
overload empty { }
