/**
 * @id TYP_03_06_03_027_RUNTIME_FLOAT_DIV_CONSTANT_EXPRESSION
 * @expect runtime
 * @section 3.6.3
 * @design 浮点常量表达式 (1.0 - 1.0) 作除数 → +Infinity
 * @note 运行时用例：浮点常量折叠不报错
 *       对比：整数 10/(1-1) 会编译错误，浮点不会
 */
function main(): void {
  let c: double = 5.0 / (1.0 - 1.0)
  let posInf: double = 1.0 / 0.0
  if (c != posInf) {
    throw new Error("5.0/(1.0-1.0) should be +Infinity")
  }
  console.log("5.0/(1.0-1.0) = Infinity verified")
}