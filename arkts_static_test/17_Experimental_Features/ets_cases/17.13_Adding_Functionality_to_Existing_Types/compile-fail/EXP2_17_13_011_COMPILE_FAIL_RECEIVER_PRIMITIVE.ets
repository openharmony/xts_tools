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
 * @id EXP2_17_13_011_COMPILE_FAIL_RECEIVER_PRIMITIVE
 * @expect compile-fail
 * @section 17.13
 * @design 验证原始类型作 receiver——应报编译错误
 * @note 反向用例（负向看护）：spec §17.13 receiver 类型只能为 class/interface/array，原始类型(int)应报 compile-time error；es2panda 当前编译通过（unexpected-pass），属编译器未实现检查。差异见 issue_report
 */
function broken(this: int): void {}

function main(): void {}
