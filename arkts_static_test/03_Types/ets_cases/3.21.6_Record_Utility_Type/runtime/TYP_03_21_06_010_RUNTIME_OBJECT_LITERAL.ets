/**
 * @id TYP_03_21_06_010_RUNTIME_OBJECT_LITERAL
 * @expect runtime
 * @section 3.21.6
 * @design Record 对象字面量运行时值正确
 * @note 运行时用例
 */
type K10 = 'a' | 'b'

function main(): void {
  let r: Record<K10, string> = {'a': "alpha", 'b': "beta"}
  if (r['a'] != "alpha" || r['b'] != "beta") throw new Error("literal value failed")
  console.log("Record object literal runtime verified")
}