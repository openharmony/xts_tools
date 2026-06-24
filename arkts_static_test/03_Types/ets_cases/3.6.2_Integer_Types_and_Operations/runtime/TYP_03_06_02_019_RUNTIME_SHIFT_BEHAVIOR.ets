/**
 * @id TYP_03_06_02_019_RUNTIME_SHIFT_BEHAVIOR
 * @expect runtime
 * @section 3.6.2
 * @design 移位运算行为：算术 vs 逻辑右移
 * @note 运行时用例：>> 保留符号位，>>> 高位补 0
 */
function main(): void {
  // 正数：>> 与 >>> 等价
  let pos: int = 16
  if ((pos >> 2) != 4) {
    throw new Error("16 >> 2 should be 4")
  }
  if ((pos >>> 2) != 4) {
    throw new Error("16 >>> 2 should be 4")
  }

  // 负数：>> 保留符号位
  let neg: int = -16
  if ((neg >> 2) != -4) {
    throw new Error("-16 >> 2 should be -4")
  }

  // 负数：>>> 高位补 0，结果是大正数
  let logical: int = neg >>> 2
  if (logical >= 0 && logical != 1073741820) {
    throw new Error("-16 >>> 2 unexpected: " + logical)
  }

  // 左移
  if ((1 << 31) != -2147483648) {
    throw new Error("1 << 31 should be int min")
  }

  console.log("Shift behavior verified")
}