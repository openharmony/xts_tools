/**
 * @id TYP_03_01_018_FAIL_VALUE_OVERFLOW
 * @expect compile-fail
 * @section 3.1
 * @design 数值类型声明字面量溢出应编译失败: byte(128/-129)、short(32768/-32769)、int(2147483648)、long(max+1)
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testOverflowFail(): void {
  let b: byte = 128
  let b2: byte = -129
  let s: short = 32768
  let s2: short = -32769
  let i: int = 2147483648
  let l: long = 9223372036854775808
}