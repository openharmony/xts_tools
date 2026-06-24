/**
 * @id TYP_03_15_01_008_FAIL_STRING_TO_LITERAL
 * @expect compile-fail
 * @section 3.15.1
 * @design 验证 string 不能赋值给 string literal type
 * @note 反向用例：验证该场景应产生编译时错误
 */
let s: string = "hello"
let sl: "hello" = s
