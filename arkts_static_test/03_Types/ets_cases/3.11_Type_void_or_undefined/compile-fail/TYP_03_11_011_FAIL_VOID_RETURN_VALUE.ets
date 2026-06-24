/**
 * @id TYP_03_11_011_FAIL_VOID_RETURN_VALUE
 * @expect compile-fail
 * @section 3.11
 * @design void 函数不能返回非 undefined 值
 * @note 反向用例：return 42 不允许
 */
function badVoid(): void {
  return 42
}