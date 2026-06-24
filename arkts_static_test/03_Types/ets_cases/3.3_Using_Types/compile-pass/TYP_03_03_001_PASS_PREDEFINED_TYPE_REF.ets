/**
 * @id TYP_03_03_001_PASS_PREDEFINED_TYPE_REF
 * @expect compile-pass
 * @section 3.3
 * @design 通过类型名引用预定义类型: int/number/string/boolean/Object
 * @note 正向用例：验证使用预定义类型名做类型引用
 */
function testPredefinedTypeRef(): void {
  let n: number = 3.14
  let i: int = 42
  let s: string = "hello"
  let b: boolean = true
  let o: Object = new Object()
  let big: bigint = 100n
}