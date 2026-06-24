/**
 * @id TYP_03_22_007_RUNTIME_NULLISH_FIELD_DEFAULTS
 * @expect runtime
 * @section 3.22
 * @design 可赋值 undefined 的 nullish 字段默认值为 undefined
 * @note 运行时用例：验证 string|undefined 和 optional 字段
 */
class DefaultNullishFields {
  name: string | undefined
  flag?: boolean
}
function main(): void {
  let obj = new DefaultNullishFields()
  if (obj.name !== undefined) throw new Error("name should default to undefined")
  if (obj.flag !== undefined) throw new Error("flag should default to undefined")
  console.log("nullish field defaults verified")
}
