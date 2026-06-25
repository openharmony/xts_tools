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
 * Swift cross-language verification for TYP_03_17_01_007_RUNTIME_READONLY_TUPLE_BASIC
 */
import Foundation

let tuple: (Int, String) = (1, "abc")

if tuple.0 != 1 { fatalError("tuple.0 should be 1") }
if tuple.1 != "abc" { fatalError("tuple.1 should be abc") }

print("verified")
