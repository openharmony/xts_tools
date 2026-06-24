/**
 * @id TYP_03_17_01_004_FAIL_INDEX_WRITE
 * @expect compile-fail
 * @section 3.17.1
 * @design 验证只读元组不能通过索引修改元素
 * @note 反向用例：验证该场景应产生编译时错误
 */
let tuple: readonly [number, string] = [1, "abc"]
tuple[0] = 42
