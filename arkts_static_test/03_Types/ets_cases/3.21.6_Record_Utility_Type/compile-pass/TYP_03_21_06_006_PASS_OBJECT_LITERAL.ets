/**
 * @id TYP_03_21_06_006_PASS_OBJECT_LITERAL
 * @expect compile-pass
 * @section 3.21.6
 * @design Record 对象字面量初始化（spec 原例风格）
 * @note 正向用例：string literal union key
 */
type Keys = 'key1' | 'key2' | 'key3'

function testObjectLiteral(): void {
  let x: Record<Keys, number> = {
    'key1': 1,
    'key2': 2,
    'key3': 4
  }
  let v: number = x['key2']
}