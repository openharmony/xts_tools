/**
 * @id TYP_03_08_005_PASS_ANY_AS_PARAM_RETURN
 * @expect compile-pass
 * @section 3.8
 * @design Any 作函数参数和返回类型
 * @note 正向用例：Any 在函数签名
 */
function acceptAny5(p: Any): void {}
function returnAny5(): Any { return null }

function testAnyParamReturn(): void {
  acceptAny5(1)
  acceptAny5("x")
  acceptAny5(null)
  let r: Any = returnAny5()
}