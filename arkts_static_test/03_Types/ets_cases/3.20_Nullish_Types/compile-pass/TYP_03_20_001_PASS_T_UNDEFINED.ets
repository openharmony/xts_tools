/**
 * @id TYP_03_20_001_PASS_T_UNDEFINED
 * @expect compile-pass
 * @section 3.20
 * @design T | undefined nullish 类型声明和赋值
 * @note 正向用例：推荐使用 T | undefined
 */
function testTUndefined(): void {
  let n: int | undefined = 1
  n = undefined
  n = 42

  let s: string | undefined = "hello"
  s = undefined
}