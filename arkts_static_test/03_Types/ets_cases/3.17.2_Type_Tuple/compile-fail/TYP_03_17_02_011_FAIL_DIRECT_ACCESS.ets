/**
 * @id TYP_03_17_02_011_FAIL_DIRECT_ACCESS
 * @expect compile-fail
 * @section 3.17.2
 * @design 验证 Tuple 类型值不能直接通过索引访问元素（spec/types.md:1250）
 * @note 反向用例：Tuple 值的元素不能直接访问，必须用 unsafeGet
 */
let pair: [number, string] = [1, "abc"]
let t: Tuple = pair
let x = t[0]