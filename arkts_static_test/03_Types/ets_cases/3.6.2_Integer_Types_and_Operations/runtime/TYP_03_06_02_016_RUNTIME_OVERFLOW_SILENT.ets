/**
 * @id TYP_03_06_02_016_RUNTIME_OVERFLOW_SILENT
 * @expect runtime
 * @section 3.6.2
 * @design 整数溢出/下溢静默回绕（不报错）
 * @note 运行时用例：spec §3.6.2 "operators cannot indicate an overflow or an underflow"
 */
function main(): void {
  // int max + 1 = int min
  let max: int = 2147483647
  let overflow: int = max + 1
  if (overflow != -2147483648) {
    throw new Error("int max+1 should wrap to min: " + overflow)
  }

  // int min - 1 = int max
  let min: int = -2147483648
  let underflow: int = min - 1
  if (underflow != 2147483647) {
    throw new Error("int min-1 should wrap to max: " + underflow)
  }

  // long max + 1 = long min
  let lMax: long = 9223372036854775807
  let lOverflow: long = lMax + 1
  if (lOverflow != -9223372036854775808) {
    throw new Error("long max+1 should wrap")
  }

  console.log("Silent overflow verified")
}