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
 * Swift cross-language verification for TYP_03_17_009_FAIL_INDEX_OUT_OF_BOUNDS
 * Swift 元组索引越界在编译时就会发现
 */
import Foundation

let tuple: (Int, String) = (1, "hello")

// Swift: 编译错误 - 索引越界
// let x = tuple.2  // 编译错误: tuple has no member '2'

// 正确的访问
let x = tuple.0
print("Swift: index out of bounds is compile error")
print("verified")
