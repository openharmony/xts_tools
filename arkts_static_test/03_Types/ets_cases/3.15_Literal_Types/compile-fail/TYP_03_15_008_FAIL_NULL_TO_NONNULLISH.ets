/**
 * @id TYP_03_15_008_FAIL_NULL_TO_NONNULLISH
 * @expect compile-fail
 * @section 3.15
 * @design 验证 null 字面量类型不能赋值给非空类型
 * @note 反向用例：验证该场景应产生编译时错误
 */
let n: null = null
let s: string = n
