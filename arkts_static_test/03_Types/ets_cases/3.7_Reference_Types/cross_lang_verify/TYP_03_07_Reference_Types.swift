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
 * Swift cross-language verification for 3.7 Reference Types
 */
print("=== 3.07 Reference Types ===")
// Swift: classes are reference types, structs are value types
class RefType { var x: Int = 0 }
var ref: RefType? = nil  // Swift uses Optional for nullability
ref = RefType()
print("Swift: reference types use Optional (matches ArkTS nullish pattern)")
