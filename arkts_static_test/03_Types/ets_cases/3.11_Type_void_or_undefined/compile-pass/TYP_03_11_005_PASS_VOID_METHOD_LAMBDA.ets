/**
 * @id TYP_03_11_005_PASS_VOID_METHOD_LAMBDA
 * @expect compile-pass
 * @section 3.11
 * @design void 常用于函数/方法/lambda 返回类型
 * @note 正向用例：无 return 或 return 空语句
 */
function foo(): void {}

class C5 {
  bar(): void {
    return
  }
}

type FunctionWithNoParametersType = () => void

function testVoidMethodLambda(): void {
  foo()
  let c: C5 = new C5()
  c.bar()

  let funcTypeVariable: FunctionWithNoParametersType = (): void => {}
  funcTypeVariable()
}