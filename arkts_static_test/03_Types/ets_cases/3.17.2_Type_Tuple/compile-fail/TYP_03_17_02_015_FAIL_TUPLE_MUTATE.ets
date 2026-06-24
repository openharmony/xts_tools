/**
 * @id TYP_03_17_02_015_FAIL_TUPLE_MUTATE
 * @expect compile-fail
 * @section 3.17.2
 * @design 验证 Tuple 值的元素不可通过索引修改（spec/types.md:1281-1283）
 * @note 反向用例：Tuple 类型的值不支持元素修改
 */
let pair: [number, string] = [1, "abc"]
let t: Tuple = pair
t[0] = 42