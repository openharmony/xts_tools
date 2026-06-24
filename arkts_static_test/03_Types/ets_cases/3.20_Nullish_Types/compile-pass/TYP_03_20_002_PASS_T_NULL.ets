/**
 * @id TYP_03_20_002_PASS_T_NULL
 * @expect compile-pass
 * @section 3.20
 * @design T | null nullish 类型声明和赋值
 * @note 正向用例：支持 null 兼容形式
 */
function testTNull(): void {
  let n: int | null = 1
  n = null
  n = 42

  let s: string | null = "hello"
  s = null
}