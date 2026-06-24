/**
 * @id TYP_03_11_016_RUNTIME_VOID_RETURN_UNDEFINED
 * @expect runtime
 * @section 3.11
 * @design void 函数运行时返回 undefined
 * @note 运行时用例：void 返回 undefined
 */
function returnsVoid16(): void {
  return
}

function main(): void {
  let v: void = returnsVoid16()
  if (v !== undefined) {
    throw new Error("void return should be undefined")
  }
  console.log("void return undefined verified")
}