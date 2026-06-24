/**
 * @id TYP_03_11_008_PASS_VOID_FUNCTION_TYPE_ARG
 * @expect compile-pass
 * @section 3.11
 * @design void 可用于函数类型别名的类型参数
 * @note 正向用例：spec §3.11 F1<void>
 */
type F1<T> = () => T

function testVoidFunctionTypeArg(): void {
  const f1: F1<void> = (): void => {}
  const f2: F1<void> = () => {}
  const f3: F1<void> = (): undefined => { return undefined }

  f1()
  f2()
  f3()
}