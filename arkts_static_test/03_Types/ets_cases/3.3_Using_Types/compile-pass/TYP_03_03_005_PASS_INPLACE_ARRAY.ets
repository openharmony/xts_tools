/**
 * @id TYP_03_03_005_PASS_INPLACE_ARRAY
 * @expect compile-pass
 * @section 3.3
 * @design 就地数组类型声明 T[]、Array<T>、readonly T[]
 * @note 正向用例：验证就地数组类型声明
 */
function testInplaceArray(): void {
  let a1: number[] = [1.0, 2.0, 3.0]
  let a2: Array<int> = [1, 2, 3]
  let a3: readonly string[] = ["a", "b"]
  let a4: int[][] = [[1, 2], [3, 4]]
  let a5: Array<Array<int>> = [[1], [2]]
}