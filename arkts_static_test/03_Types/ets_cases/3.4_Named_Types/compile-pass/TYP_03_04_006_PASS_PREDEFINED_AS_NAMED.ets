/**
 * @id TYP_03_04_006_PASS_PREDEFINED_AS_NAMED
 * @expect compile-pass
 * @section 3.4
 * @design 预定义类型（除内置数组）是命名类型，可直接作类型注解
 * @note 正向用例：predefined types 直接使用作命名类型
 */
function testPredefinedNamed(): void {
  let i: int = 42
  let n: number = 3.14
  let s: string = "hello"
  let b: boolean = true
  let big: bigint = 100n
  let o: Object = new Object()
  let a: Any = null

  // 数值预定义都是命名类型
  let by: byte = 1
  let sh: short = 2
  let lo: long = 3
  let f: float = 1.0f
  let d: double = 2.0
}