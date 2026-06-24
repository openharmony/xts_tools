/**
 * @id TYP_03_06_03_002_PASS_RELATIONAL_EQUALITY
 * @expect compile-pass
 * @section 3.6.3
 * @design 浮点关系/相等比较结果是 boolean
 * @note 正向用例：< <= > >= == !=
 */
function testRelationalEquality(): void {
  let a: double = 3.14
  let b: double = 2.71

  let r1: boolean = a < b
  let r2: boolean = a <= b
  let r3: boolean = a > b
  let r4: boolean = a >= b
  let r5: boolean = a == b
  let r6: boolean = a != b

  // 跨类型比较
  let f: float = 1.0f
  let r7: boolean = f < a
}