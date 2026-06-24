/**
 * @id TYP_03_04_009_PASS_TYPE_REFERENCE_WITH_ARGS
 * @expect compile-pass
 * @section 3.4
 * @design 类型引用通过类型名 + 类型参数实例化命名类型
 * @note 正向用例：named type 通过 typeArguments 引用
 */
class Holder<T> {
  v: T
  constructor(x: T) { this.v = x }
}

class Pair<A, B> {
  first: A
  second: B
  constructor(a: A, b: B) {
    this.first = a
    this.second = b
  }
}

function testTypeReferenceWithArgs(): void {
  // 单类型参数引用
  let h1: Holder<int> = new Holder<int>(1)
  let h2: Holder<string> = new Holder<string>("x")

  // 多类型参数引用
  let p: Pair<int, string> = new Pair<int, string>(1, "y")

  // 嵌套引用
  let nested: Holder<Holder<int>> = new Holder<Holder<int>>(new Holder<int>(2))
}