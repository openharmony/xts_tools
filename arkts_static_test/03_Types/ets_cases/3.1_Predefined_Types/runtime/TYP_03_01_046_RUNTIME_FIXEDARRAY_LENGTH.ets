/**
 * @id TYP_03_01_046_RUNTIME_FIXEDARRAY_LENGTH
 * @expect runtime
 * @section 3.1
 * @design FixedArray 长度固定，不可增删
 * @note 运行时用例：验证 FixedArray 长度行为
 */
function main(): void {
  let fa: FixedArray<int> = [1, 2, 3]
  if (fa.length != 3) {
    throw new Error("FixedArray length should be 3")
  }

  // 索引读取
  if (fa[0] != 1) {
    throw new Error("fa[0] should be 1")
  }

  // 索引修改（FixedArray 元素可改但长度不变）
  fa[0] = 100
  if (fa[0] != 100) {
    throw new Error("FixedArray element assign failed")
  }

  // 长度不变
  if (fa.length != 3) {
    throw new Error("FixedArray length should remain 3")
  }

  console.log("FixedArray length verified")
}