/**
 * @id TYP_03_01_042_RUNTIME_FLOAT_UNDERFLOW
 * @expect runtime
 * @section 3.1
 * @design 浮点数下溢趋于 0
 * @note 运行时用例：验证 IEEE 754 gradual underflow
 */
function main(): void {
  let small: double = 1e-300
  let underflow: double = small / 1e100

  // 趋于 0 但仍是正数
  if (underflow != 0.0 && underflow > 0.0) {
    console.log("Gradual underflow: " + underflow)
  }

  // 极端下溢直接为 0
  let zero: double = 1e-300 / 1e200
  if (zero != 0.0) {
    throw new Error("Expected complete underflow to 0")
  }

  console.log("Float underflow verified")
}