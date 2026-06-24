/**
 * @id TYP_03_11_019_RUNTIME_VOID_ARRAY
 * @expect runtime
 * @section 3.11
 * @design void[] 运行时仅包含 undefined
 * @note 运行时用例：Array<void>
 */
function main(): void {
  let a1: void[] = [undefined]
  let a2: Array<void> = [undefined, undefined]

  if (a1.length != 1 || a1[0] !== undefined) {
    throw new Error("void[] failed")
  }
  if (a2.length != 2 || a2[1] !== undefined) {
    throw new Error("Array<void> failed")
  }

  console.log("void array verified")
}