/**
 * @id TYP_03_11_017_RUNTIME_UNDEFINED_RETURN
 * @expect runtime
 * @section 3.11
 * @design undefined 函数运行时返回 undefined
 * @note 运行时用例
 */
function returnsUndefined17(): undefined {
  return
}

function main(): void {
  let u: undefined = returnsUndefined17()
  if (u !== undefined) {
    throw new Error("undefined return should be undefined")
  }
  console.log("undefined return verified")
}