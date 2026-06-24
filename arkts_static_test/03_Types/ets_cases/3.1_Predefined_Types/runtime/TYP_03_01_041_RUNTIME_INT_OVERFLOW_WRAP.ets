/**
 * @id TYP_03_01_041_RUNTIME_INT_OVERFLOW_WRAP
 * @expect runtime
 * @section 3.1
 * @design 整数溢出静默回绕（与 Java 一致，与 Swift 不同）
 * @note 运行时用例：验证 int max+1 静默回绕为 int min（设计问题：无溢出检查）
 */
function main(): void {
  let max: int = 2147483647
  let overflow: int = max + 1

  // ArkTS/Java 静默回绕到 -2147483648
  // 这是潜在的设计安全问题
  if (overflow != -2147483648) {
    throw new Error("int overflow wrap mismatch: " + overflow)
  }

  let min: int = -2147483648
  let underflow: int = min - 1
  if (underflow != 2147483647) {
    throw new Error("int underflow wrap mismatch: " + underflow)
  }

  console.log("Int overflow silently wraps (no protection)")
}