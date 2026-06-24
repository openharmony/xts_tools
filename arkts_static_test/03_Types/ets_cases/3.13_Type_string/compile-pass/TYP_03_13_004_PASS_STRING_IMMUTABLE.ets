/**
 * @id TYP_03_13_004_PASS_STRING_IMMUTABLE
 * @expect compile-pass
 * @section 3.13
 * @design 验证 string 不可变性——重新赋值创建新对象
 * @note 正向用例：string 变量可重新赋值（创建新 string 对象）
 */
let s: string = "hello"
s = "world"

function main(): void {
  if (s !== "world") throw new Error("string reassign failed")
  console.log("verified")
}