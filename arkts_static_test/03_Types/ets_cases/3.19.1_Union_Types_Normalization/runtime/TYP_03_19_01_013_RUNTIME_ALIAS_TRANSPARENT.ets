/**
 * @id TYP_03_19_01_013_RUNTIME_ALIAS_TRANSPARENT
 * @expect runtime
 * @section 3.19.1
 * @design alias 展开归一化后运行时值保持
 * @note 运行时用例：type alias chain number|string
 */
type A13 = B13
type B13 = C13
type C13 = number | string

function main(): void {
  let u: A13 = 3.14
  if (!(u instanceof number)) {
    throw new Error("u should hold number")
  }

  u = "hello"
  if (!(u instanceof string)) {
    throw new Error("u should hold string")
  }

  console.log("Alias transparent runtime verified")
}