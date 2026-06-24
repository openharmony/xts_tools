/**
 * @id TYP_03_22_006_RUNTIME_CHAR_DEFAULT
 * @expect runtime
 * @section 3.22
 * @design char 默认值为 c'\u0000'
 * @note 运行时用例：补充 value type char 默认值验证
 */
function main(): void {
  let c: char
  if (c != c'\u0000') throw new Error("char default should be NUL")
  console.log("char default verified")
}
