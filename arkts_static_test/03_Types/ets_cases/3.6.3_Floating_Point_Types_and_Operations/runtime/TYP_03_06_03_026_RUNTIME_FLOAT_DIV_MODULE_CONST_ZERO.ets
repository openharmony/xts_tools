/**
 * @id TYP_03_06_03_026_RUNTIME_FLOAT_DIV_MODULE_CONST_ZERO
 * @expect runtime
 * @section 3.6.3
 * @design 模块级 const 0.0 作除数 → +Infinity（编译通过）
 * @note 运行时用例：浮点 const 不做编译期检测（与整数模块级 const 现状一致）
 */
const moduleZero: double = 0.0

function main(): void {
  let c: double = 5.0 / moduleZero
  let posInf: double = 1.0 / 0.0
  if (c != posInf) {
    throw new Error("5.0/module_const_zero should be +Infinity")
  }
  console.log("5.0/module_const = Infinity verified")
}