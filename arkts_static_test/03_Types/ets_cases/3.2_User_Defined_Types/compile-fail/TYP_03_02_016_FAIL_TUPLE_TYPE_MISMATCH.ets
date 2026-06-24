/**
 * @id TYP_03_02_016_FAIL_TUPLE_TYPE_MISMATCH
 * @expect compile-fail
 * @section 3.2
 * @design 元组元素类型不匹配应编译失败: 声明的元素类型与实际值类型不一致
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testTupleTypeMismatchFail(): void {
  let t: [int, string] = [1, 2]
  t = ["hello", "world"]
  t = [1, true]
}