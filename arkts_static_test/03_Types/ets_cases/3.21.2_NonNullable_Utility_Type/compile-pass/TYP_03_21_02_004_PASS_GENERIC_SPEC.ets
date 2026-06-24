/**
 * @id TYP_03_21_02_004_PASS_GENERIC_SPEC
 * @expect compile-pass
 * @section 3.21.2
 * @design 在泛型类中 NonNullable<T> 用于字段（spec 原例）
 * @note 正向用例：spec §3.21.2 class A<T> 示例
 */
class A4<T> {
  field: NonNullable<T>
  constructor(field: NonNullable<T>) {
    this.field = field
  }
}

function testGenericSpec(): void {
  const a = new A4<Object | undefined>(new Object())
}