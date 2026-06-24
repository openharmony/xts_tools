/**
 * @id TYP_03_12_027_RUNTIME_NULL_ANY_COMPATIBILITY
 * @expect runtime
 * @section 3.12
 * @design 运行时验证 null 可以赋给 Any 类型变量
 * @note 运行时用例：验证 Any 可持有 null
 */
function main(): void {
  let a: Any = null
  if (a != null) {
    throw new Error("Any variable assigned null should be null")
  }

  a = "hello"
  if (a == null) {
    throw new Error("Any variable assigned 'hello' should not be null")
  }
  console.log("TYP_03_12_027 verified")
}