/**
 * @id TYP_03_16_011_FAIL_STRING_ARRAY_TO_NUMBER
 * @expect compile-fail
 * @section 3.16
 * @design 验证 string[] 不能赋值给 number[]
 * @note 反向用例：验证该场景应产生编译时错误
 */
let strArr: string[] = ["a", "b", "c"]
let numArr: number[] = strArr
