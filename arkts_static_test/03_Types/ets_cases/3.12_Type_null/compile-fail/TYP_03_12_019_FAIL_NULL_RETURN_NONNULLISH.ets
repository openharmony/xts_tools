/**
 * @id TYP_03_12_019_FAIL_NULL_RETURN_NONNULLISH
 * @expect compile-fail
 * @section 3.12
 * @design 函数返回类型为非空类型但返回 null
 * @note 反向用例：验证返回非空类型时不能返回 null
 */
function returnString(): string {
  return null
}