/**
 * @id TYP_03_08_004_PASS_ARRAY_OF_ANY
 * @expect compile-pass
 * @section 3.8
 * @design Array<Any> 可包含异构元素
 * @note 正向用例：异构数组
 */
function testArrayOfAny(): void {
  let arr: Array<Any> = [1, "a", true, 3.14, null, undefined, 100n]
  let arr2: Any[] = [new Object(), 1, "b"]
}