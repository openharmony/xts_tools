/**
 * @id TYP_03_01_014_PASS_ARRAY_FIXED
 * @expect compile-pass
 * @section 3.1
 * @design 固定长度数组 FixedArray<T> 字面量、new FixedArray<T>(size) 构造函数、索引读写、length
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testFixedArrayPass(): void {
  let fa: FixedArray<int> = [1, 2, 3]
  let fb: FixedArray<string> = new FixedArray<string>(3)
  let fc: FixedArray<boolean> = [true, false, true]

  let elem: int = fa[0]
  fa[0] = 10

  let len: int = fa.length
}