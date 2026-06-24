/**
 * @id TYP_03_06_03_025_RUNTIME_FLOAT_DIV_LOCAL_CONST_ZERO
 * @expect runtime
 * @section 3.6.3
 * @design 函数内 const 0.0 作除数 → +Infinity（编译通过）
 * @note 运行时用例：浮点 const 不参与编译期检测
 *       对比：整数 const 在函数内会编译错误（与浮点行为不一致）
 */
function main(): void {
  const a: double = 0.0
  let c: double = 5.0 / a
  let posInf: double = 1.0 / 0.0
  if (c != posInf) {
    throw new Error("5.0/local_const_zero should be +Infinity")
  }
  console.log("5.0/local_const = Infinity verified")
}