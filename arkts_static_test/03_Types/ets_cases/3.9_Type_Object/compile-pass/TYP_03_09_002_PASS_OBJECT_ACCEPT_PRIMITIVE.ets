/**
 * @id TYP_03_09_002_PASS_OBJECT_ACCEPT_PRIMITIVE
 * @expect compile-pass
 * @section 3.9
 * @design Object 接受数值/布尔/字符串等（装箱）
 * @note 正向用例
 */
function testObjectAcceptPrimitive(): void {
  let o: Object = 1
  o = 1.5
  o = true
  o = "hello"
  o = 100n
}