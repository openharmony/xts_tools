/**
 * @id TYP_03_15_010_FAIL_WRONG_STRING_LITERAL
 * @expect compile-fail
 * @section 3.15
 * @design 验证不同的字符串字面量类型不能互赋
 * @note 反向用例：验证该场景应产生编译时错误
 */
let a: "hello" = "hello"
let b: "world" = a
