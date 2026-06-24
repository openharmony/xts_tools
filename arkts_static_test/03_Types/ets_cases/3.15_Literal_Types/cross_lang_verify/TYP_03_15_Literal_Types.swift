/**
 * Swift cross-language verification for 3.15 Literal Types
 * Swift 支持字面量类型
 */
print("=== 3.15 Literal Types ===")

// 1. Swift 支持字符串字面量类型
let a: String = "string literal"
print("Swift: String literal type = \(a)")

// 2. Swift 使用 Optional 处理 null/nil
let b: String? = nil
print("Swift: Optional for nullability = \(b ?? "nil")")

// 3. Swift 没有 undefined，使用 nil
print("Swift: No undefined, uses nil")

// 4. Swift 使用字面量作为参数
func printThem(_ p1: String, _ p2: String?) {
    print("Swift: p1=\(p1) p2=\(p2 ?? "nil")")
}

printThem("string literal", nil)

// 5. Swift 支持枚举关联值（类似字面量类型）
enum Literal {
    case string(String)
    case null
}

let lit: Literal = .string("hello")
print("Swift: Enum for literal types")
