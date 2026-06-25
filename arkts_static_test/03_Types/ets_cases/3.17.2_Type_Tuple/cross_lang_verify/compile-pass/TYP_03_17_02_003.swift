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
 * Swift cross-language verification for TYP_03_17_02_003_PASS_INSTANCEOF_TUPLE
 * Swift 使用 is 操作符
 */
import Foundation

func checkTuple(_ x: Any) {
    if x is (Int, String) {
        print("is (Int, String)")
    }
}

let pair: (Int, String) = (1, "abc")
checkTuple(pair)

print("verified")
