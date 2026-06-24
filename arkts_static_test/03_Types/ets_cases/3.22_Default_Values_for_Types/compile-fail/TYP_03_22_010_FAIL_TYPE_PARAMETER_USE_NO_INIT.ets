/**
 * @id TYP_03_22_010_FAIL_TYPE_PARAMETER_USE_NO_INIT
 * @expect compile-fail
 * @section 3.22
 * @design type parameter 无默认值，未初始化使用应编译失败
 * @note 反向用例：spec 指出 type parameters have no default values
 */
function testTypeParameterUseNoInitFail<T>(): void {
  let t: T
  let a: Any = t
}
