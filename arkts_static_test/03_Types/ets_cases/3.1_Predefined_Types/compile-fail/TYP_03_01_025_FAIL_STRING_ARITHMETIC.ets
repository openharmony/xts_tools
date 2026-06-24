/**
 * @id TYP_03_01_025_FAIL_STRING_ARITHMETIC
 * @expect compile-fail
 * @section 3.1
 * @design string 类型非法算术运算应编译失败: 字符串与数值做(- * /)运算、字符串赋值给非 string 类型
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testStringInvalidOpsFail(): void {
  let s: string = "hello"
  let diff: string = s - "world"
  let prod: string = s * 2
  let quot: string = s / "a"

  let n: int = s
}