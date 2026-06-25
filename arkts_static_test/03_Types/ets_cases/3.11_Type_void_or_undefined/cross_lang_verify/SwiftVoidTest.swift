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
 * Swift 版本 - 3.11 Type void/undefined 测试
 * 验证 Void 类型作为返回类型、变量、泛型参数的行为
 */

import Foundation

// 1. Void 作为返回类型
func voidReturn() -> Void {
    // Void 函数可以不返回值
}

func voidReturnExplicit() -> Void {
    return // 可以显式 return
}

func voidReturnShorthand() -> () {
    return
}

// 2. Void 作为变量类型
let v1: Void = ()
let v2: () = ()
assert(v1 == v2, "Void values should be equal")

// 3. Void 作为泛型参数
struct Box<T> {
    let value: T
}

let box1 = Box<Void>(value: ())
let box2 = Box<()>(value: ())

// 4. Void 数组
let voidArray: [Void] = [(), (), ()]
assert(voidArray.count == 3, "Void array should have 3 elements")

// 5. 函数类型中的 Void
typealias VoidFunc = () -> Void
let f: VoidFunc = { }
f()

// 6. Void 作为函数参数
func acceptVoid(_ v: Void) -> String {
    return "accepted"
}
let result = acceptVoid(())
assert(result == "accepted", "Should accept Void")

// 7. Optional<Void>
let optionalVoid: Void? = ()
assert(optionalVoid != nil, "Optional<Void> should not be nil")

// 8. 无 undefined 概念（Swift 用 nil）
// let u = undefined // 编译错误

print("Swift Void tests:")

// 执行测试
voidReturn()
voidReturnExplicit()
voidReturnShorthand()
print("  Test 1: Void return type - PASS")

print("  Test 2: Void variable type - PASS (v1=\(v1))")

print("  Test 3: Void as generic parameter - PASS")

print("  Test 4: Void array - PASS (count=\(voidArray.count))")

print("  Test 5: No undefined in Swift (use nil instead) - PASS")

print("  Test 6: Optional<Void> - PASS")

print("\nAll Swift Void tests completed!")
