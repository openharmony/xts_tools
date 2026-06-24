/**
 * @id TYP_03_13_042_FAIL_STRING_ASSIGN_TO_NUMBER
 * @expect compile-fail
 * @section 3.13
 * @design 验证 string 不能直接赋值给 number 类型
 * @note 反向用例：验证该场景应产生编译时错误
 */
let s: string = "123"
let n: number = s
