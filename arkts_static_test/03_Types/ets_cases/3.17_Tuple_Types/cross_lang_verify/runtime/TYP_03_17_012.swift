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
 * Swift cross-language verification for TYP_03_17_012_RUNTIME_TUPLE_LENGTH
 * Swift 元组没有直接的 length 属性
 */
import Foundation

let tuple: (Int, String) = (1, "")
let mirror1 = Mirror(reflecting: tuple)
if mirror1.children.count != 2 { fatalError("length should be 2") }

let tuple2: (Int, Int, String, Bool) = (1, 2, "abc", true)
let mirror2 = Mirror(reflecting: tuple2)
if mirror2.children.count != 4 { fatalError("length should be 4") }

print("verified")
