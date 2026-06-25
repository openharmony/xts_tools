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
 * Swift cross-language verification for TYP_03_17_02_004_PASS_UNSAFE_GET
 * Swift 使用元组索引
 */
import Foundation

func logTuple(_ x: Any) {
    if let tuple = x as? (String, String) {
        print(tuple.1)
    }
}

let a: (String, String) = ("aa", "bb")
logTuple(a)

print("verified")
