/**
 * @id TYP_03_16_02_006_FAIL_INDEX_WRITE
 * @expect compile-fail
 * @section 3.16.2
 * @design 验证只读数组不能通过索引修改元素
 * @note 反向用例：验证该场景应产生编译时错误
 */
let arr: readonly number[] = [1, 2, 3]
arr[0] = 42
