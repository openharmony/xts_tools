/**
 * @id TYP_03_18_028_RUNTIME_FUNCTION_TYPE_VOID_RETURN
 * @expect runtime
 * @section 3.18
 * @design void 返回函数类型的运行时行为验证
 * @note 运行时用例：验证 () => void 函数类型调用
 */
type Callback = () => void

function main(): void {
  let count: int = 0
  let cb: Callback = (): void => { count = count + 1 }

  cb()
  if (count != 1) {
    throw new Error("After 1st cb(), count should be 1")
  }

  cb()
  if (count != 2) {
    throw new Error("After 2nd cb(), count should be 2")
  }

  let actions: Callback[] = [(): void => { count = count + 10 }, (): void => { count = count * 2 }]
  for (let action of actions) {
    action()
  }
  if (count != 24) {
    throw new Error("After all actions, count should be 24, got: " + count)
  }

  console.log("Void return function type verified")
}