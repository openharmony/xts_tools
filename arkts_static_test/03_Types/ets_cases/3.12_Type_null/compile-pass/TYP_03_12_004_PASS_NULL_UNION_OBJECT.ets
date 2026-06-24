/**
 * @id TYP_03_12_004_PASS_NULL_UNION_OBJECT
 * @expect compile-pass
 * @section 3.12
 * @design Object | null 联合类型声明、赋值对象实例和 null
 * @note 正向用例：验证 Object 与 null 的联合类型
 */
class MyClass04 {}
function testNullUnionObject(): void {
  let o: Object | null = null
  o = new Object()
  o = null
  let c: MyClass04 | null = null
  c = new MyClass04()
  c = null
}