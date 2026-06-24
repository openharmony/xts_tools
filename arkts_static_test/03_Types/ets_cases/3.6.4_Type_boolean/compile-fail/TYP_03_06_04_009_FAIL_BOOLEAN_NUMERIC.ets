/**
 * @id TYP_03_06_04_009_FAIL_BOOLEAN_NUMERIC
 * @expect compile-fail
 * @section 3.6.4
 * @design boolean ↔ 数值互转禁止
 * @note 反向用例：sec §3.6.4 boolean 与数值不可转
 */
function testBooleanNumericFail(): void {
  let b: boolean = true
  let i: int = b
  let d: double = b

  let n: int = 1
  let bl: boolean = n
}