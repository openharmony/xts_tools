/**
 * @id TYP_03_15_01_005_PASS_AS_PARAM
 * @expect compile-pass
 * @section 3.15.1
 * @design 验证 string literal type 作为函数参数
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function greet(name: "World"): string {
  return "Hello, " + name
}

function main(): void {
  let result: string = greet("World")
  if (result !== "Hello, World") throw new Error("result assert failed")
  console.log("verified")
}
