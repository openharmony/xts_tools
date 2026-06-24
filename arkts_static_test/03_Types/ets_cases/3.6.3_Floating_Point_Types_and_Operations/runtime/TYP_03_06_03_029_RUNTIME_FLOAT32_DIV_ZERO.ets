/**
 * @id TYP_03_06_03_029_RUNTIME_FLOAT32_DIV_ZERO
 * @expect runtime
 * @section 3.6.3
 * @design float (32 位) 除零 → +Infinity（与 double 行为一致）
 * @note 运行时用例：float 类型也遵循 IEEE 754
 */
function main(): void {
  let c: float = 5.0f / 0.0f
  let posInfF: float = 1.0f / 0.0f
  if (c != posInfF) {
    throw new Error("float 5.0f/0.0f should be +Infinity")
  }
  console.log("float 5.0f/0.0f = Infinity verified")
}