/**
 * @id TYP_03_14_018_FAIL_BIGINT_DIV_BYTE
 * @expect compile-fail
 * @section 3.14
 * @design 验证 bigint / byte 算术运算非法
 * @note 反向用例：验证该场景应产生编译时错误
 */
let b: bigint = 100n
let by: byte = 2
let result = b / by
