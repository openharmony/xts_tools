/**
 * @id TYP_03_07_013_FAIL_INTERFACE_REF_TO_VALUE_TYPE
 * @expect compile-fail
 * @section 3.7
 * @design 接口引用类型不能赋值给值类型变量
 * @note 反向用例：interface reference 不可赋值给 boolean
 */
interface IRefFail { f(): void }
class IRefFailImpl implements IRefFail { f(): void {} }
function testInterfaceRefToValueTypeFail(): void {
  let v: boolean = new IRefFailImpl()
}
