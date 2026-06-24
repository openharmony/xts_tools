/**
 * @id TYP_03_10_010_RUNTIME_NEVER_EXHAUSTIVE_NORMAL
 * @expect runtime
 * @section 3.10
 * @design 穷举检查中正常路径不触发 never
 * @note 运行时用例：never 仅用于不可达代码
 */
function unreach10(): never {
  throw new Error("should not reach")
}

function classify(x: int): string {
  if (x == 1) return "one"
  if (x == 2) return "two"
  return unreach10()
}

function main(): void {
  let r1: string = classify(1)
  if (r1 != "one") {
    throw new Error("classify(1) should be 'one'")
  }
  let r2: string = classify(2)
  if (r2 != "two") {
    throw new Error("classify(2) should be 'two'")
  }
  // 不调用 classify(3) 避免触发 never

  console.log("Never exhaustive normal path verified")
}