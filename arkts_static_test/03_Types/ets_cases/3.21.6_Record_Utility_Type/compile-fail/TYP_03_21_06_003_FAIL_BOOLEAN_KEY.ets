/**
 * @id TYP_03_21_06_003_FAIL_BOOLEAN_KEY
 * @expect compile-fail
 * @section 3.21.6
 * @design boolean 作 key 应编译错误
 * @note 反向用例：spec R2
 */
type R2 = Record<boolean, Object>