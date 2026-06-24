/**
 * @id TYP_03_17_02_021_RUNTIME_UNSAFE_GET
 * @expect runtime
 * @section 3.17.2
 * @design 验证 unsafeGet 方法正常访问（spec/types.md:1264-1276）
 * @note 运行时用例：unsafeGet 返回正确值，返回类型为 Any
 */
function main(): void {
  let a: [string, string] = ["aa", "bb"]
  let t: Tuple = a
  let elem: Any = t.unsafeGet(1)
  if (elem !== "bb") throw new Error("elem should be 'bb'")

  let elem0: Any = t.unsafeGet(0)
  if (elem0 !== "aa") throw new Error("elem0 should be 'aa'")

  console.log("verified")
}