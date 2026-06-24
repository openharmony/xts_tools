/**
 * @id TYP_03_03_015_FAIL_GENERIC_WRONG_ARITY
 * @expect compile-fail
 * @section 3.3
 * @design 泛型类型参数数量不匹配应编译失败
 * @note 反向用例：泛型类型参数过多/过少
 */
class Box15<T> {
  v: T
  constructor(x: T) { this.v = x }
}

function testGenericArityFail(): void {
  // 缺少类型参数
  let a: Box15 = new Box15(1)
  // 类型参数过多
  let b: Box15<int, string> = new Box15<int, string>(1, "a")
}