/**
 * @id TYP_03_06_02_014_RUNTIME_TYPE_PROMOTION_LONG
 * @expect runtime
 * @section 3.6.2
 * @design 二元运算优先推升 long（spec §3.6.2 类型推升规则）
 * @note 运行时用例：long + int 结果使用 64 位精度
 *       注：ArkTS 已弃用 `as` 用于数值转换，必须用 toLong() 方法
 */
function main(): void {
  let i: int = 100000
  let lo: long = 100000000000

  // long + int → long，结果应为 100000100000
  let r: long = lo + i
  if (r != 100000100000) {
    throw new Error("long + int promotion failed: " + r)
  }

  // 用 toLong() 显式转换（spec 推荐 Int.toLong）
  let largeInt: int = 2000000000
  let bigResult: long = largeInt.toLong() * 3
  if (bigResult != 6000000000) {
    throw new Error("long*int 64-bit precision failed: " + bigResult)
  }

  console.log("Type promotion long verified")
}