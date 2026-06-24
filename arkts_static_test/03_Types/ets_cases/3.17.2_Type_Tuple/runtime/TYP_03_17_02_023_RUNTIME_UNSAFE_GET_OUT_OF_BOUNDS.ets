/**
 * @id TYP_03_17_02_023_RUNTIME_UNSAFE_GET_OUT_OF_BOUNDS
 * @expect runtime
 * @runtime-throws=IndexOutOfBoundsError
 * @section 3.17.2
 * @design 验证 unsafeGet 索引越界（>=length）抛出运行时错误（spec/types.md:1259-1262）
 * @note 运行时用例：unsafeGet(1) 对 [string] 类型元组应抛出运行时错误
 */
function main(): void {
  let b: [string] = ["aa"]
  let t: Tuple = b
  let elem: Any = t.unsafeGet(1)
  console.log("should not reach here")
}