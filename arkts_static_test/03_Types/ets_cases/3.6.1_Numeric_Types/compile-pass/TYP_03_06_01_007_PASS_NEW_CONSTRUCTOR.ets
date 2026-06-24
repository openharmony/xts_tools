/**
 * @id TYP_03_06_01_007_PASS_NEW_CONSTRUCTOR
 * @expect compile-pass
 * @section 3.6.1
 * @design new 构造数值类型实例（spec §3.6.1 原例）
 * @note 正向用例：new number / new byte / new int
 */
function testNewConstructor(): void {
  let a_number = new number()
  let a_byte = new byte()
  let an_integer = new int()
  let a_short = new short()
  let a_long = new long()
  let a_float = new float()
  let a_double = new double()
}