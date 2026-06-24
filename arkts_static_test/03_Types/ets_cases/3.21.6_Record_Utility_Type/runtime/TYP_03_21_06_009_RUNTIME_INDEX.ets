/**
 * @id TYP_03_21_06_009_RUNTIME_INDEX
 * @expect runtime
 * @section 3.21.6
 * @design Record 索引读写运行时行为
 * @note 运行时用例
 */
type K9 = 'key1' | 'key2' | 'key3'

function main(): void {
  let x: Record<K9, number> = {'key1': 1, 'key2': 2, 'key3': 4}
  if (x['key2'] != 2) throw new Error("initial value failed")
  x['key2'] = 8
  if (x['key2'] != 8) throw new Error("after write failed")
  console.log("Record index runtime verified")
}