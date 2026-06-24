/**
 * @id TYP_03_09_004_PASS_OBJECT_TOSTRING
 * @expect compile-pass
 * @section 3.9
 * @design 所有 Object 子类继承 toString() 方法
 * @note 正向用例：Object.toString
 */
class HasToString4 {
  toString(): string { return "custom" }
}

function testObjectToString(): void {
  let o1: Object = "hello"
  let s1: string = o1.toString()

  let o2: Object = 42
  let s2: string = o2.toString()

  let o3: Object = new HasToString4()
  let s3: string = o3.toString()
}