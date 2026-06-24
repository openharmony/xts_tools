/**
 * @id TYP_03_20_017_RUNTIME_COALESCE_LAZY
 * @expect runtime
 * @section 3.20
 * @design ?? 左侧非 nullish 时右侧不求值（lazy）
 * @note 运行时用例：验证 nullish coalescing 懒求值
 */
let counter17: int = 0

function side17(): string {
  counter17++
  return "fallback"
}

function main(): void {
  let s: string | undefined = "value"
  let r: string = s ?? side17()
  if (r != "value") throw new Error("should use lhs")
  if (counter17 != 0) throw new Error("rhs should not evaluate")

  s = undefined
  let r2: string = s ?? side17()
  if (r2 != "fallback") throw new Error("should use rhs")
  if (counter17 != 1) throw new Error("rhs should evaluate once")

  console.log("coalesce lazy verified")
}