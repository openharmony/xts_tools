/**
 * @id TYP_03_07_002_PASS_ARRAY_TUPLE_REF
 * @expect compile-pass
 * @section 3.7
 * @design Array / FixedArray / Tuple 都是引用类型
 * @note 正向用例：数组与元组引用类型
 */
function testArrayTupleRef(): void {
  let arr: int[] = [1, 2, 3]
  let arr2: Array<string> = ["a", "b"]
  let fa: FixedArray<int> = [1, 2, 3]
  let t: [int, string] = [1, "x"]
}