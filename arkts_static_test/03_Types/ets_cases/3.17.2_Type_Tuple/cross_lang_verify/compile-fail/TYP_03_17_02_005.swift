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
 * Swift cross-language verification for TYP_03_17_02_005_FAIL_DIRECT_ACCESS
 * Swift Any 类型不能直接访问元组元素
 */
import Foundation

let pair: (Int, String) = (1, "abc")
let a: Any = pair

// Swift: Any 类型不能直接访问元组元素
// let x = a.0  // 编译错误: Value of type 'Any' has no member '0'

// 需要类型转换
if let tuple = a as? (Int, String) {
    let x = tuple.0
    print("Swift: direct access requires cast: \(x)")
}

print("verified")
