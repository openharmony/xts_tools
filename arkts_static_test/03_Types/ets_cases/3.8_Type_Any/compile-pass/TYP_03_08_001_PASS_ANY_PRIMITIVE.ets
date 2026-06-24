/**
 * @id TYP_03_08_001_PASS_ANY_PRIMITIVE
 * @expect compile-pass
 * @section 3.8
 * @design Any 接受所有原始类型
 * @note 正向用例：Any 是顶类型
 */
function testAnyPrimitive(): void {
  let a: Any = 1
  a = 100000000000
  a = 3.14f
  a = 3.14
  a = true
  a = "hello"
  a = 100n
}