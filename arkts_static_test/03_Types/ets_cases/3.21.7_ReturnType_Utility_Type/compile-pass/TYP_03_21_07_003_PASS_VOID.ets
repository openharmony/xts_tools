/**
 * @id TYP_03_21_07_003_PASS_VOID
 * @expect compile-pass
 * @section 3.21.7
 * @design ReturnType<() => void> → void
 * @note 正向用例
 */
type VoidRet = ReturnType<() => void>