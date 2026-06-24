/**
 * @id TYP_03_01_017_FAIL_VALUE_NARROWING
 * @expect compile-fail
 * @section 3.1
 * @design 隐式 narrowing 转换应编译失败: int→byte、int→short、long→int、double→float
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testNarrowingFail(): void {
  let i: int = 100
  let b: byte = i
  let s: short = i

  let l: long = 100
  let i2: int = l

  let d: double = 3.14
  let f: float = d
}