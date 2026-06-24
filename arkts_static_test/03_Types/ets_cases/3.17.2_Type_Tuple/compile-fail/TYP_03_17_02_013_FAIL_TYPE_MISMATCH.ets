/**
 * @id TYP_03_17_02_013_FAIL_TYPE_MISMATCH
 * @expect compile-fail
 * @section 3.17.2
 * @design 验证元组初始化元素类型不匹配（spec/types.md:1174）
 * @note 反向用例：[int, string] 初始化为 [1, 2] 类型不匹配
 */
let t: [int, string] = [1, 2]