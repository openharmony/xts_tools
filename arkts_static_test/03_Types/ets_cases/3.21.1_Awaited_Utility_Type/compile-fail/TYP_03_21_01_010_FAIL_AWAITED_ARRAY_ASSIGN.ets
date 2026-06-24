/**
 * @id TYP_03_21_01_010_FAIL_AWAITED_ARRAY_ASSIGN
 * @expect compile-fail
 * @section 3.21.1
 * @design Awaited<Promise<Array<Promise<number>>>> 保留数组内部 Promise，不等于 number[]
 * @note 反向用例：验证 Awaited 遇到 array 停止递归
 */
type AwaitedArrayFail = Awaited<Promise<Array<Promise<number>>>>
function testAwaitedArrayAssignFail(): void {
  let v: AwaitedArrayFail = [1, 2, 3]
}
