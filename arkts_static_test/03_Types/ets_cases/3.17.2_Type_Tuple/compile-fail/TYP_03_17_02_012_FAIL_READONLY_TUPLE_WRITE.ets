/**
 * @id TYP_03_17_02_012_FAIL_READONLY_TUPLE_WRITE
 * @expect compile-fail
 * @section 3.17.2
 * @design 验证 readonly tuple 元素不可直接修改（spec/types.md:1212-1223）
 * @note 反向用例：readonly tuple 本身是 readonly 的，修改元素编译错误
 */
let x: readonly [number, string] = [1, "abc"]
x[0] = 42