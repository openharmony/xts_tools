/**
 * Swift 版本 - 字符串 Optional (null 安全) 测试
 * 验证 Optional 赋值、解包、与 Any 的关系
 */

import Foundation

// 1. String? 可以是 nil
let s1: String? = nil
assert(s1 == nil, "nil should be assignable to String?")

// 2. nil 不能直接赋值给 String
// let s2: String = nil // 编译错误

// 3. Optional 绑定
let s3: String? = "hello"
if let unwrapped = s3 {
    assert(unwrapped == "hello", "unwrapped should be hello")
} else {
    assert(false, "should not reach here")
}

// 4. nil 检查
let s4: String? = nil
assert(s4 == nil, "nil string should be nil")

// 5. Any 可以接受 Optional
let obj: Any = s1 as Any
// Any 可以包含 Optional，但类型不同

// 6. 字符串数组中的 nil
let arr: [String?] = ["hello", nil, "world"]
assert(arr[0] == "hello", "first element should be hello")
assert(arr[1] == nil, "second element should be nil")
assert(arr[2] == "world", "third element should be world")

// 7. nil 与字符串插值
let s5: String? = nil
let result = "value=\(s5 ?? "nil")"
assert(result == "value=nil", "nil interpolation should produce 'nil'")

// 8. Optional 链式调用
let s6: String? = "hello"
let upper = s6?.uppercased()
assert(upper == "HELLO", "chain call should work")

let s7: String? = nil
let upper2 = s7?.uppercased()
assert(upper2 == nil, "nil chain should return nil")

// 9. guard let 解包
func processString(_ str: String?) -> String {
    guard let unwrapped = str else {
        return "default"
    }
    return unwrapped
}

assert(processString("hello") == "hello", "non-nil should return value")
assert(processString(nil) == "default", "nil should return default")

print("All Swift null safety tests passed!")
