/**
 * @id TYP_03_12_002_PASS_NULL_UNION_INT
 * @expect compile-pass
 * @section 3.12
 * @design int | null 联合类型声明、赋值 int 值和 null 值
 * @note 正向用例：验证 null 在联合类型中与值类型的组合
 */
function testNullUnionInt(): void {
  let x: int | null = null
  x = 42
  x = null
  let y: int | null = 100
  y = null
}