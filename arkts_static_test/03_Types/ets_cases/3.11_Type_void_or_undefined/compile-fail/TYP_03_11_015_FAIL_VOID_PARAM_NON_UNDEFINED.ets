/**
 * @id TYP_03_11_015_FAIL_VOID_PARAM_NON_UNDEFINED
 * @expect compile-fail
 * @section 3.11
 * @design void 参数只能传 undefined
 * @note 反向用例：void 参数传非 undefined 值
 */
function acceptVoid(p: void): void {}
function acceptUndefined(p: undefined): void {}

function testVoidParamNonUndefinedFail(): void {
  acceptVoid(1)
  acceptVoid("x")
  acceptUndefined(true)
}