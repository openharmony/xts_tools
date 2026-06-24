/**
 * @id TYP_03_20_020_RUNTIME_ENSURE_THROWS
 * @expect runtime
 * @section 3.20
 * @runtime-throws=NullPointerError
 * @design ensure-not-nullish 在 nullish 值时抛 NullPointerError
 * @note 运行时用例：expr! 抛异常
 */
function main(): void {
  let s: string | undefined = undefined
  let v: string = s!
  console.log(v)
}