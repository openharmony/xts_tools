/**
 * @id TYP_03_17_02_014_FAIL_LENGTH_MISMATCH
 * @expect compile-fail
 * @section 3.17.2
 * @design 验证元组初始化元素数量不匹配（spec/types.md:1172）
 * @note 反向用例：[int, string] 初始化为 [1, "a", true] 元素数量超出
 */
let t: [int, string] = [1, "a", true]