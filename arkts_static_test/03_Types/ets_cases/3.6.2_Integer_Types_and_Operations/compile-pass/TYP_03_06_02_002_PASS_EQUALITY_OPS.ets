/**
 * @id TYP_03_06_02_002_PASS_EQUALITY_OPS
 * @expect compile-pass
 * @section 3.6.2
 * @design 整数相等运算 == != 结果是 boolean
 * @note 正向用例：相等性比较
 */
function testEqualityOps(): void {
  let a: int = 10
  let b: int = 10
  let c: int = 20

  let eq1: boolean = a == b
  let eq2: boolean = a != c
  let eq3: boolean = a == c

  // 跨整数类型
  let by: byte = 5
  let lo: long = 5
  let eq4: boolean = by == lo
}