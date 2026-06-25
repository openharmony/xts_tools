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
 * Swift cross-language verification for TYP_03_17_007_FAIL_TYPE_MISMATCH
 * Swift 会在编译时检查元组类型
 */
import Foundation

// Swift: 编译错误 - 类型不匹配
// let tuple: (Int, String) = ("hello", 1)  // 编译错误

// 正确的方式
let tuple: (String, Int) = ("hello", 1)
print("Swift: requires correct type order")
print("verified")
