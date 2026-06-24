/**
 * @id TYP_03_19_03_003_PASS_KEYOF_EMPTY_CLASS
 * @expect compile-pass
 * @section 3.19.3
 * @design keyof 空类等价 never，类型声明本身合法
 * @note 正向用例：仅声明不赋值
 */
class EmptyClass3 {}
type KeysOfEmpty3 = keyof EmptyClass3

function testKeyofEmptyClass(): void {
  // 不产生值，仅验证类型定义合法
}