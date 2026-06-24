/**
 * @id TYP_03_21_01_007_PASS_AWAITED_ARRAY
 * @expect compile-pass
 * @section 3.21.1
 * @design Awaited<Promise<Array<Promise<number>>>> → Array<Promise<number>>
 * @note 正向用例：数组内 Promise 不展开
 */
type G = Awaited<Promise<Array<Promise<number>>>>

function testAwaitedArray(): void {
  let p: Promise<number> = Promise.resolve(3.14)
  let g: G = [p]
}