/**
 * @id TYP_03_22_008_PASS_UNDEFINED_SUPERTYPE_DEFAULTS
 * @expect compile-pass
 * @section 3.22
 * @design undefined 及其超类型 Any/void 具有默认 undefined
 * @note 正向用例：未显式初始化可合法使用
 */
function testUndefinedSupertypeDefaults(): void {
  let a: Any
  let v: void
  let u: undefined
  let ok1: boolean = a === undefined
  let ok2: boolean = v === undefined
  let ok3: boolean = u === undefined
}
