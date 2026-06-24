import Foundation

/**
 * Swift 版本 - 3.14 Type bigint 测试
 * 验证 Swift 中的大整数处理（使用 Int64 或自定义大数）
 */
func testBigInt() {
    // Swift 没有原生的 BigInt 类型，使用 Int64 模拟
    // 实际项目中可以使用 SwiftBigInt 库
    
    // 1. Int64 创建
    let b1: Int64 = 123
    let b2: Int64 = 456
    let b3: Int64 = 0
    
    assert(b1 == 123, "b1 assert failed")
    assert(b2 == 456, "b2 assert failed")
    assert(b3 == 0, "b3 assert failed")
    
    // 2. Int64 是 Any 子类型（值类型）
    let obj: Any = b1
    assert(obj is Int64, "Int64 should be Any")
    
    // 3. Int64 算术运算
    let a: Int64 = 100
    let b: Int64 = 3
    
    assert(a + b == 103, "add failed")
    assert(a - b == 97, "sub failed")
    assert(a * b == 300, "mul failed")
    assert(a / b == 33, "div failed")
    assert(a % b == 1, "mod failed")
    assert(-a == -100, "neg failed")
    
    // 4. Int64 关系运算
    let x: Int64 = 100
    let y: Int64 = 200
    
    assert(x < y, "x should be less than y")
    assert(y > x, "y should be greater than x")
    assert(x == 100, "x should equal 100")
    
    // 5. Int64 与 Int 的关系
    let n: Int = 42
    assert(x > Int64(n), "x should be greater than n")
    
    // 6. Int64 溢出限制（Swift 特有）
    // Int64.max = 9223372036854775807
    // 超过会溢出，需要使用特殊处理
    let maxInt64: Int64 = Int64.max
    assert(maxInt64 == 9223372036854775807, "max int64 check")
    
    // 7. Int64 数组
    let arr: [Int64] = [1, 2, 3]
    assert(arr.count == 3, "array count should be 3")
    
    // 8. Int64 作为函数参数
    let result = doubleValue(50)
    assert(result == 100, "result should be 100")
    
    print("All Swift Int64 tests passed!")
}

func doubleValue(_ b: Int64) -> Int64 {
    return b * 2
}

testBigInt()
