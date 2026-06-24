/**
 * @id TYP_03_06_01_017_RUNTIME_WIDENING_VALUE_PRESERVED
 * @expect runtime
 * @section 3.6.1
 * @design widening 转换值正确保留
 * @note 运行时用例：byte→long、int→double 后值保持
 */
function main(): void {
  let b: byte = 100
  let l: long = b
  if (l != 100) {
    throw new Error("byte to long widening lost value")
  }

  let i: int = 1234567
  let d: double = i
  if (d != 1234567.0) {
    throw new Error("int to double widening lost value")
  }

  let s: short = 30000
  let f: float = s
  if (f != 30000.0f) {
    throw new Error("short to float widening lost value")
  }

  // 大数值 long→double 可能精度损失，但应在合理范围
  let bigL: long = 9007199254740993  // 2^53 + 1
  let asD: double = bigL
  // 由于 double 仅 53 位精度，超过 2^53 的奇数会被舍入
  // 这里只验证 widening 编译通过和近似正确
  if (asD < 9007199254740990.0 || asD > 9007199254740994.0) {
    throw new Error("long to double range error")
  }

  console.log("Widening preserve verified")
}