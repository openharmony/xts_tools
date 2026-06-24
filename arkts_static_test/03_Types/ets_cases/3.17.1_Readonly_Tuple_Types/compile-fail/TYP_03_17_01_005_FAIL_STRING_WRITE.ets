/**
 * @id TYP_03_17_01_005_FAIL_STRING_WRITE
 * @expect compile-fail
 * @section 3.17.1
 * @design 验证只读元组不能修改字符串元素
 * @note 反向用例：验证该场景应产生编译时错误
 */
let tuple: readonly [number, string] = [1, "abc"]
tuple[1] = "xyz"
