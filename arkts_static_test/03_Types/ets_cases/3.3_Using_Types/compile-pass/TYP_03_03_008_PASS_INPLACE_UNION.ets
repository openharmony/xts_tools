/**
 * @id TYP_03_03_008_PASS_INPLACE_UNION
 * @expect compile-pass
 * @section 3.3
 * @section 3.3
 * @design 就地联合类型声明 T1 | T2
 * @note 正向用例：验证就地联合类型声明
 */
function testInplaceUnion(): void {
  let u1: int | string = 1
  u1 = "hello"

  let u2: number | boolean = true
  u2 = 3.14

  // 三类型 union
  let u3: int | string | boolean = 1
  u3 = "x"
  u3 = false
}