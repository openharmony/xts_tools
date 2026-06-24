/**
 * @id TYP_03_03_009_PASS_KEYOF_TYPE
 * @expect compile-pass
 * @section 3.3
 * @design 就地 keyof 类型 keyof C 生成 union of 字符串字面量
 * @note 正向用例：验证 keyof 类型作为就地类型
 */
class C9 {
  name: string = ""
  age: int = 0
  active: boolean = false
}

function testKeyofType(): void {
  let k: keyof C9 = "name"
  k = "age"
  k = "active"
}