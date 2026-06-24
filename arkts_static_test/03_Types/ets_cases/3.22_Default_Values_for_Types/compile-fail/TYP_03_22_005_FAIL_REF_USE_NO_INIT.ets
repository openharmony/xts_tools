/**
 * @id TYP_03_22_005_FAIL_REF_USE_NO_INIT
 * @expect compile-fail
 * @section 3.22
 * @design 引用类型无默认值，使用未初始化变量应编译错误
 * @note 反向用例
 */
class C5 {}

function testRefUseNoInitFail(): void {
  let c: C5
  let v: string = c.toString()
}