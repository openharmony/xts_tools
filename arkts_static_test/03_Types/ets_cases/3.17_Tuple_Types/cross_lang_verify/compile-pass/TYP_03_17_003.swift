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
 * Swift cross-language verification for TYP_03_17_003_PASS_TUPLE_LENGTH
 * Swift 元组没有直接的 length 属性
 */
import Foundation

let tuple: (Int, String) = (1, "")

// Swift 元组没有 length 属性，使用 Mirror 获取
let mirror = Mirror(reflecting: tuple)
let len = mirror.children.count

if len != 2 { fatalError("length should be 2") }

print("verified")
