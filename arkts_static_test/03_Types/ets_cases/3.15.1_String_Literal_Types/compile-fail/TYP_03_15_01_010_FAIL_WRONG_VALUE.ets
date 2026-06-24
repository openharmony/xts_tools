/**
 * @id TYP_03_15_01_010_FAIL_WRONG_VALUE
 * @expect compile-fail
 * @section 3.15.1
 * @design 验证 string literal type 必须匹配字面量值
 * @note 反向用例：验证该场景应产生编译时错误
 */
let s: "hello" = "world"
