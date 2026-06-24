/**
 * @id TYP_03_06_02_001_PASS_RELATIONAL_OPS
 * @expect compile-pass
 * @section 3.6.2
 * @design 整数关系运算 < <= > >= 结果是 boolean
 * @note 正向用例：整数比较运算符
 */
function testRelationalOps(): void {
  let a: int = 10
  let b: int = 20

  let r1: boolean = a < b
  let r2: boolean = a <= b
  let r3: boolean = a > b
  let r4: boolean = a >= b

  // 跨整数类型比较
  let by: byte = 1
  let lo: long = 100
  let r5: boolean = by < lo
  let r6: boolean = lo > by
}