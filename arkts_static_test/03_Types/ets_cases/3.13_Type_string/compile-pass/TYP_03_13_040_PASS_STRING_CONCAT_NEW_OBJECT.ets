/**
 * @id TYP_03_13_040_PASS_STRING_CONCAT_NEW_OBJECT
 * @expect compile-pass
 * @section 3.13
 * @design 验证 string 连接运算符 + 产生 string 类型值，非常量表达式可隐式创建新 string 对象
 * @note 正向用例：字符串拼接结果为 string 类型
 */
function main(): void {
  let s1: string = "hello"
  let s2: string = " "
  let s3: string = "world"
  let result: string = s1 + s2 + s3
  if (result !== "hello world") throw new Error("concat new object failed")
  console.log("verified")
}