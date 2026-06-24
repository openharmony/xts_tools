/**
 * @id TYP_03_06_02_006_PASS_SHIFT_OPS
 * @expect compile-pass
 * @section 3.6.2
 * @design 移位运算 << >> >>>
 * @note 正向用例：有符号左移、有符号右移、无符号右移
 */
function testShiftOps(): void {
  let a: int = 16

  let l1: int = a << 2     // 64
  let r1: int = a >> 2     // 4
  let r2: int = a >>> 2    // 4

  // 负数右移区别
  let neg: int = -16
  let arith: int = neg >> 2   // 算术右移：保留符号位
  let logic: int = neg >>> 2  // 逻辑右移：高位补 0

  let lo: long = 100
  let lShift: long = lo << 4
  let lRsh: long = lo >> 1
}