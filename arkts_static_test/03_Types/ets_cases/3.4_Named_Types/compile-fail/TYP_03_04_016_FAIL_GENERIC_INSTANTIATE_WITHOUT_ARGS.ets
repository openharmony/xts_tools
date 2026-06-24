/**
 * @id TYP_03_04_016_FAIL_GENERIC_INSTANTIATE_WITHOUT_ARGS
 * @expect compile-fail
 * @section 3.4
 * @design 泛型命名类型必须用类型参数实例化（除非有 default）
 * @note 反向用例：缺少类型参数引用泛型命名类型
 */
class GenericC<T> {
  v: T
  constructor(x: T) { this.v = x }
}

interface GenericI<T> {
  get(): T
}

function testGenericNoArgsFail(): void {
  // 引用泛型类时必须给类型参数
  let c: GenericC = new GenericC(1)
  let i: GenericI = null
}