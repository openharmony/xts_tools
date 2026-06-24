/**
 * @id TYP_03_12_015_FAIL_NULL_TO_NONNULLISH_PARAM
 * @expect compile-fail
 * @section 3.12
 * @design 函数参数为非空类型时传入 null
 * @note 反向用例：验证 null 不能传给非空参数
 */
function requireString(p: string): void {}
function testNullParamFail(): void {
  requireString(null)
}