/**
 * Swift 版本 - 字符串连接与插值测试
 * 验证 string 与其他类型的连接
 */

import Foundation

// 1. string + int (使用字符串插值)
let i: Int = 42
let si = "i=\(i)"
assert(si == "i=42", "int concat failed: \(si)")

// 2. string + Int64 (类似 long)
let l: Int64 = 1000000000
let sl = "l=\(l)"
assert(sl == "l=1000000000", "long concat failed: \(sl)")

// 3. string + Float
let f: Float = 3.14
let sf = "f=\(f)"
assert(sf.hasPrefix("f=3.14"), "float concat failed: \(sf)")

// 4. string + Double
let d: Double = 2.718
let sd = "d=\(d)"
assert(sd.hasPrefix("d=2.718"), "double concat failed: \(sd)")

// 5. string + Bool
let b1: Bool = true
let b2: Bool = false
let sb1 = "b1=\(b1)"
let sb2 = "b2=\(b2)"
assert(sb1 == "b1=true", "boolean true concat failed")
assert(sb2 == "b2=false", "boolean false concat failed")

// 6. string + nil (Optional)
let nullable: String? = nil
let sn = "n=\(nullable ?? "nil")"
assert(sn == "n=nil", "nil concat failed: \(sn)")

// 7. number + string
let ns = "\(42) is the answer"
assert(ns == "42 is the answer", "number + string failed")

// 8. 字符串插值表达式
let expr = "2 + 3 = \(2 + 3)"
assert(expr == "2 + 3 = 5", "expression interpolation failed")

print("All Swift concat tests passed!")
