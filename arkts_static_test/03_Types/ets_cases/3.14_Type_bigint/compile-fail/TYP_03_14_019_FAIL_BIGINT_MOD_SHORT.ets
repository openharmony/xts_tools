/**
 * @id TYP_03_14_019_FAIL_BIGINT_MOD_SHORT
 * @expect compile-fail
 * @section 3.14
 * @design 验证 bigint % short 算术运算非法
 * @note 反向用例：验证该场景应产生编译时错误
 */
let b: bigint = 100n
let s: short = 3
let result = b % s
