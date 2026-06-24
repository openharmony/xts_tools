/**
 * @id TYP_03_19_01_006_PASS_UNION_READONLY_PRIORITY
 * @expect compile-pass
 * @section 3.19.1
 * @design readonly 版本优先：(number[]) | (readonly number[]) → readonly number[]
 * @note 正向用例：验证联合类型中 readonly 版本优先
 */
type Mixed = number[] | readonly number[]

function main(): void {
  let arr: number[] = [1, 2, 3]
  let m: Mixed = arr
  console.log("verified")
}