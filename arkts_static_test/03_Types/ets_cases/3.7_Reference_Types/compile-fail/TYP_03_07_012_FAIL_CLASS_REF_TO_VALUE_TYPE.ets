/**
 * @id TYP_03_07_012_FAIL_CLASS_REF_TO_VALUE_TYPE
 * @expect compile-fail
 * @section 3.7
 * @design 引用类型不能赋值给值类型变量
 * @note 反向用例：class reference 不可赋值给 int
 */
class CRefFail {}
function testClassRefToValueTypeFail(): void {
  let v: int = new CRefFail()
}
