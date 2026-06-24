/**
 * @id TYP_03_10_006_FAIL_NEVER_NORMAL_RETURN
 * @expect compile-fail
 * @section 3.10
 * @design never 函数有正常返回路径应失败
 * @note 反向用例
 */
function badNever(): never {
  return 42
}