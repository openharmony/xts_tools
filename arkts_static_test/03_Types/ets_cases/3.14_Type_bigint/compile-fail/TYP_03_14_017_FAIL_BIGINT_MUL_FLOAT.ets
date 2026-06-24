/**
 * @id TYP_03_14_017_FAIL_BIGINT_MUL_FLOAT
 * @expect compile-fail
 * @section 3.14
 * @design 验证 bigint * float 算术运算非法
 * @note 反向用例：验证该场景应产生编译时错误
 */
let b: bigint = 100n
let f: float = 3.14
let result = b * f
