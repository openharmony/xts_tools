/**
 * @id TYP_03_21_06_008_FAIL_KEY_BOOL_UNION
 * @expect compile-fail
 * @section 3.21.6
 * @design string literal | boolean 作 key 应编译错误
 * @note 反向用例：spec R4
 */
type R4_2 = Record<"salary" | boolean, Object>