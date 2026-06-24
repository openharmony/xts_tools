/**
 * @id TYP_03_13_023_FAIL_STRING_PROPERTY_MUTATION
 * @expect compile-fail
 * @section 3.13
 * @design 验证 string 不可变——不能修改 string 的属性
 * @note 反向用例：string 是 immutable，修改属性应产生编译时错误
 */
let s: string = "hello"
s.length = 10