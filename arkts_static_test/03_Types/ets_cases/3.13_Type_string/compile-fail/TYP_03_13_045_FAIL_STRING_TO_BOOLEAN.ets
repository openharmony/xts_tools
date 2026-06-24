/**
 * @id TYP_03_13_045_FAIL_STRING_TO_BOOLEAN
 * @expect compile-fail
 * @section 3.13
 * @design 验证 string 不能直接赋值给 boolean 类型
 * @note 反向用例：验证该场景应产生编译时错误
 */
let s: string = "true"
let b: boolean = s
