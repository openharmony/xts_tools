/**
 * @id TYP_03_17_02_017_FAIL_READONLY_VIA_FUNCTION
 * @expect compile-fail
 * @section 3.17.2
 * @design 验证 readonly tuple 通过函数/方法修改元素编译错误（spec/types.md:1212-1214）
 * @note 反向用例：readonly tuple 元素不可通过函数或方法修改
 */
function modify(x: readonly [number, string]): void {
  x[0] = 42
}