/**
 * @id TYP_03_05_006_PASS_GENERIC_DEFAULT_TYPE_PARAM
 * @expect compile-pass
 * @section 3.5
 * @design 泛型类型参数 default 允许隐式不提供
 * @note 正向用例：<T = int> 默认类型参数
 */
class Defaulted<T = int> {
  v: T
  constructor(x: T) { this.v = x }
}

function defaultFn<T = string>(x: T): T {
  return x
}

function testDefaultTypeParam(): void {
  // 显式提供
  let d1: Defaulted<int> = new Defaulted<int>(1)

  // 使用默认值（不写 type args）
  let d2: Defaulted = new Defaulted(2)

  // 函数 type arg 默认值
  let r: string = defaultFn("hello")
}