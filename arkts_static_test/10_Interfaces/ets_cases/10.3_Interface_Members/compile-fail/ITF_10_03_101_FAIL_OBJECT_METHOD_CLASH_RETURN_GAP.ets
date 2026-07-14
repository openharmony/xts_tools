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
 * @id ITF_10_03_101_FAIL_OBJECT_METHOD_CLASH_RETURN_GAP
 * @expect compile-fail
 * @section 10.3
 * @design toString() 返回值冲突（spec 示例变体）
 * @note 反向用例：验证 toString():string 也应被 Object 方法冲突规则拒绝
 *       规范 §10.3 line 167 — 编译器未实现（GAP）
 */
interface BadToStringReturn {
    toString(): string;
}
