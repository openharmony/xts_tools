/**
 * Swift cross-language verification for 3.15.1 String Literal Types
 * Swift 没有 string literal type，使用 String 类型替代
 */
print("=== 3.15.1 String Literal Types ===")

// 1. Swift 没有 string literal type，使用 String
let s0: String = "string literal"
print("Swift: No string literal type, uses String = \(s0)")

// 2. Swift String 赋值
let s1: String = s0
print("Swift: s1=\(s1)")

// 3. Swift String + 运算结果为 String
let s2: String = s0 + s0
print("Swift: s0+s0=\(s2)")

// 4. Swift 使用字符串作为参数
func greet(_ name: String) -> String {
    return "Hello, " + name
}

let result: String = greet("World")
print("Swift: greet=\(result)")

// 5. Swift String 比较（值比较）
let s3: String = "hello"
let s4: String = "hello"
print("Swift: s3==s4: \(s3 == s4)")

// 6. Swift 支持字符串插值
let s5: String = "\(s0) and \(s1)"
print("Swift: interpolation=\(s5)")
