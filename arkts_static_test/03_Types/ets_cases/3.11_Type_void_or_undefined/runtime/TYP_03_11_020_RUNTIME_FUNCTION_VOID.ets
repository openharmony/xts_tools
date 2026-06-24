/**
 * @id TYP_03_11_020_RUNTIME_FUNCTION_VOID
 * @expect runtime
 * @section 3.11
 * @design F1<void> 函数调用结果为 undefined
 * @note 运行时用例：函数类型返回 void
 */
type F20<T> = () => T

function main(): void {
  let f1: F20<void> = (): void => {}
  let r1: void = f1()
  if (r1 !== undefined) {
    throw new Error("F20<void> return should be undefined")
  }

  let f2: F20<undefined> = (): undefined => { return undefined }
  let r2: undefined = f2()
  if (r2 !== undefined) {
    throw new Error("F20<undefined> return should be undefined")
  }

  console.log("function void verified")
}