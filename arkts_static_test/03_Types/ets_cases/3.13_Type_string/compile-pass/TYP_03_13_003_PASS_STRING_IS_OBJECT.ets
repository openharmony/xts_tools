/**
 * @id TYP_03_13_003_PASS_STRING_IS_OBJECT
 * @expect compile-pass
 * @section 3.13
 * @design 验证 string 是 Object 子类型
 * @note 正向用例：string 可以赋值给 Object 变量
 */
let s: string = "hello"
let o: Object = s

function main(): void {
  if (!(s instanceof Object)) throw new Error("string not instanceof Object")
  console.log("verified")
}