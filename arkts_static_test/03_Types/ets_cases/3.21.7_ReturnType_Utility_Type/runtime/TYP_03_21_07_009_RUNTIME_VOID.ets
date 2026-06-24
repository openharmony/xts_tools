/**
 * @id TYP_03_21_07_009_RUNTIME_VOID
 * @expect runtime
 * @section 3.21.7
 * @design ReturnType<void> 提取后为 void/undefined
 * @note 运行时用例
 */
type RVoid9 = ReturnType<() => void>

function main(): void {
  let v: RVoid9 = undefined
  if (v !== undefined) throw new Error("void return type failed")
  console.log("ReturnType void runtime verified")
}