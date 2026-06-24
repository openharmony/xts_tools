/**
 * @id TYP_03_21_03_004_PASS_OBJECT_LITERAL
 * @expect compile-pass
 * @section 3.21.3
 * @design Object literal 可赋值 Partial（有自己内置 setter）
 * @note 正向用例：spec §3.21.3 例子
 */
interface I4 {
  property: number
}

function foo4(partial: Partial<I4>): void {
  partial.property = 42
}

function testObjectLiteral(): void {
  foo4({property: 1})
}