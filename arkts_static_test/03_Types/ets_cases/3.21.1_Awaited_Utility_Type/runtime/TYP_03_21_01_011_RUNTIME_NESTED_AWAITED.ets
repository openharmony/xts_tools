/**
 * @id TYP_03_21_01_011_RUNTIME_NESTED_AWAITED
 * @expect runtime
 * @section 3.21.1
 * @design 嵌套 Awaited 编译通过，运行时值正确
 * @note 运行时用例：嵌套 Promise 类型展开
 */
type R11 = Awaited<Promise<Promise<string>>>

function main(): void {
  let v: R11 = "hello"
  if (v != "hello") {
    throw new Error("nested Awaited failed")
  }
  console.log("Nested Awaited runtime verified")
}