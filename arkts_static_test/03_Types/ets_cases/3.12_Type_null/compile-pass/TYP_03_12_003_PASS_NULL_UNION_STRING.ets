/**
 * @id TYP_03_12_003_PASS_NULL_UNION_STRING
 * @expect compile-pass
 * @section 3.12
 * @design string | null 联合类型声明与赋值
 * @note 正向用例：验证 null 在联合类型中与引用类型的组合
 */
function testNullUnionString(): void {
  let s: string | null = null
  s = "hello"
  s = null
}