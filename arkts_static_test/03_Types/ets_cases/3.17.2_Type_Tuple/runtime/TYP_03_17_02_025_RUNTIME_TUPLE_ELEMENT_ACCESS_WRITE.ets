/**
 * @id TYP_03_17_02_025_RUNTIME_TUPLE_ELEMENT_ACCESS_WRITE
 * @expect runtime
 * @section 3.17.2
 * @design 验证元组元素访问与修改运行时行为（spec/types.md:1177-1190）
 * @note 运行时用例：验证元组索引读写和元素类型
 */
function main(): void {
  let tuple: [number, string, boolean] = [1, "abc", true]

  if (tuple[0] !== 1) throw new Error("tuple[0] should be 1")
  if (tuple[1] !== "abc") throw new Error("tuple[1] should be 'abc'")
  if (tuple[2] !== true) throw new Error("tuple[2] should be true")

  tuple[0] = 42
  tuple[1] = "xyz"
  tuple[2] = false

  if (tuple[0] !== 42) throw new Error("tuple[0] should be 42 after write")
  if (tuple[1] !== "xyz") throw new Error("tuple[1] should be 'xyz' after write")
  if (tuple[2] !== false) throw new Error("tuple[2] should be false after write")

  console.log("verified")
}