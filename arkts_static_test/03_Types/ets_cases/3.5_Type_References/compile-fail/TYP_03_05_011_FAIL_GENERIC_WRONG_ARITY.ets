/**
 * @id TYP_03_05_011_FAIL_GENERIC_WRONG_ARITY
 * @expect compile-fail
 * @section 3.5
 * @design 泛型类型引用类型参数数量不匹配应失败
 * @note 反向用例：参数过少/过多
 */
class Box11<T> {
  v: T
  constructor(x: T) { this.v = x }
}

class Pair11<A, B> {
  first: A
  second: B
  constructor(a: A, b: B) {
    this.first = a
    this.second = b
  }
}

function testGenericWrongArityFail(): void {
  // 缺少类型参数（无 default）
  let b: Box11 = new Box11(1)
  // 类型参数过多
  let p1: Pair11<int> = new Pair11<int>(1, 2)
  // 类型参数过多 2
  let p2: Pair11<int, string, boolean> = new Pair11<int, string, boolean>(1, "x", true)
}