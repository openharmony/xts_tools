/**
 * @id TYP_03_20_019_RUNTIME_ENSURE_SUCCESS
 * @expect runtime
 * @section 3.20
 * @design ensure-not-nullish 在非 nullish 时返回非 nullish 值
 * @note 运行时用例：expr!
 */
function main(): void {
  let s: string | undefined = "hello"
  let v: string = s!
  if (v != "hello") throw new Error("ensure string failed")

  let n: int | null = 42
  let i: int = n!
  if (i != 42) throw new Error("ensure int failed")

  console.log("ensure not nullish success verified")
}