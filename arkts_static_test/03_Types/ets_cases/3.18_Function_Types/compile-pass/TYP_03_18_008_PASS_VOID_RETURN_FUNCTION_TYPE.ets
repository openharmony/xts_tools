/**
 * @id TYP_03_18_008_PASS_VOID_RETURN_FUNCTION_TYPE
 * @expect compile-pass
 * @section 3.18
 * @design void 返回类型的函数类型声明与赋值
 * @note 正向用例：验证 () => void 函数类型
 */
type Callback = () => void
type ActionWithParam = (x: int) => void

function testVoidReturnFunctionType(): void {
  let cb: Callback = (): void => {}
  let cb2: Callback = (): void => { console.log("hello") }
  let action: ActionWithParam = (x: int): void => { console.log("" + x) }

  cb()
  cb2()
  action(42)
}