/**
 * @id TYP_03_07_006_PASS_NEVER_NULL_VOID_REF
 * @expect compile-pass
 * @section 3.7
 * @design never / null / void/undefined 是引用类型
 * @note 正向用例：特殊引用类型
 */
function throwIt7(): never {
  throw new Error("never returns")
}

function testSpecialRef(): void {
  let n: int | null = null
  let u: undefined = undefined
  let v: void = undefined
}