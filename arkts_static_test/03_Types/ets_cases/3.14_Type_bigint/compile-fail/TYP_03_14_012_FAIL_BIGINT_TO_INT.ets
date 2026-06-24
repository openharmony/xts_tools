/**
 * @id TYP_03_14_012_FAIL_BIGINT_TO_INT
 * @expect compile-fail
 * @section 3.14
 * @design 验证 bigint 不能隐式转换为 int
 * @note 反向用例：验证该场景应产生编译时错误
 */
let n: int = 123n
