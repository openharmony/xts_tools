/**
 * @id TYP_03_06_04_011_RUNTIME_NEW_BOOLEAN_DEFAULT
 * @expect runtime
 * @section 3.6.4
 * @design new boolean 返回 false（spec §3.6.4 例子）
 * @note 运行时用例：spec 原例验证
 */
function main(): void {
  let a_boolean = new boolean()
  if (a_boolean != false) {
    throw new Error("new boolean should be false")
  }
  console.log("new boolean default verified")
}