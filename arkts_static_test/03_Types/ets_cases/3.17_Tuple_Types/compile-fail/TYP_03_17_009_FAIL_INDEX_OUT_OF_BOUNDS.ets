/**
 * @id TYP_03_17_009_FAIL_INDEX_OUT_OF_BOUNDS
 * @expect compile-fail
 * @section 3.17
 * @design 验证元组索引越界
 * @note 反向用例：验证该场景应产生编译时错误
 */
let tuple: [number, string] = [1, "hello"]
let x = tuple[2]
