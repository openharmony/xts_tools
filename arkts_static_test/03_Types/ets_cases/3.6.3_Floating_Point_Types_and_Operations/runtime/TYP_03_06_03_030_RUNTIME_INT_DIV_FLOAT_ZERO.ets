/**
 * @id TYP_03_06_03_030_RUNTIME_INT_DIV_FLOAT_ZERO
 * @expect runtime
 * @section 3.6.3
 * @design 整数 / 浮点 0.0 → +Infinity（混合类型推升为浮点除法）
 * @note 运行时用例：混合类型 int/double 0.0 按浮点规则处理
 *       关键：编译通过！只要除数是浮点类型字面量，即使整数被除数也按 IEEE 754
 */
function main(): void {
  let c: double = 10 / 0.0
  let posInf: double = 1.0 / 0.0
  if (c != posInf) {
    throw new Error("10/0.0 should be +Infinity")
  }
  console.log("10/0.0 = Infinity verified")
}