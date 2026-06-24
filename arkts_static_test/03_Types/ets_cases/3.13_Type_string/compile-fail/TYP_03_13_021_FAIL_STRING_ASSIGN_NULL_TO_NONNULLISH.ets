/**
 * @id TYP_03_13_021_FAIL_STRING_ASSIGN_NULL_TO_NONNULLISH
 * @expect compile-fail
 * @section 3.13
 * @design 验证 null 不能赋值给 string 类型（非 nullish）
 * @note 反向用例：验证该场景应产生编译时错误
 */
let s: string = null