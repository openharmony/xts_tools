/**
 * @id TYP_03_21_02_008_RUNTIME_BASIC
 * @expect runtime
 * @section 3.21.2
 * @design NonNullable 展开后运行时值正确
 * @note 运行时用例：Object
 */
type R8 = NonNullable<Object | null | undefined>

function main(): void {
  let v: R8 = new Object()
  if (!(v instanceof Object)) {
    throw new Error("NonNullable runtime failed")
  }
  console.log("NonNullable runtime verified")
}