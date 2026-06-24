/**
 * @id TYP_03_14_010_PASS_BIGINT_GENERIC
 * @expect compile-pass
 * @section 3.14
 * @design 验证 bigint 作为泛型参数
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class BigIntBox<T> {
  value: T
  constructor(value: T) {
    this.value = value
  }
}

function main(): void {
  let box = new BigIntBox<bigint>(123n)
  if (box.value !== 123n) throw new Error("value should be 123")
  console.log("verified")
}
