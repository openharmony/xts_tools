/**
 * @id TYP_03_19_03_005_PASS_KEYOF_METHOD_FIELD
 * @expect compile-pass
 * @section 3.19.3
 * @design keyof 包含字段和方法名
 * @note 正向用例：多个字段+方法
 */
class C5 {
  x: int = 0
  y: int = 0
  move(): void {}
  reset(): void {}
}
type KeysOfC5 = keyof C5

function testKeyofMethodField(): void {
  let k: KeysOfC5 = "x"
  k = "y"
  k = "move"
  k = "reset"
}