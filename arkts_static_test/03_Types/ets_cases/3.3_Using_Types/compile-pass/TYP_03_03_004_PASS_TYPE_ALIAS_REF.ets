/**
 * @id TYP_03_03_004_PASS_TYPE_ALIAS_REF
 * @expect compile-pass
 * @section 3.3
 * @design 通过 type alias 引用类型
 * @note 正向用例：验证 type alias 作为类型引用
 */
type IntArr = int[]
type StrToInt = (s: string) => int
type Maybe<T> = T | undefined

function testTypeAliasRef(): void {
  let arr: IntArr = [1, 2, 3]
  let f: StrToInt = (s: string): int => { return s.length }
  let m: Maybe<int> = 42
  m = undefined
}