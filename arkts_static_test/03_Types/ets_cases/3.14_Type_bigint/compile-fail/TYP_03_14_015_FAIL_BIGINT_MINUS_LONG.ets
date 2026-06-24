/**
 * @id TYP_03_14_015_FAIL_BIGINT_MINUS_LONG
 * @expect compile-fail
 * @section 3.14
 * @design 验证 bigint - long 算术运算非法
 * @note 反向用例：验证该场景应产生编译时错误
 */
let b: bigint = 100n
let l: long = 42
let result = b - l
