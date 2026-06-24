/**
 * @id TYP_03_06_03_012_FAIL_FLOAT_LITERAL_OUT_OF_RANGE
 * @expect compile-fail
 * @section 3.6.3
 * @design 浮点字面量超出类型范围
 * @note 反向用例：double 超过 IEEE 754 binary64 最大值
 */
function testFloatLiteralOutOfRangeFail(): void {
  // 超过 double 范围
  let d: double = 1.7e309
  // 超过 float 范围
  let f: float = 3.5e38f
}