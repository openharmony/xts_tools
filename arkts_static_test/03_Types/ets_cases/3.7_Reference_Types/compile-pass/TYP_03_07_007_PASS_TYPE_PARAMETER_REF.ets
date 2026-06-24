/**
 * @id TYP_03_07_007_PASS_TYPE_PARAMETER_REF
 * @expect compile-pass
 * @section 3.7
 * @design Type parameters 是引用类型
 * @note 正向用例：类型参数 T 是引用类型
 */
class Generic7<T> {
  v: T | undefined
  set(x: T): void { this.v = x }
  get(): T | undefined { return this.v }
}

function genericFn7<T>(x: T): T {
  return x
}

function testTypeParamRef(): void {
  let g: Generic7<int> = new Generic7<int>()
  g.set(42)
  let r: int = genericFn7<int>(1)
}