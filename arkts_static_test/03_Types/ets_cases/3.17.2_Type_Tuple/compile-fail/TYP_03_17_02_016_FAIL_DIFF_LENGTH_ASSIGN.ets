/**
 * @id TYP_03_17_02_016_FAIL_DIFF_LENGTH_ASSIGN
 * @expect compile-fail
 * @section 3.17.2
 * @design 验证不同长度的 tuple 不能互赋（spec/semantics.md:229-230）
 * @note 反向用例：[int, string] 不能赋值给 [int, string, boolean]
 */
let t: [int, string, boolean] = [1, "a", true]
let s: [int, string] = [1, "a"]
t = s