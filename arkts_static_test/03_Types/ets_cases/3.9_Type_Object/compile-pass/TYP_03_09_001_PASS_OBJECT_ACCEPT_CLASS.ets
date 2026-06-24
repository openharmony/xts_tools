/**
 * @id TYP_03_09_001_PASS_OBJECT_ACCEPT_CLASS
 * @expect compile-pass
 * @section 3.9
 * @design Object 接受类实例
 * @note 正向用例
 */
class C9_1 { v: int = 0 }

function testObjectAcceptClass(): void {
  let o: Object = new C9_1()
  o = new Object()
}