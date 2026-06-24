/**
 * @id TYP_03_19_03_010_FAIL_KEYOF_MISSING_MEMBER
 * @expect compile-fail
 * @section 3.19.3
 * @design keyof 结果不包含不存在的成员名
 * @note 反向用例：不存在字段名不可赋值
 */
class C10 {
  a: int = 0
  b: int = 1
}
type KeysOfC10 = keyof C10

function testMissingMemberFail(): void {
  let k: KeysOfC10 = "c"
}