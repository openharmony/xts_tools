/**
 * @id TYP_03_06_01_013_FAIL_LITERAL_OUT_OF_RANGE
 * @expect compile-fail
 * @section 3.6.1
 * @design 数值字面量超出类型范围应编译失败
 * @note 反向用例：边界值溢出
 */
function testLiteralOutOfRangeFail(): void {
  let b1: byte = 128         // byte max + 1
  let b2: byte = -129        // byte min - 1
  let s1: short = 32768      // short max + 1
  let s2: short = -32769     // short min - 1
  let i1: int = 2147483648   // int max + 1
}