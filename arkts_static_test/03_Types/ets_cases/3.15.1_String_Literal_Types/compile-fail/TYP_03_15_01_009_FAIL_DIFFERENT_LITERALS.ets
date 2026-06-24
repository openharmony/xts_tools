/**
 * @id TYP_03_15_01_009_FAIL_DIFFERENT_LITERALS
 * @expect compile-fail
 * @section 3.15.1
 * @design 验证不同的 string literal type 不能互赋
 * @note 反向用例：验证该场景应产生编译时错误
 */
let s0: "hello" = "hello"
let s1: "world" = s0
