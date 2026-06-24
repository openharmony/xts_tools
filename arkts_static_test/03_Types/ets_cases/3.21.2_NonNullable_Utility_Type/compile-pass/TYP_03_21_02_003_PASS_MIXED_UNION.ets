/**
 * @id TYP_03_21_02_003_PASS_MIXED_UNION
 * @expect compile-pass
 * @section 3.21.2
 * @design NonNullable 从复杂 union 中移除 null/undefined
 * @note 正向用例：int | string | null | undefined → int | string
 */
type M = NonNullable<int | string | null | undefined>

function testMixedUnion(): void {
  let m1: M = 42
  let m2: M = "hello"
}