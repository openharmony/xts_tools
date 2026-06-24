/**
 * @id TYP_03_17_01_006_FAIL_BOOLEAN_WRITE
 * @expect compile-fail
 * @section 3.17.1
 * @design 验证只读元组不能修改布尔元素
 * @note 反向用例：验证该场景应产生编译时错误
 */
let tuple: readonly [number, string, boolean] = [1, "hello", true]
tuple[2] = false
