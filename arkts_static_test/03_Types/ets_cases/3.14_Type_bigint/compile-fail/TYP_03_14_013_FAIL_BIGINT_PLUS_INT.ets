/**
 * @id TYP_03_14_013_FAIL_BIGINT_PLUS_INT
 * @expect compile-fail
 * @section 3.14
 * @design 验证 bigint + int 算术运算非法
 * @note 反向用例：验证该场景应产生编译时错误
 */
let b: bigint = 100n
let n: int = 42
let result = b + n
