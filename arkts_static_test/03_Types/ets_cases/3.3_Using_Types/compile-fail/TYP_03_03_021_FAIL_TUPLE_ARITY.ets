/**
 * @id TYP_03_03_021_FAIL_TUPLE_ARITY
 * @expect compile-fail
 * @section 3.3
 * @design 就地元组类型字面量元素数量不匹配
 * @note 反向用例：元组类型与字面量元素数量不一致
 */
function testTupleArityFail(): void {
  let t1: [int, string] = [1]
  let t2: [int, string, boolean] = [1, "a"]
  let t3: [int, string] = [1, "a", true]
}