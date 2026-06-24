/**
 * @id TYP_03_01_010_PASS_NULL_UNION_TYPE
 * @expect compile-pass
 * @section 3.1
 * @design null 在联合类型中的使用: int|null 声明和赋值、string|null 声明和赋值
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function acceptNullable(p: Object | null): void {}

function testNull(): void {
  let n: int | null = null
  n = 42
  n = null

  let s: string | null = null
  s = "hello"
  s = null
}

function callAcceptNullable(): void {
  acceptNullable(new Object())
  acceptNullable(null)
}