/**
 * @id TYP_03_19_005_PASS_UNION_PREDEFINED
 * @expect compile-pass
 * @section 3.19
 * @design 预定义类型的联合类型
 * @note 正向用例：验证 number | boolean 联合类型和 instanceof 收窄
 */
type Predefined = number | boolean

function main(): void {
  let p: Predefined = 7
  if (p instanceof number) {
    let n: number = p as number
    console.log(n)
  }
  p = true
  console.log("verified")
}