/**
 * @id TYP_03_21_07_005_PASS_NEVER
 * @expect compile-pass
 * @section 3.21.7
 * @design ReturnType<never> → never（never 是例外，允许）
 * @note 正向用例：spec 原例
 */
type aNever5 = ReturnType<never>