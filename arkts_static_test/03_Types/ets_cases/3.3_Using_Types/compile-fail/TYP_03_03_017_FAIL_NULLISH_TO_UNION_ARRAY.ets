/**
 * @id TYP_03_03_017_FAIL_NULLISH_TO_UNION_ARRAY
 * @expect compile-fail
 * @section 3.3
 * @design string | undefined[] 表示 string 或 undefined 数组（不是整体 nullish）
 *   因此整体不能赋 undefined
 * @note 反向用例：spec §3.3 中 b2 = undefined 应失败
 */
function testNullishToUnionArrayFail(): void {
  let b2: string | undefined[]
  b2 = undefined
}