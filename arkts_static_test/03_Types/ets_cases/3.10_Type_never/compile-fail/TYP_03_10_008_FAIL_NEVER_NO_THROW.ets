/**
 * @id TYP_03_10_008_FAIL_NEVER_NO_THROW
 * @expect compile-fail
 * @section 3.10
 * @design never 函数空体（无 throw/无限循环）应失败
 * @note 反向用例
 */
function emptyNever(): never {
}