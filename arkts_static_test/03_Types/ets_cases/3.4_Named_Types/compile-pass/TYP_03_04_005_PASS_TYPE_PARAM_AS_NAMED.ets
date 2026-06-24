/**
 * @id TYP_03_04_005_PASS_TYPE_PARAM_AS_NAMED
 * @expect compile-pass
 * @section 3.4
 * @design 类型参数声明 <T> 引入命名类型，在泛型内部可作类型注解
 * @note 正向用例：type parameter 是命名类型
 */
class GenericContainer<T> {
  // T 是 named type，可作字段类型
  value: T
  // T 可作参数类型和返回值类型
  constructor(v: T) {
    this.value = v
  }
  get(): T {
    return this.value
  }
  set(v: T): void {
    this.value = v
  }
}

function genericFn<T>(x: T): T {
  return x
}

function testTypeParamNamed(): void {
  let c: GenericContainer<int> = new GenericContainer<int>(42)
  let r: int = genericFn<int>(1)
}