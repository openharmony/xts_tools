/**
 * @id TYP_03_13_013_PASS_STRING_NULLISH_UNION
 * @expect compile-pass
 * @section 3.13
 * @design 验证 string | null、string | undefined、string | null | undefined 联合类型
 * @note 正向用例：nullish 联合类型声明与赋值
 */
let a: string | null = null
let b: string | undefined = undefined
let c: string | null | undefined = null

function main(): void {
  a = "hello"
  b = "world"
  c = "test"
  if (a !== "hello") throw new Error("nullish assign failed")
  if (b !== "world") throw new Error("nullish assign2 failed")
  console.log("verified")
}