/**
 * @id TYP_03_06_03_022_RUNTIME_FLOAT_DIV_LITERAL_NEG_INFINITY
 * @expect runtime
 * @section 3.6.3
 * @design -5.0/0.0 字面量 → -Infinity（IEEE 754 符号规则）
 * @note 运行时用例：负数除零结果是 -Infinity
 */
function main(): void {
  let c: double = -5.0 / 0.0
  let negInf: double = -1.0 / 0.0
  if (c != negInf) {
    throw new Error("-5.0/0.0 should be -Infinity, got " + c)
  }
  console.log("-5.0/0.0 = -Infinity verified")
}