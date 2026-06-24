/**
 * @id TYP_03_21_07_008_RUNTIME_MAIN
 * @expect runtime
 * @section 3.21.7
 * @design ReturnType 提取类型后可用
 * @note 运行时用例
 */
type R8 = ReturnType<() => string>

function main(): void {
  let s: R8 = "hello"
  if (s.length != 5) throw new Error("ReturnType string failed")
  console.log("ReturnType runtime verified")
}