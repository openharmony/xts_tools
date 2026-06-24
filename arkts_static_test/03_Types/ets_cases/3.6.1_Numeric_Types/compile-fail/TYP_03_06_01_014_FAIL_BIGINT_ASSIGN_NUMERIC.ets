/**
 * @id TYP_03_06_01_014_FAIL_BIGINT_ASSIGN_NUMERIC
 * @expect compile-fail
 * @section 3.6.1
 * @design 数值类型变量不能接受 bigint 字面量
 * @note 反向用例：bigint 不能赋值给数值类型变量
 */
function testBigintAssignNumericFail(): void {
  let i: int = 100n
  let n: number = 200n
  let l: long = 300n
  let d: double = 400n
}