/**
 * @id TYP_03_17_02_003_PASS_INSTANCEOF_TUPLE
 * @expect compile-pass
 * @section 3.17.2
 * @design 验证 instanceof Tuple 表达式编译通过（spec/types.md:1247-1248）
 * @note 正向用例：Tuple 可用于 instanceof Expression
 */
function checkTuple(x: Object): void {
  if (x instanceof Tuple) {
    console.log("is Tuple")
  }
}

function main(): void {
  let pair: [number, string] = [1, "abc"]
  checkTuple(pair)
  console.log("verified")
}