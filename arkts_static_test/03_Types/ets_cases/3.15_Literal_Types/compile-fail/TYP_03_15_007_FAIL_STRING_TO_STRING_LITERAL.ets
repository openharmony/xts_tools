/**
 * @id TYP_03_15_007_FAIL_STRING_TO_STRING_LITERAL
 * @expect compile-fail
 * @section 3.15
 * @design 验证 string 不能赋值给 string literal 类型
 * @note 反向用例：验证该场景应产生编译时错误
 */
let s: string = "string literal"
let sl: "string literal" = s
