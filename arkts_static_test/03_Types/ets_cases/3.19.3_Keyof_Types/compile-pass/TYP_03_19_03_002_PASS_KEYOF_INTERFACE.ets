/**
 * @id TYP_03_19_03_002_PASS_KEYOF_INTERFACE
 * @expect compile-pass
 * @section 3.19.3
 * @design keyof 可用于接口类型，结果为接口可访问成员名 union
 * @note 正向用例：interface 的方法和属性名
 */
interface I2 {
  name: string
  run(): void
}
type KeysOfI2 = keyof I2

function testKeyofInterface(): void {
  let k: KeysOfI2 = "name"
  k = "run"
}