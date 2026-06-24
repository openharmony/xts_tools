/**
 * @id TYP_03_17_02_004_PASS_UNSAFE_GET
 * @expect compile-pass
 * @section 3.17.2
 * @design 验证 unsafeGet 方法编译通过（spec/types.md:1250-1257）
 * @note 正向用例：Tuple 类型的 unsafeGet 方法可正常调用
 */
function logTuple(x: Object): void {
  if (x instanceof Tuple) {
    let elem: Any = x.unsafeGet(1)
    console.log(elem)
  }
}

function main(): void {
  let a: [string, string] = ["aa", "bb"]
  logTuple(a)
  console.log("verified")
}