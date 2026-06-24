/**
 * @id TYP_03_08_002_PASS_ANY_REFERENCE
 * @expect compile-pass
 * @section 3.8
 * @design Any 接受所有引用类型
 * @note 正向用例：class/interface/array/tuple
 */
class C2 { v: int = 0 }
interface I2 { do2(): void }
class IImpl2 implements I2 { do2(): void {} }

function testAnyReference(): void {
  let a: Any = new C2()
  a = new IImpl2()
  a = [1, 2, 3]
  a = [1, "x"]   // tuple
  a = (x: int): int => { return x }   // function
}