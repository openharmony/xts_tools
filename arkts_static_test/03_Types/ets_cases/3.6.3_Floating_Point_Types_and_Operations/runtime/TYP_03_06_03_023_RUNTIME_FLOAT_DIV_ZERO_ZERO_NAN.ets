/**
 * @id TYP_03_06_03_023_RUNTIME_FLOAT_DIV_ZERO_ZERO_NAN
 * @expect runtime
 * @section 3.6.3
 * @design 0.0/0.0 → NaN（IEEE 754 标准）
 * @note 运行时用例：0/0 数学未定义
 */
function main(): void {
  let c: double = 0.0 / 0.0
  // NaN 不等于自身
  if (c == c) {
    throw new Error("0.0/0.0 should be NaN")
  }
  console.log("0.0/0.0 = NaN verified")
}