/**
 * @id TYP_03_13_029_RUNTIME_STRING_IMMUTABILITY
 * @expect runtime
 * @section 3.13
 * @design 验证 string 不可变性——赋值后不影响原引用
 * @note 运行时用例：验证 string 赋值是创建新对象而非修改原对象
 */
function main(): void {
  let s1: string = "hello"
  let s2: string = s1
  s1 = "world"
  if (s2 !== "hello") throw new Error("immutability assert failed")
  console.log("verified")
}