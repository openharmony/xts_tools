/**
 * @id TYP_03_19_01_014_RUNTIME_STRING_ABSORB
 * @expect runtime
 * @section 3.19.1
 * @design string 吸收 string literal 后运行时仍是 string
 * @note 运行时用例："a"|string → string
 */
type U14 = "a" | "b" | string

function main(): void {
  let u: U14 = "a"
  if (!(u instanceof string)) {
    throw new Error("literal should be string at runtime")
  }

  u = "not literal"
  if (u.length != 11) {
    throw new Error("string behavior failed")
  }

  console.log("String absorb runtime verified")
}