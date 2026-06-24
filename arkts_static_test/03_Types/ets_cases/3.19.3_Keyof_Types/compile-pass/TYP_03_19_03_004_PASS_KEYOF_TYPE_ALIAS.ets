/**
 * @id TYP_03_19_03_004_PASS_KEYOF_TYPE_ALIAS
 * @expect compile-pass
 * @section 3.19.3
 * @design keyof 可用于 class/interface 类型别名引用
 * @note 正向用例：type alias 指向 class 后使用 keyof
 */
class C4 {
  a: int = 0
  b: string = ""
}
type AliasC4 = C4
type KeysOfAliasC4 = keyof AliasC4

function testKeyofAlias(): void {
  let k: KeysOfAliasC4 = "a"
  k = "b"
}