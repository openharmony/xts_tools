/**
 * @id TYP_03_16_01_011_FAIL_TYPE_MISMATCH
 * @expect compile-fail
 * @section 3.16.1
 * @design 验证数组元素类型不匹配
 * @note 反向用例：验证该场景应产生编译时错误
 */
let arr: number[] = [1, "two", 3]
