/**
 * @id TYP_03_17_008_FAIL_LENGTH_MISMATCH
 * @expect compile-fail
 * @section 3.17
 * @design 验证元组长度不匹配
 * @note 反向用例：验证该场景应产生编译时错误
 */
let tuple: [number, string] = [1, "hello", true]
