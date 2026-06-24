/**
 * @id TYP_03_22_003_RUNTIME_CLASS_FIELD_DEFAULTS
 * @expect runtime
 * @section 3.22
 * @design 类字段 T|undefined 默认值为 undefined
 * @note 运行时用例：spec 原例
 */
class A3 {
  f1: string | undefined
  f2?: boolean
}

function main(): void {
  let a = new A3()
  if (a.f1 !== undefined) throw new Error("f1 should be undefined")
  if (a.f2 !== undefined) throw new Error("f2 should be undefined")
  console.log("Class field defaults verified")
}