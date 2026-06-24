/**
 * @id TYP_03_01_013_PASS_ARRAY_RESIZABLE
 * @expect compile-pass
 * @section 3.1
 * @design 可变数组 T[] 和 Array<T> 声明、数组字面量、索引读写、length、空数组、push/pop、多维数组
 * @note pop() 返回 T|undefined, 需处理后使用
 */
function testResizableArray(): void {
  let a1: int[] = [1, 2, 3]
  let a2: Array<int> = [4, 5, 6]
  let a3: number[] = [1.0, 2.0, 3.0]
  let a4: string[] = ["a", "b", "c"]
  let a5: boolean[] = [true, false]

  let elem: int = a1[0]
  a1[0] = 10

  let len: int = a1.length

  let empty: int[] = []

  a1.push(4)
  let popped: int | undefined = a1.pop()

  let nested: int[][] = [[1, 2], [3, 4]]
}