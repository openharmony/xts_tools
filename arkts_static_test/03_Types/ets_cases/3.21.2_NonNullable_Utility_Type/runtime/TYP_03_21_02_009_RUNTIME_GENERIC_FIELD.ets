/**
 * @id TYP_03_21_02_009_RUNTIME_GENERIC_FIELD
 * @expect runtime
 * @section 3.21.2
 * @design 泛型 NonNullable<T> 字段运行时验证
 * @note 运行时用例：spec 原例 A<Object|undefined>
 */
class A9<T> {
  field: NonNullable<T>
  constructor(field: NonNullable<T>) {
    this.field = field
  }
}

function main(): void {
  const a = new A9<Object | undefined>(new Object())
  // field 类型是 Object
  let f: Object = a.field
  if (!(f instanceof Object)) {
    throw new Error("NonNullable field failed")
  }
  console.log("NonNullable generic field verified")
}