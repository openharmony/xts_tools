/**
 * @id TYP_03_06_03_024_RUNTIME_FLOAT_DIV_LET_VAR_ZERO
 * @expect runtime
 * @section 3.6.3
 * @design let 变量 0.0 作除数 → +Infinity（编译通过，无运行时错误）
 * @note 运行时用例：浮点除零完全 IEEE 754 兼容
 */
function main(): void {
  let a: double = 0.0
  let c: double = 5.0 / a
  let posInf: double = 1.0 / 0.0
  if (c != posInf) {
    throw new Error("5.0/let_zero should be +Infinity")
  }
  console.log("5.0/let_zero = Infinity verified")
}