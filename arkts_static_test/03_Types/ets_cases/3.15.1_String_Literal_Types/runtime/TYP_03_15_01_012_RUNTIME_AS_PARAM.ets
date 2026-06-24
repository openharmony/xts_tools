/**
 * @id TYP_03_15_01_012_RUNTIME_AS_PARAM
 * @expect runtime
 * @section 3.15.1
 * @design 验证 string literal type 作为函数参数运行时行为
 * @note 运行时用例：实际执行验证函数调用
 */
function greet(name: "World"): string {
  return "Hello, " + name
}

function main(): void {
  let result: string = greet("World")
  if (result !== "Hello, World") throw new Error("result assert failed")
  console.log("verified")
}
