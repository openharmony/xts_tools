/**
 * @id TYP_03_21_06_007_PASS_INDEX_ACCESS
 * @expect compile-pass
 * @section 3.21.6
 * @design Record 索引访问 r[index]
 * @note 正向用例：spec §3.21.6 索引行为
 */
type Keys7 = 'key1' | 'key2' | 'key3'

function testIndexAccess(): void {
  let x: Record<Keys7, number> = {'key1': 1, 'key2': 2, 'key3': 4}
  let v: number = x['key2']
  x['key2'] = 8
  let v2: number = x['key2']
}