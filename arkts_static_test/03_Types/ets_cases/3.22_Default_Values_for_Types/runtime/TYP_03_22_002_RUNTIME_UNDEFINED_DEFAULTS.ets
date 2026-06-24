/**
 * @id TYP_03_22_002_RUNTIME_UNDEFINED_DEFAULTS
 * @expect runtime
 * @section 3.22
 * @design Any/void/undefined 默认值为 undefined
 * @note 运行时用例：spec 原例
 */
function main(): void {
  let o1: Any
  let o2: void
  let o3: undefined

  if (o1 !== undefined) throw new Error("Any default should be undefined")
  if (o2 !== undefined) throw new Error("void default should be undefined")
  if (o3 !== undefined) throw new Error("undefined default should be undefined")
  console.log("Undefined defaults verified")
}