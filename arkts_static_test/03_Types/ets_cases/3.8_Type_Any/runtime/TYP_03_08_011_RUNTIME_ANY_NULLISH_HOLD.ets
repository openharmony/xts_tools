/**
 * @id TYP_03_08_011_RUNTIME_ANY_NULLISH_HOLD
 * @expect runtime
 * @section 3.8
 * @design Any 是 nullish 类型，可持有 null/undefined（与 Object 不同）
 * @note 运行时用例：nullish 行为
 */
function main(): void {
  let a: Any = 1
  a = null
  if (a !== null) {
    throw new Error("Any should hold null")
  }

  a = undefined
  if (a !== undefined) {
    throw new Error("Any should hold undefined")
  }

  // Any 数组
  let arr: Array<Any> = [1, null, "x", undefined, true]
  if (arr.length != 5) {
    throw new Error("Any array length failed")
  }
  if (arr[1] !== null) {
    throw new Error("arr[1] should be null")
  }
  if (arr[3] !== undefined) {
    throw new Error("arr[3] should be undefined")
  }

  console.log("Any nullish hold verified")
}