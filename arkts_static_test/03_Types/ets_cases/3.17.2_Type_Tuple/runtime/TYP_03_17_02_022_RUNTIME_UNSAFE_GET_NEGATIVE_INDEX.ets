/**
 * @id TYP_03_17_02_022_RUNTIME_UNSAFE_GET_NEGATIVE_INDEX
 * @expect runtime
 * @runtime-throws=IndexOutOfBoundsError
 * @section 3.17.2
 * @design 验证 unsafeGet 负索引抛出运行时错误（spec/types.md:1259-1262）
 * @note 运行时用例：unsafeGet(-1) 应抛出运行时错误
 */
function main(): void {
  let a: [string, string] = ["aa", "bb"]
  let t: Tuple = a
  let elem: Any = t.unsafeGet(-1)
  console.log("should not reach here")
}