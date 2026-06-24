/**
 * @id TYP_03_13_020_FAIL_STRING_ASSIGN_NULLISH_TO_OBJECT
 * @expect compile-fail
 * @section 3.13
 * @design 验证 string | null 不能赋值给 Object（nullish 不兼容 Object）
 * @note 反向用例：验证该场景应产生编译时错误
 */
let s: string | null = null
let o: Object = s