/**
 * @id TYP_03_20_015_FAIL_COALESCE_MIX_OR
 * @expect compile-fail
 * @section 3.20
 * @design ?? 与 || 不加括号混用应编译失败
 * @note 反向用例：spec §Nullish-Coalescing Expression 规定不能混用
 */
function testCoalesceMixOrFail(n: boolean | undefined, a: boolean, b: boolean): void {
  let r: boolean = n ?? a || b
}