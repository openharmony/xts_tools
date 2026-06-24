/**
 * @id TYP_03_14_011_FAIL_INT_TO_BIGINT
 * @expect compile-fail
 * @section 3.14
 * @design 验证 int 不能隐式转换为 bigint
 * @note 反向用例：验证该场景应产生编译时错误
 */
let b: bigint = 42
