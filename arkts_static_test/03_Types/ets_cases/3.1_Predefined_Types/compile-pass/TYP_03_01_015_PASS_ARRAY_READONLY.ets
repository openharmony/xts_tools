/**
 * @id TYP_03_01_015_PASS_ARRAY_READONLY
 * @expect compile-pass
 * @section 3.1
 * @design readonly T[] 数组声明、只读数组元素读取、作为函数参数传递
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function acceptReadonly(a: readonly string[]): void {}

function testReadonlyArray(): void {
  let arr: readonly int[] = [1, 2, 3]
  let elem: int = arr[0]
  let len: int = arr.length
}

function callAcceptReadonly(): void {
  acceptReadonly(["a", "b"])
}