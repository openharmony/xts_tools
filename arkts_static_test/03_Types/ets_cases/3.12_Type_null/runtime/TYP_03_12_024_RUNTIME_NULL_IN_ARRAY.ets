/**
 * @id TYP_03_12_024_RUNTIME_NULL_IN_ARRAY
 * @expect runtime
 * @section 3.12
 * @design 运行时验证 null 在数组中的检测行为
 * @note 运行时用例：验证数组中的 null 元素计数
 */
function main(): void {
  let arr: (string | null)[] = [null, "a", null, "b"]
  let nullCount: int = 0
  let strCount: int = 0
  for (let i: int = 0; i < arr.length; i++) {
    if (arr[i] == null) {
      nullCount++
    } else {
      strCount++
    }
  }
  if (nullCount != 2) {
    throw new Error("null count should be 2, got " + nullCount.toString())
  }
  if (strCount != 2) {
    throw new Error("string count should be 2, got " + strCount.toString())
  }
  console.log("TYP_03_12_024 verified")
}