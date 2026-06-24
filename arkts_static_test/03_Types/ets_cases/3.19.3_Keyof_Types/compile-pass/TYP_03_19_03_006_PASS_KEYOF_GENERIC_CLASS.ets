/**
 * @id TYP_03_19_03_006_PASS_KEYOF_GENERIC_CLASS
 * @expect compile-pass
 * @section 3.19.3
 * @design keyof 可用于泛型类实例化类型
 * @note 正向用例：keyof Box<int>
 */
class Box6<T> {
  value: T
  constructor(v: T) { this.value = v }
  get(): T { return this.value }
}
type KeysOfBox6 = keyof Box6<int>

function testKeyofGenericClass(): void {
  let k: KeysOfBox6 = "value"
  k = "get"
}