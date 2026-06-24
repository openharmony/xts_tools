/**
 * @id TYP_03_02_013_FAIL_CLASS_ABSTRACT_INSTANTIATE
 * @expect compile-fail
 * @section 3.2
 * @design 抽象类不能实例化: new abstract class 应编译失败
 * @note 反向用例：验证该场景应产生编译时错误
 */
abstract class AbstractBase {
  abstract method(): void
}

function testAbstractInstantiateFail(): void {
  let a: AbstractBase = new AbstractBase()
}